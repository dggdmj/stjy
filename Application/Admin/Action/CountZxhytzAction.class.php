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
    public function getZxhytzData($qishu='',$sid=''){
        $qishu_id = M('qishu_history')->where(array('qishu'=>$qishu,'sid'=>$sid,'tid'=>31))->getField('id');//判断是否有生成历史
        if ($qishu_id){
            $list = M('zxhytz')->where(array('suoshudd'=>$qishu_id))->order('id')->select();
            return $list;
        }else{
            $qishu_id = $this->insertQishuHistory(31,$qishu,$sid);
        }
        $nian = substr($qishu,0,4);//获取年份
        //获取收据记录表的订单id
        $sjjlb_oid = $this->getQishuId($qishu,$sid,4);
        //获取收支流水的订单id
        $szlsb_oid = $this->getQishuId($qishu,$sid,26);

        //修改返回数据
        $nianfen = substr($qishu,0,4).'年';
        $yuefen = substr($qishu,4,2).'月';

        //获取所有需要统计的项目类型
        $sjlx = M('sjcplx')->field('xiangmu')->where("shifouhytzlx=1 and shifouqy='启用'")->select();
        $sjlx = $this->quchongjian($sjlx);
        //查出所有数据
        $list = M('sjjlb_'.$nian.' as sj')
                ->join('LEFT JOIN stjy_szlsb as sz on sz.shoujuhao=sj.shoujuhao')
                ->field('sj.chanpinlx as leixing,sj.shoujuhao,sj.xuehao,sj.xingming,sj.beizhu,sj.jiaofeirq,sj.xiaoqu as fenxiao,sz.shouru as jiaofeije')
                ->where("sj.suoshudd = '$sjjlb_oid' ")
                ->group('sj.shoujuhao')
                ->select();
        $xuhao = 1;
        foreach($list as $key=>&$val){
            if (in_array($val['leixing'],$sjlx)){
                $val['xuhao'] = $xuhao;
                $val['nianfen'] = $nianfen;
                $val['yuefen'] = $yuefen;
                $val['xinlaohy'] =  mb_substr($val['beizhu'],0,2);
                $val['suoshudd'] = $qishu_id;
                unset($val['beizhu']);
                M('zxhytz')->add($val);
                $xuhao ++;
            }
        }
        return $list;
    }


}
