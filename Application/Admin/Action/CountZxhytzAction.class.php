<?php
namespace Admin\Action;
use Think\Action;
class CountZxhytzAction extends CommonAction {
    /**
     * 根据收据号获得统计数据
     *
     * @param  string $qishu       期数：201707
     * @param  string $sid         学校id：school  中的id
     * @return array
     */
    public function getZxhytzData($qishu='201810',$sid='1',$shoujuhao='00340538'){
        $nian = substr($qishu,0,4);//获取年份
        $oid = $this->getQishuId($qishu,$sid,4);
        //查收据记录表和收支流水
        $info = M('sjjlb_'.$nian)->field('xuehao,xingming,shoujulx,beizhu,jiaofeirq,xiaoqu as fenxiao')->where(" shoujuhao='$shoujuhao' and suoshudd = '$oid' ")->find();
        $info['jiaofeije'] = M('szlsb')->where(" shoujuhao='$shoujuhao' ")->getField('shouru');
        //修改返回数据
        $time_arr = explode('-',$info['jiaofeirq']);
        $info['nianfen'] = $time_arr['0'].'年';
        $info['yuefen'] = $time_arr['1'].'月';
        $info['xinlaohy'] = mb_substr($info['beizhu'],0,2);
        $info['shoujuhao'] = $shoujuhao;
        unset($info['beizhu']);
        return $info;
    }


}
