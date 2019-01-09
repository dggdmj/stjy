<?php
namespace Admin\Action;
use Think\Action;
class CountLsqryyemsAction extends CommonAction {
    /**
     * 获得统计数据
     *
     * @param  string $qishu       期数：201707
     * @param  string $sid         学校id：school  中的id
     * @return array
     */
    public function getYjData($qishu='201810',$sid='15'){
        // 判断语句
        $qishu_id = M('qishu_history')->where(array('qishu'=>$qishu,'sid'=>$sid,'tid'=>47))->getField('id');//判断是否有生成历史
        if ($qishu_id){
            $newList = M('lsqryye')->where(array('suoshudd'=>$qishu_id))->order('id')->select();
            $newList = $this->heji($newList);
            return $newList;
        }
        $qishu_id = $this->insertQishuHistory(29,$qishu,$sid);
        $scyjb_id = $this->getQishuId($qishu,$sid,8);
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        //老师营业额  先查所有的老师  人事表
        // $list = M('rycb as rs')
        //             ->join('LEFT JOIN stjy_scyjb as ss on rs.xingming=ss.xingming')
        //             ->field('rs.xingming,ss.edu,ss.hejiyye')
        //             ->group('rs.xingming')
        //             ->where("rs.xiaoqu='$school_name' and bumen='教学部'")
        //             ->select();
        $list = M('scyjb')->field('hejiyye,xingming')->where(array('suoshudd'=>$scyjb_id))->select();
        $xxked_id = $this->getQishuId($qishu,$sid,14);
        $xxked = M('xxkedb')->where(array('suoshudd'=>$xxked_id))->getField('xingming,edu');
        //获取收据记录表的订单id
        $suoshudd = $this->getQishuId($qishu,$sid,4);

        //获取本月最后一天
        $qishu_time = substr($qishu,0,4).'-'.substr($qishu,4,2);
        $lastday = date('Y-m-d', strtotime("$qishu_time +1 month -1 day"));   
        //获取校名
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        
        $ls_day_last = date('Y-m-d', strtotime("$lastday -60 day"));
        $bjxyxxb_id = $this->getQishuId($qishu,$sid,3);
        $xyxxb_id = $this->getQishuId($qishu,$sid,1);
        $kbmxb_id = $this->getQishuId($qishu,$sid,6);
        $szls_id = $this->getQishuId($qishu,$sid,26);
        $nian = substr($qishu,0,4);
        //秒杀
         $miaosha = M('fxms')->field('shangkekc,danjia')->where("sid='$sid'")->find();
         $miaosha_xz = $this->xzms($qishu,$sid,$miaosha);
        //查营业额
        $zonge = M('sjjlb_'.$nian.' as ss')
                    ->join('LEFT JOIN stjy_xyxxb_'.$nian.' as sx on ss.xuehao=sx.xuehao')
                    ->join('LEFT JOIN stjy_bjxyxxb_'.$nian.' as sb on sb.xuehao=sx.xuehao')
                    ->join('LEFT JOIN stjy_kbmxb_'.$nian.' as sk on sk.banjimc=sb.banji')
                    // ->join('LEFT JOIN stjy_sjcplx as cp on cp.xiangmu=ss.chanpinlx')
                    ->join('LEFT JOIN stjy_szlsb as sz on sz.shoujuhao=ss.shoujuhao')
                    // ->join('LEFT JOIN stjy_sjmxb as mx on ss.shoujuhao=mx.shoujuhao')
                    ->field('ss.xuehao,sz.shouru,sk.jingjiangls,sb.banji,ss.chanpinlx,ss.shoujuhao,ss.jiaofeirq,sx.shoucixfrq,sz.zhanghu')
                    ->where("ss.suoshudd='$suoshudd' and  sx.shoucixfrq != '' and ss.jiaofeirq > sx.shoucixfrq and sk.jingjiangls != '' and sz.shouru != '' and sz.zhanghu != '结转学费' and sz.zhanghu != '老带新返现' and sb.suoshudd = '$bjxyxxb_id' and sx.suoshudd='$xyxxb_id' and sb.suoshudd='$bjxyxxb_id' and sk.suoshudd='$kbmxb_id' and sz.suoshudd='$szls_id'")
                    // and sb.suoshudd = '$bjxyxxb_id' and sx.suoshudd='$xyxxb_id' and sb.suoshudd='$bjxyxxb_id' and sk.suoshudd='$kbmxb_id' and sz.suoshudd='$szls_id'
                    // ->where(" sx.shoucixfrq < '$ls_day_last' and  ss.chanpinlx != '教材费' and ss.suoshudd='$suoshudd' and  sx.shoucixfrq != ''")
                    ->group('ss.shoujuhao')
                    ->select();
        $chanpinlx = M('sjcplx')->field('xiangmu')->where("shifouyyejs=1")->select();
        $cplx = array();
        foreach($chanpinlx as $val){
            $cplx[] = $val['xiangmu'];
        }
        $jingjiangls = array(); 
        foreach($zonge as $key=>$val){
            if(!in_array($val['jingjiangls'], $jingjiangls)){
                $jingjiangls[] = $val['jingjiangls'];
            }
        }
        // dump($zonge);
        foreach($jingjiangls as $key=>$val){
            $data[$key]['xingming'] = $val;
            foreach($list as $vv){
                if($vv['xingming'] == $val){
                    $data[$key]['hejiyye'] = $vv['hejiyye'];
                    $data[$key]['edu'] = $xxked[$val];
                }
            }
        }
        //data
        foreach($data as $key=>$val){
            $data[$key]['yuefen'] = (int)substr($qishu,4,2).'月';
            $data[$key]['school_name'] = $school_name;
            $data[$key]['jxbxxk'] = (int)($data[$key]['edu'] - $data[$key]['hejiyye']);
            $data[$key]['fenxiao'] = $school_name;
        }
        //班级编码
        $banjibm = M('banjibianhao')->field('jingdujb,bumen')->select();
        foreach($banjibm as $v){
            $bumen[ $v['jingdujb'] ] =  $v['bumen'];
        }
        //获取一年的秒数
        $yinian = 365 * 24 * 60 * 60;
        //统计营业额
        foreach($data as $key=>$val){
            $data[$key]['yingyee1'] = 0;
            $data[$key]['yingyee2'] = 0;
            foreach($zonge as $v){
                if ($v['chanpinlx'] != '国际领袖课程' && $v['chanpinlx'] != '国内领袖课程' && $v['chanpinlx'] != '教材费'){
                    if(strtotime($v['jiaofeirq']) - strtotime($v['shoucijfrq']) > $yinian){
                        $v['chanpinlx'] = '老生续费';
                    }
                }
                if(in_array($v['chanpinlx'],$cplx) && in_array($v['xuehao'],$miaosha_xz)){
                    $bianma = substr($v['banji'],0,3);
                    $v['bumen'] = $bumen[ $bianma ];
                    if($v['jingjiangls'] == $data[$key]['xingming']){
                        if($v['bumen'] == '小学部'){
                            $data[$key]['yingyee1'] += $v['shouru'];
                        }
                        if($v['bumen'] == '初中部'){
                            $data[$key]['yingyee2'] += $v['shouru'];
                        }
                    }
                }
            }
        }
        $newList = array();
        //组成最后的数组
        foreach($data as $ko=>$vo){
            $ko = $ko*2;
            //小学部
            $data2['xuhao']=$ko+1;
            $data2['yuefen'] = $vo['yuefen'];
            $data2['fenxiao'] = $vo['school_name'];
            $data2['laoshi'] = $vo['xingming'];
            $data2['xuexikzed'] = $vo['edu'] ? $vo['edu'] : 0;
            $data2['shichangbyj'] = $vo['hejiyye'];
            $data2['jiaoxuebxxk'] = $vo['jxbxxk'] > 0 ? $vo['jxbxxk'] : 0;
            $data2['banxing'] = '小学部';
            $data2['yingyee'] = $vo['yingyee1'];
            $data2['yanzheng'] = '-';
            $data2['chuxiancs'] = 1;
            $data2['suoshudd'] = $qishu_id;
            $newList[] = $data2;
            M('lsqryye')->add($data2);
            //初中部
            $data2['xuhao']=$ko+2;
            $data2['yuefen'] = $vo['yuefen'];
            $data2['fenxiao'] = $vo['school_name'];
            $data2['laoshi'] = $vo['xingming'];
            $data2['xuexikzed'] = 0;
            $data2['shichangbyj'] = 0;
            $data2['jiaoxuebxxk'] = 0;
            $data2['banxing'] = '初中部';
            $data2['yingyee'] = $vo['yingyee2'];
            $data2['yanzheng'] = '-';
            $data2['chuxiancs'] = 2;
            $data2['suoshudd'] = $qishu_id;
            M('lsqryye')->add($data2);
            $newList[] = $data2;
        }
        $newList = $this->heji($newList);
        return $newList;
    }

