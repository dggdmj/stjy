<?php
namespace Admin\Action;
use Think\Action;
class CountLsqryyeAction extends CommonAction {
    /**
     * 获得统计数据
     *
     * @param  string $qishu       期数：201707
     * @param  string $sid         学校id：school  中的id
     * @return array
     */
    public function getYjData($qishu='',$sid=''){
        //判断语句
        $qishu_id = M('qishu_history')->where(array('qishu'=>$qishu,'sid'=>$sid,'tid'=>29))->getField('id');//判断是否有生成历史
        if ($qishu_id){
            $newList = M('lsqryye')->where(array('suoshudd'=>$qishu_id))->order('id')->select();
            $newList = $this->heji($newList);
            return $newList;
        }
        $qishu_id = $this->insertQishuHistory(29,$qishu,$sid);
        //老师营业额  先查所有的老师  人事表
        $list = M('renshi as rs')
                    ->join('stjy_scyjb as ss on rs.xingming=ss.xingming')
                    ->join('stjy_qishu_history as qh on qh.id=ss.suoshudd')
                    ->field('rs.id,rs.xingming,ss.edu,qh.qishu,qh.sid,ss.hejiyye,qh.id')
                    ->where(" qh.qishu= $qishu and qh.sid=$sid ")
                    ->select();
        //获取收据记录表的订单id
        $suoshudd = $this->getQishuId($qishu,$sid,4);

        //获取本月最后一天
        $qishu_time = substr($qishu,0,4).'-'.substr($qishu,4,2);
        $lastday = date('Y-m-d', strtotime("$qishu_time +1 month -1 day"));   
        //获取校名
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        $oid = $list['0']['id'] ? $list['0']['id'] : 0;//获取订单id


        foreach($list as &$val){
            $val['yuefen'] = (int)substr($qishu,4,2).'月';
            $val['school_name'] = $school_name;
            $val['jxbxxk'] = (int)($val['edu'] - $val['hejiyye']);
        }
        $ls_day_last = date('Y-m-d', strtotime("$lastday -60 day"));
        //判断是否是分表
        $xyxxb = $this->checkFenbiao($oid,'xyxxb');
        $bjxyxxb = $this->checkFenbiao($oid,'bjxyxxb');
        $kbmxb = $this->checkFenbiao($oid,'kbmxb');
        $sjjlb = $this->checkFenbiao($oid,'sjjlb');

        //查营业额
        $zonge = M($sjjlb.' as ss')
                    ->join('stjy_'.$xyxxb.' as sx on ss.xuehao=sx.xuehao')
                    ->join('stjy_'.$bjxyxxb.' as sb on sb.xuehao=sx.xuehao')
                    ->join('stjy_'.$kbmxb.' as sk on sk.banjimc=sb.banji')
                    ->field('ss.jiaofeije,sk.jingjiangls,sb.banji,sb.banji')
                    ->where(" sx.shoucixfrq < '$ls_day_last' and  ss.chanpinlx != '教材费' and ss.suoshudd='$suoshudd'")
                    ->select();

        //班级编码
        $banjibm = M('banjibianhao')->field('jingdujb,bumen')->select();
        foreach($banjibm as $v){
            $bumen[ $v['jingdujb'] ] =  $v['bumen'];
        }
        //统计营业额
        foreach($list as &$val){
            $val['yingyee1'] = 0;
            $val['yingyee2'] = 0;
            foreach($zonge as $v){
                $bianma = substr($v['banji'],0,3);
                $v['bumen'] = $bumen[ $bianma ];
                if($v['jingjiangls'] == $val['xingming']){
                    if($v['bumen'] == '小学部'){
                        $val['yingyee1'] += $v['jiaofeije'];
                    }
                    if($v['bumen'] == '初中部'){
                        $val['yingyee2'] += $v['jiaofeije'];
                    }
                }
            }
        }
        $newList = array();
        //组成最后的数组
        foreach($list as $ko=>$vo){
            $ko = $ko*2;
            //小学部
            $data['xuhao']=$ko+1;
            $data['yuefen'] = $vo['yuefen'];
            $data['fenxiao'] = $vo['school_name'];
            $data['laoshi'] = $vo['xingming'];
            $data['xuexikzed'] = $vo['edu'];
            $data['shichangbyj'] = $vo['hejiyye'];
            $data['jiaoxuebxxk'] = $vo['jxbxxk'] > 0 ? $vo['jxbxxk'] : 0;
            $data['banxing'] = '小学部';
            $data['yingyee'] = $vo['yingyee1'];
            $data['yanzheng'] = '-';
            $data['chuxiancs'] = 1;
            $data['suoshudd'] = $qishu_id;
            $newList[] = $data;
            M('lsqryye')->add($data);
            //初中部
            $data['xuhao']=$ko+2;
            $data['yuefen'] = $vo['yuefen'];
            $data['fenxiao'] = $vo['school_name'];
            $data['laoshi'] = $vo['xingming'];
            $data['xuexikzed'] = 0;
            $data['shichangbyj'] = 0;
            $data['jiaoxuebxxk'] = 0;
            $data['banxing'] = '初中部';
            $data['yingyee'] = $vo['yingyee2'];
            $data['yanzheng'] = '-';
            $data['chuxiancs'] = 2;
            $data['suoshudd'] = $qishu_id;
            M('lsqryye')->add($data);
            $newList[] = $data;
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
        array_push($list,$heji);
        return $list;
    }

}
