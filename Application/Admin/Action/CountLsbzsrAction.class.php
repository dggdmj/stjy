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
    public function getLsbzsrData($qishu='201812',$sid='25'){
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
        }else{
             $qishu_id = $this->insertQishuHistory(33,$qishu,$sid);
        }
        $nian = substr($qishu,0,4);
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        //获取老师收入的订单id
        $lsqrsr_id = $this->getQishuId($qishu,$sid,30);
        $list = M('lsqrsr')->field('id,suoshudd,daorusj,qianming,xuhao,zongrencxs',true)->where(array('suoshudd'=>$lsqrsr_id))->order('id')->select();
        $danjia = M('gequybzdj')->where(array('xuexiaomc'=>$school_name))->getField('danjia');
        $danjia = $danjia ? $danjia : 0;

        //出勤明细表
        $cqmxb_id = $this->getQishuId($qishu,$sid,25);
        // 获取开班明细的订单id
        $kb_oid = $this->getQishuId($qishu,$sid,6);
        // 获取课消明细的订单id
        $kx_oid = $this->getQishuId($qishu,$sid,5);
        //判断是否有分表
        // $kbmxb = $this->checkFenbiao($kb_oid,'kbmxb');
        $kxmxb = $this->checkFenbiao($kx_oid,'kxmxb');

        // $cqmxb = M('cqmxb as cq')
        //             ->join('LEFT JOIN stjy_kbmxb_'.$nian.' as kb on kb.banjimc=cq.banji')
        //             ->field('kb.jingjiangxs,kb.fanduxs,kb.waijiaoxs,cq.banji,cq.shangkesj')
        //             ->where("cq.suoshudd = '$cqmxb_id' and cq.chuqin='√'")
        //             ->select();
        $kxmxb = M($kxmxb.' as kx')
                ->join('LEFT JOIN stjy_kbmxb_'.$nian.' as kb on kb.banjimc=kx.banji')
                ->field('kb.jingjiangxs as jingduxs,kb.fanduxs,kb.waijiaoxs,kx.shangkels as jingduls,kx.banji,kx.kexiaoje,kx.shangkesj,kx.zhujiao')
                ->where("kx.suoshudd = '$kx_oid' and kb.suoshudd='$kb_oid'")
                ->order('kx.id')
                ->select();
         $cqmxb = M('cqmxb')
                    ->field('banji,shangkesj')
                    ->where("suoshudd = '$cqmxb_id' and chuqin='√'")
                    ->select();
       
        foreach ($cqmxb as $key => $value) {
            $cqmxb[$key]['shangkesj'] = mb_substr($value['shangkesj'],0,16,'utf-8');
            foreach($kxmxb as $nm){
                if ($value['banji'].$cqmxb[$key]['shangkesj'] == $nm['banji'].$nm['shangkesj']){
                    $cqmxb[$key]['zhujiao'] = $nm['zhujiao'];
                    $cqmxb[$key]['jingduls'] = $nm['jingduls'];
                    
                    $cqmxb[$key]['jingduxs'] = $nm['jingduxs'];
                    $cqmxb[$key]['fanduxs'] = $nm['fanduxs'];
                    $cqmxb[$key]['waijiaoxs'] = $nm['waijiaoxs'];
                }
           }
        }
        $banji = M('banjibianhao')->getField('jingdujb,bumen');
        // $arr = array();
        // foreach($cqmxb as $key=>$val){
        //     $val['banji2'] = substr($val['banji'],0,3);
        //     $cqmxb[$key]['nn'] = $banji[ ucwords($val['banji2'] )];
        //     $cqmxb[$key]['nm'] = $val['banji'].$val['shangkesj'];
        //     if($val['jingduls'] == '向思瑜' && !in_array($cqmxb[$key]['nm'],$arr)){
        //         $arr[] = $cqmxb[$key]['nm'];
        //     }
        // }
        // dump($arr);
        // dump($cqmxb);
        // exit;
        // dump($cqmxb);exit;
        foreach($list as $key=>&$val){
            $val['suoshudd'] = $qishu_id;
            $val['xuhao'] = $key+1;
            $val['qianming'] = '';
            $val['zongrencxs'] = 0;
            foreach($cqmxb as $vv){
                $tmp = explode(',',$vv['zhujiao']);
                if (strlen($tmp['0']) > mb_strlen($tmp['0'],'utf-8')){
                    $vv['waijiaols'] = $tmp['1'];
                    $vv['fanduls'] = $tmp['0'];
                }else{
                    $vv['waijiaols'] = $tmp['0'];
                    $vv['fanduls'] = $tmp['1'];
                }
                $vv['banji'] = substr($vv['banji'],0,3);
                if ($val['banxing'] == $banji[ ucwords($vv['banji'] )]){
                    if($val['laoshi'] == $vv['jingduls']){
                        $val['zongrencxs'] += $vv['jingduxs'];
                    }
                    if($val['laoshi'] == $vv['fanduls']){
                        $val['zongrencxs'] += $vv['fanduxs'];
                    }
                    if($val['laoshi'] == $vv['waijiaols']){
                        $val['zongrencxs'] += $vv['waijiaoxs'];
                    }
                }
            }
            $val['biaozhunsr'] = $danjia*$val['zongrencxs'];
            M('lsbzsr')->add($val);
        }
        return $list;
    }


}