    //合计
    public function heji($list=array()){
        if (!$list){
            return $list;
        }
        $heji = array();
        foreach($list as $val){
            foreach($val as $key=>$v){
                if ($key == 'shichangbyj' || $key == 'jiaoxuebxxk' || $key == 'yingyee'){
                    $heji[$key] += $v;
                }
            }
        }
        $heji['xuhao'] = '';
        $heji['laoshi'] = '小计';
        array_push($list,$heji);
        return $list;
    }

    //获取本月新增的秒杀和上月透视秒杀
    public function xzms($qishu='201808',$sid='1',$miaosha_sz=array()){
        $xzmxb_id = $this->getQishuId($qishu,$sid,10);
        $nian = substr($qishu,0,4);
        $miaosha = array();
        //获取上个月的透视秒杀
        $last_qishu = date('Ym',strtotime(substr($qishu,0,4).'-'.substr($qishu,4,2).' -1 day'));
        $xyfyyjb_id = $this->getQishuId($last_qishu,$sid,7);//学员费用预警表
        $xyfyyjb = array();
        if ($xyfyyjb_id){
            $lists = M('xyfyyjb_'.$nian)->field('xuehao,xingming,kechengmc,shengyugmsl,shengyuzssl,feiyong')->where("suoshudd='$xyfyyjb_id'")->select();
            foreach($lists as $key=>$val){
                $xyfyyjb[ $val['xuehao'] ]['zongshuliang'] += $val['shengyugmsl']+$val['shengyuzssl'];
                $xyfyyjb[ $val['xuehao'] ]['zongfeiyong'] += $val['feiyong'];
            }
        }
        //获取本月新增的秒杀
        $xyfy_id = $this->getQishuId($qishu,$sid,7);//学员费用预警表
        $list = M('xzmxb as xz')
                ->field('xz.xuehao,yj.shengyugmsl,yj.shengyuzssl,yj.feiyong')
                ->join('LEFT JOIN stjy_xyfyyjb_'.$nian.' as yj on yj.xuehao=xz.xuehao')
                ->where("xz.suoshudd = '$xzmxb_id' and yj.suoshudd='$xyfy_id'")
                ->select();

        foreach($list as $val){
            $xyfyyjb[ $val['xuehao'] ]['zongshuliang'] += $val['shengyugmsl'] + $val['shengyuzssl'];
            $xyfyyjb[ $val['xuehao'] ]['zongfeiyong'] += $val['feiyong'];
        }
        foreach($xyfyyjb as $key=>$val){
            $val['danjia'] = round($val['zongfeiyong'] / $val['zongshuliang'],2);
            if ($val['zongshuliang'] <= $miaosha_sz['shangkekc'] && $val['danjia'] <= $miaosha_sz['danjia'] && $val['danjia'] > 0){
                 $miaosha[] = $key;
            }
        }
        return $miaosha;
    }

}
