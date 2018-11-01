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
    public function getLsbzsrData($qishu='',$sid=''){
        $lsbzsr_id = $this->getQishuId($qishu,$sid,33);
        if ($lsbzsr){
            $list = M('lsbzsr')->where(array('suoshudd'=>$lsbzsr))->select();
            return $list;
        }
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        //获取老师收入的订单id
        $lsqrsr_id = $this->getQishuId($qishu,$sid,30);
        $list = M('lsqrsr')->field('id,suoshudd,daorusj,qianming,xuhao',true)->where(array('suoshudd'=>$lsqrsr_id))->order('id')->select();
        $qishu_id = $this->insertQishuHistory(33,$qishu,$sid);
        $danjia = M('gequybzdj')->where(array('xuexiaomc'=>$school_name))->getField('danjia');
        $danjia = $danjia ? $danjia : 0;
        foreach($list as $key=>&$val){
            $val['suoshudd'] = $qishu_id;
            $val['xuhao'] = $key+1;
            $val['biaozhunsr'] = $danjia*$val['shoukexs'];
            $val['qianming'] = '';
            M('lsbzsr')->add($val);
        }
        return $list;
    }


}
