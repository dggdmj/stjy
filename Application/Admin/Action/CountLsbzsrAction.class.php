<?php
namespace Admin\Action;
use Think\Action;
class CountLsbzsrAction extends CommonAction {
    /**
     * 获得统计数据
     *
     * @param  string $qishu       期数：201707
     * @param  string $sid         学校id：school  中的id
     * @return array
     */
    public function getLsbzsrData($qishu='201808',$sid='1'){
        $lsbzsr_id = $this->getQishuId($qishu,$sid,33);
        if ($lsbzsr_id){
            $list = M('lsbzsr')->where(array('suoshudd'=>$lsbzsr_id))->order('id')->select();
            foreach($list as $val){
                $heji['shoukexs'] += $val['shoukexs'];
                $heji['zongrencxs'] += $val['zongrencxs'];
                $heji['biaozhunsr'] += $val['biaozhunsr'];
            }
            $heji['laoshi'] = '小计';
            array_push($list,$heji);
            return $list;
        }
        $nian = substr($qishu,0,4);
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        //获取老师收入的订单id
        $lsqrsr_id = $this->getQishuId($qishu,$sid,30);
        $list = M('lsqrsr')->field('id,suoshudd,daorusj,qianming,xuhao,zongrencxs',true)->where(array('suoshudd'=>$lsqrsr_id))->order('id')->select();
        $qishu_id = $this->insertQishuHistory(33,$qishu,$sid);
        $danjia = M('gequybzdj')->where(array('xuexiaomc'=>$school_name))->getField('danjia');
        $danjia = $danjia ? $danjia : 0;

        //出勤明细表
        $cqmxb_id = $this->getQishuId($qishu,$sid,25);
        $cqmxb = M('cqmxb as cq')
                    ->join('LEFT JOIN stjy_kbmxb_'.$nian.' as kb on kb.banjimc=cq.banji')
                    ->field('kb.jingjiangls,kb.fanduls,kb.waijiaols,kb.jingjiangxs,kb.fanduxs,kb.waijiaoxs')
                    ->where("cq.suoshudd = '$cqmxb_id' and cq.chuqin='√'")
                    ->select();
        foreach($list as $key=>&$val){
            $val['suoshudd'] = $qishu_id;
            $val['xuhao'] = $key+1;
            $val['qianming'] = '';
            $tmp = 0;
            foreach($cqmxb as $vv){
                if($val['laoshi'] == $vv['jingjiangls']){
                    $tmp += $vv['jingjiangxs'];
                }
                if($val['laoshi'] == $vv['fanduls']){
                    $tmp += $vv['fanduxs'];
                }
                if($val['laoshi'] == $vv['waijiaols']){
                    $tmp += $vv['waijiaoxs'];
                }
            }
            $val['zongrencxs'] = $tmp;
            $val['biaozhunsr'] = $danjia*$val['zongrencxs'];
            M('lsbzsr')->add($val);
        }
        return $list;
    }


}
