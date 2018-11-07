<?php
namespace Admin\Action;
use Think\Action;
class CountXflAction extends CommonAction {
    /**
     * 获得统计数据
     *
     * @param  string $qishu       期数：201707
     * @param  string $sid         学校id：school  中的id
     * @return array
     */
    public function getXflData($qishu='201808',$sid='1'){
        $xufei = $this->xufei($qishu,$sid);
        dump($xufei);
    }

    //续费
    public function xufei($qishu,$sid){
        $nian = substr($qishu,0,4);
        //获取上个月的期数
        $sjmxb_id = $this->getQishuId($qishu,$sid,24);
        $last_day = substr($qishu,0,4).'-'.substr($qishu,4,2);
        $list = M('sjmxb')->field('xuehao,goumaikc')->where("suoshudd='$sjmxb_id' and shoukuanzh != '老带新返现' and shoukuanzh != '老带新返现' and goumaikc != ''")->select();
        $sjmxb = array();
        // dump($list);
        foreach($list as $val){
            $val['goumaikc'] = mb_substr($val['goumaikc'],0,-1,'utf-8');
            if ($val['goumaikc'] > 12){
                $sjmxb[] = $val['xuehao'];
            }
        }
        return $sjmxb;
    }

    //获取学员信息




}
