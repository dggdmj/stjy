<?php
namespace Admin\Action;
use Think\Action;
class CountScyjAction extends CommonAction {
    /**
     * 获得统计数据
     *
     * @param  string $qishu       期数：201707
     * @param  string $sid         学校id：school  中的id
     * @return array
     */
    public function getScyjData($qishu='201812',$sid='25'){

        //判断语句
        $qishu_id = M('qishu_history')->where(array('qishu'=>$qishu,'sid'=>$sid,'tid'=>8))->getField('id');//判断是否有生成历史
        if(!$qishu_id){
            $qishu_id = $this->insertQishuHistory(8,$qishu,$sid);
        }else{
            $data = M('scyjb')->where("suoshudd='$qishu_id' and hejiyye != ''")->order('id')->select();
            foreach($data as &$val){
                $val['json'] = json_decode($val['json'],'true');
                foreach($val['json'] as $k=>$v){
                    $val[$k] = $v;
                }
                unset($val['json']);
            }
            $data = $this->heji($data);
            return $data;
        }
        $chanpinlx = M('sjcplx')->field('xiangmu')->where("shifouqy='启用' and shifoutxyj='1' ")->select();
        $sjcplx = array();
        foreach($chanpinlx as $vv){
            $vv['xiangmu'] = str_replace('(','（',$vv['xiangmu']);
            $vv['xiangmu'] = str_replace(')','）',$vv['xiangmu']);
            $sjcplx[] = $vv['xiangmu'];
        }
        $nianfen = substr($qishu,0,4);
        $tid = 4;//收据记录表的id
        $suoshuid = $this->getQishuId($qishu,$sid,$tid);//获取订单id
        $szls_id = $this->getQishuId($qishu,$sid,26);//获取订单id
        $xyxxb_id = $this->getQishuId($qishu,$sid,1);//获取订单id
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');

        $renming = array();
        
        //查询出所有数据
        $list = M('sjjlb_'.$nianfen.' as ss')
                    ->join('LEFT JOIN stjy_szlsb as sz on sz.shoujuhao=ss.shoujuhao')
                    // ->join('LEFT JOIN stjy_xyxxb_'.$nianfen.' as xx on xx.xuehao=ss.xuehao')
                    // ->join('LEFT JOIN stjy_xxked as sx on sx.xingming=ss.xingming')
                    ->field('ss.shoujulx,ss.yejigsr,ss.chanpinlx,ss.jingrentou,sz.shouru,sz.zhanghu,ss.jiaofeirq,ss.shoujuhao,ss.xuehao')
                    ->where(" ss.suoshudd = '$suoshuid' and ss.yejigsr != '' and sz.suoshudd = '$szls_id'")
                    // ->group('ss.shoujuhao')
                    ->select();
        $xyxxb = M('xyxxb_'.$nianfen)->where(array('suoshudd'=>$xyxxb_id))->getField('xuehao,shoucijfrq');
        // dump($xyxxb);exit;
        //查询是否是结算
        $shoufeilx = M('shoufeilx')->field('leixing')->where(array('is_jiesuan'=>1))->select();
        foreach($shoufeilx as $val){
            $shoufei_arr[] = $val['leixing'];
        }
        $shoujuhao = array();

        //过滤归属人并判断是否是结算1结算  2不结算
        foreach($list as $k=>$v){
            if(in_array($v['shoujuhao'],$shoujuhao)){
                $list[$k]['jingrentou'] = 0;
            }else{
                $shoujuhao[] = $v['shoujuhao'];
            }
            $list[$k]['shoucijfrq'] = $xyxxb[$v['xuehao']];
            $list[$k]['chanpinlx'] = str_replace('(','（',$list[$k]['chanpinlx']);
            $list[$k]['chanpinlx'] = str_replace(')','）',$list[$k]['chanpinlx']);
            $list[$k]['yejigsr'] = $this->getJingrentou($v['yejigsr']);
            if (!in_array($list[$k]['yejigsr'],$renming) && $list[$k]['yejigsr'] != ''){
                $renming[] = $list[$k]['yejigsr'];
            }
            if (in_array($v['shoujulx'],$shoufei_arr)){
                $list[$k]['shoufeilx'] = 1;
            }else{
                $list[$k]['shoufeilx'] = 0;
            }
        }
        if ($renming){
            $rycb = M('rycb')->field('xingming,zhiwu as zhiwei,ruzhirq')->where(array('xiaoqu'=>$school_name,'xingming'=>array('in',$renming)))->select();
        } 
        $xxkedb_oid = M('qishu_history')->where(array('qishu'=>$qishu,'sid'=>$sid,'tid'=>14))->getField('id');
        //从组数组并且计算净人头
        $newList = array();
        //获取一年的秒数
        $yinian = 365 * 24 * 60 * 60;
        foreach($renming as $key=>$vo){
            foreach($rycb as $vv){
                if ($vo == $vv['xingming']){
                    // $newList[$key]['xingming'] = $vv['xingming'];
                    $newList[$key]['zhiwei'] = $vv['zhiwei'];
                    $newList[$key]['ruzhirq'] = $vv['ruzhirq'];
                }
            }
            $newList[$key]['xingming'] = $vo;
            $newList[$key]['edu'] = M('xxkedb')->where("suoshudd='$xxkedb_oid' and xingming='".$vo."'")->getField('edu');
            foreach($list as $k=>$v){
                if (in_array($v['chanpinlx'],$sjcplx)){
                    if(strtotime($v['jiaofeirq']) - strtotime($v['shoucijfrq']) > $yinian){
                        $v['chanpinlx'] = '老生续费';
                    }
                }
                if ($vo == $v['yejigsr'] && $v['shoufeilx'] == 1){
                    $newList[$key]['jingrentou'] += $v['jingrentou'];
                    $heji['jingrentou'] += $v['jingrentou'];
                    //合计营业额
                    //会员老带新营业额
                    $newList[$key]['huiyunaldxtz'] = 0;

                    if ($v['zhanghu'] != '结转学费' && $v['zhanghu'] != '老带新返现'){
                        if(in_array($v['chanpinlx'],$sjcplx) || $v['chanpinlx'] == '老生续费'){
                            $newList[$key]['hejiyye'] += $v['shouru'];
                            $newList[$key]['json'][ $this->encode($v['chanpinlx']) ] += $v['shouru'];
                        }
                    }
                }
            }
            //写进数据库
            $temp = $newList[$key];
            $temp['json'] = json_encode($temp['json']);
            $temp['suoshudd'] = $qishu_id;
            $temp['xuhao'] = $key+1;
            M('scyjb')->add($temp);
            $newList[$key]['json'] = json_encode($newList[$key]['json']);
            $newList[$key]['xuhao'] = $key+1;

        }
        $data = $this->heji($newList);
        return $data;
    }

    

    //从收据记录表中的备注中获得净人头
    public function getJingrentou($str){
        $arr = array();
        $arr = explode("(",$str);
        return $arr['0'];
    }

    //合计
    public function heji($list=array()){
        if (!$list){
            return $list;
        }
        $heji = array();
        foreach($list as $val){
            foreach($val as $key=>$v){
                if ($key == 'xingming'){
                    $heji[$key] = '合计';
                }else{
                    $heji[$key] += $v;
                }
            }
        }
        $heji['xuhao'] = '';
        $heji['nianfen'] = '';
        $heji['yuefen'] = '';
        $heji['fenxiao'] = '';
        $heji['zhiwei'] = '';
        $heji['ruzhirq'] = '';
        array_push($list,$heji);
        return $list;
    }

}
