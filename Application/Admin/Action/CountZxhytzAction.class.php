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
    public function getZxhytzData($qishu='201810',$sid='15'){
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
                ->join('LEFT JOIN stjy_xyxxb_'.$nian.' as xy on xy.xuehao=sj.xuehao')
                ->field('sj.chanpinlx as leixing,sj.shoujuhao,sj.xuehao,sj.xingming,sj.jiaofeirq,sj.xiaoqu as fenxiao,sz.shouru as jiaofeije,xy.shoucijfrq')
                ->where("sj.suoshudd = '$sjjlb_oid' and sj.shoukuanzh != '老带新返现' and sj.shoukuanzh != '结转学费' and sj.shoukuanzh != '' and sz.shouru != '' and sz.suoshudd = '$szlsb_oid'")
                ->group('sj.shoujuhao')
                ->group('sz.shoujuhao')
                ->select();
        $xuhao = 1;
        $benyue_time = strtotime(substr($qishu,0,4).'-'.substr($qishu,4,2).'-01');
        foreach($list as $key=>&$val){
            if (in_array($val['leixing'],$sjlx)){
                $val['xuhao'] = $xuhao;
                $val['nianfen'] = $nianfen;
                $val['yuefen'] = $yuefen;
                if (strtotime($val['shoucijfrq']) >= $benyue_time){
                    $val['xinlaohy'] = '新生';
                }else{
                    $val['xinlaohy'] = '老生';
                }
                $val['suoshudd'] = $qishu_id;
                M('zxhytz')->add($val);
                $xuhao ++;
            }
        }
        return $list;
    }

    //保存
    public function save_zxhytz(){
        $qishu = $_POST['qishu'];
        $sid = $_POST['sid'];
        $suoshudd =  M('qishu_history')->where(array('qishu'=>$qishu,'sid'=>$sid,'tid'=>31))->getField('id');
        M('zxhytz')->where("suoshudd='$suoshudd'")->delete();
        $data = json_decode($_POST['jsons']);
        $field = M()->query("SELECT COLUMN_NAME from information_schema.COLUMNS where table_name = 'stjy_zxhytz' and table_schema ='stjy' and COLUMN_NAME != 'id' and COLUMN_NAME != 'suoshudd' and COLUMN_NAME != 'daorusj'");
        foreach($data as $kk=>$vv){
            $tmp = array();
            foreach($field as $key=>$val){
                $tmp[ $val['column_name'] ] = $vv[ $key ];
            }
            $tmp['suoshudd'] = $suoshudd;
            M('zxhytz')->add($tmp);
        }
        $this->ajaxReturn(1);
    }  


}
