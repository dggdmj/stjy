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
    public function getZxldxtzData($qishu='',$sid=''){
        $qishu_id = M('qishu_history')->where(array('qishu'=>$qishu,'sid'=>$sid,'tid'=>32))->getField('id');//判断是否有生成历史
        if ($qishu_id){
            $list = M('zxldxtz')->where(array('suoshudd'=>$qishu_id))->order('id')->select();
            return $list;
        }else{
            $qishu_id = $this->insertQishuHistory(32,$qishu,$sid);
        }
        $nian = substr($qishu,0,4);//获取年份

        //获取收据记录表的订单id
        $sjjlb_oid = $this->getQishuId($qishu,$sid,4);
        //获取收支流水的订单id
        $szlsb_oid = $this->getQishuId($qishu,$sid,26);
        //获取学员信息表的订单id
        $xyxxb_oid = $this->getQishuId($qishu,$sid,1);

        //修改返回数据
        $nianfen = substr($qishu,0,4).'年';
        $yuefen = substr($qishu,4,2).'月';

        $list = M('sjjlb_'.$nian.' as sj')
                ->join('LEFT JOIN stjy_szlsb as sz on sj.shoujuhao=sz.shoujuhao')
                ->join('LEFT JOIN stjy_xyxxb_'.$nian.' as xy on xy.xingming=sj.jieshaoren')
                ->field('sj.xuehao,sj.xingming as xinshengxm,sj.jiaofeirq,sj.xiaoqu as fenxiao,sj.jieshaoren as laohuiyxm,sz.shouru as jiaofeije,xy.xuehao as laohuiyxh,sj.shoujuhao as xinshengsjh')
                ->where("sj.suoshudd='$sjjlb_oid' and sj.jieshaoren != '' and sj.shoukuanzh != '老带新返现' and sj.shoukuanzh != '结转学费' and sj.chanpinlx != '教材费'")
                ->group('sj.shoujuhao')
                ->select();

        foreach($list as $key=>&$val){
            $val['xuhao'] = $key+1;
            $val['nianfen'] = $nianfen;
            $val['jiaofeiyf'] = $yuefen;
            $val['suoshudd'] = $qishu_id;
            M('zxldxtz')->add($val);
        }
        return $list;
    }


}
