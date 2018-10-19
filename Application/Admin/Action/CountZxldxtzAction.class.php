<?php
namespace Admin\Action;
use Think\Action;
class CountZxldxtzAction extends CommonAction {
    /**
     * 根据收据号获得统计数据
     *
     * @param  string $qishu       期数：201707
     * @param  string $sid         学校id：school  中的id
     * @return array
     */
    public function getZxldxtzData($qishu='201810',$sid='1',$shoujuhao='00340425'){
        $nian = substr($qishu,0,4);//获取年份
        $oid = $this->getQishuId($qishu,$sid,4);
        //查收据记录表和收支流水
        $info = M('sjjlb_'.$nian)->field('xuehao,xingming,jiaofeirq,xiaoqu as fenxiao,jieshaoren as laohuiyxh')->where(" shoujuhao='$shoujuhao' and suoshudd = '$oid' ")->find();
        $info['jiaofeije'] = M('szlsb')->where(" shoujuhao='$shoujuhao' ")->getField('shouru');
        //修改返回数据
        $time_arr = explode('-',$info['jiaofeirq']);
        $info['nianfen'] = $time_arr['0'].'年';
        $info['yuefen'] = $time_arr['1'].'月';
        $info['shoujuhao'] = $shoujuhao;
        if ($info['laohuiyxh']){
            $info['laohuiyxh'] = M('xyxxb_'.$nian)->where(" shoujuhao='$shoujuhao' and xingming = '".$info['laohuiyxh']."'")->getField('xuehao');
        }
        return $info;
    }


}
