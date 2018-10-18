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
    public function getYjData($qishu,$sid){
        //老师营业额  先查所有的老师  人事表
        $list = M('renshi as rs')
                    ->join('stjy_scyjb as ss on rs.xingming=ss.xingming')
                    ->join('stjy_qishu_history as qh on qh.id=ss.suoshudd')
                    ->field('rs.id,rs.xingming,ss.edu,qh.qishu,qh.sid,ss.hejiyye,qh.id')
                    ->where(" qh.qishu= $qishu and qh.sid=$sid ")
                    ->select();

        //获取本月最后一天
        $qishu_time = substr($qishu,0,4).'-'.substr($qishu,4,2);
        // 最后一天
        $lastday = date('Y-m-d', strtotime("$qishu +1 month -1 day"));   
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

        $zonge = M($xyxxb.' as sx')
                    ->join('stjy_'.$bjxyxxb.' as sb on sb.xuehao=sx.xuehao')
                    ->join('stjy_'.$kbmxb.' as sk on sk.banjimc=sb.banji')
                    ->join('stjy_'.$sjjlb.' as ss on ss.xuehao=sx.xuehao')
                    ->join('stjy_banjibianhao as bb on bb.bianma=sb.banji')
                    ->field('ss.jiaofeije,sk.jingjiangls')
                    ->where(" sx.shoucixfrq < '$ls_day_last' and  ss.chanpinlx != '教材费' ")
                    ->limit(10)
                    ->select();

        dump($zonge);exit;
        $where['qishu'] = $qishu;// 获取期数
        $where['sid'] = $sid;// 获取学校id
        // 获取收费记录表当前期数的数据
        $where['tid'] = 4;// 从收据记录表信息表获取信息,它的tid是4
        $id = M('qishu_history')->where($where)->getField('id');// 获取对应qishu_history的id,也就是bjxyxxb里面的suoshudd的订单号

        // ------------以下所有数据都根据suoshudd的id号查询出------------
        // $heji是每个年级对应的合计数
        // $data是每个公立学校对应的每个年级的合计数
        // $res是返回的数据,$res = ['data'=>$data,'heji'=>$heji];


        // return $res;
    }

}
