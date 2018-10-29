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
    public function getZxldxtzData($qishu='',$sid='',$shoujuhao=''){
        $qishu_id = M('qishu_history')->where(array('qishu'=>$qishu,'sid'=>$sid,'tid'=>32))->getField('id');//判断是否有生成历史
        if ($qishu_id){
            $info = M('zxldxtz')->where(array('suoshudd'=>$qishu_id,'xinshengsjh'=>$shoujuhao))->select();
            if ($info) {return $info;}
        }else{
            $qishu_id = $this->insertQishuHistory(32,$qishu,$sid);
        }
        $nian = substr($qishu,0,4);//获取年份
        $oid = $this->getQishuId($qishu,$sid,4);
        //查收据记录表和收支流水
        $info = M('sjjlb_'.$nian)->field('xuehao,xingming as xinshengxm,jiaofeirq,xiaoqu as fenxiao,jieshaoren as laohuiyxh')->where(" shoujuhao='$shoujuhao' and suoshudd = '$oid' ")->find();
        $info['jiaofeije'] = M('szlsb')->where(" shoujuhao='$shoujuhao' ")->getField('shouru');
        //修改返回数据
        $time_arr = explode('-',$info['jiaofeirq']);
        $info['nianfen'] = $time_arr['0'].'年';
        $info['jiaofeiyf'] = $time_arr['1'].'月';
        $info['xinshengsjh'] = $shoujuhao;
        if ($info['laohuiyxh']){
            $info['laohuiyxh'] = M('xyxxb_'.$nian)->where(" suoshudd='$oid' and xingming = '".$info['laohuiyxh']."'")->getField('xuehao');
        }else{
            $info['laohuiyxh'] = null;
        }
        $info['suoshudd'] = $qishu_id;
        M('zxldxtz')->add($info);
        return $info;
    }


}
