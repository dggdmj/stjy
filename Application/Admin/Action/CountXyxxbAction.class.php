<?php
namespace Admin\Action;
use Think\Action;
class CountXyxxbAction extends CommonAction {
    /**
     * 获得统计数据
     *
     * @param  string $qishu       期数：201707
     * @param  string $sid         学校id：school  中的id
     * @return array
     */
    public function getData($qishu='201810',$sid='15'){
        $nian = substr($qishu,0,4);
        $last_day = substr($qishu,0,4).'-'.substr($qishu,4,2);
        $yuefen = substr($qishu,4,2).'月';
        $yuemo = date('Y-m-d',strtotime($last_day.' +1 month'));
        $zuihou_day = date('Y-m-d',strtotime($last_day.' -1 day'));
        $xyxxb_id = $this->getQishuId($qishu,$sid,1);
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        $list = M('xyxxb_'.$nian.' as xy')
                ->join('LEFT JOIN stjy_bjxyxxb_'.$nian.' as bj on bj.xuehao=xy.xuehao')
                ->join('LEFT JOIN stjy_kbmxb_'.$nian.' as kb on kb.banjimc=bj.banji')
                ->field('xy.*,kb.jingjiangls,kb.fanduls,bj.banji')
                // ->field('xy.id,xy.xuehao,xy.xingming,xy.shoucijfrq,bj.banji,xy.zuijinsksj,xy.tuixuerq,xy.xiuxuerq,kb.jingjiangls,kb.fanduls')
                ->where("xy.suoshudd='$xyxxb_id'")
                ->group('xy.xuehao')
                ->select();
        //学员费用预警
        $xyfyyj_id = $this->getQishuId($qishu,$sid,7);
        $xyfyyjb_list = M('xyfyyjb_'.$nian)->field('xuehao,shengyugmsl,shengyuzssl,feiyong')->where(array('suoshudd'=>$xyfyyj_id))->select();
        //组合
        foreach($list as $key=>$val){
            foreach($xyfyyjb_list as $vv){
                if ($val['xuehao'] == $vv['xuehao']){
                    $list[$key]['shuliang'] += $vv['shengyugmsl'] + $vv['shengyuzssl'];
                    $list[$key]['feiyong'] += $vv['feiyong'];
                }
            }
            $list[$key]['danjia'] = round($list[$key]['feiyong'] / $list[$key]['shuliang'],2);
        }
        $banji = M('banjibianhao')->getField('jingdujb,bumen');
        $xufei = $this->xufei($qishu,$sid);
        //获取续费率计算的数组
        $xfljs_id = $this->getQishuId($qishu,$sid,36);
        $xfljs = M('xfljs')->field('xuehao,bucanyxfljsyy,shifoucyxfljs')->where("suoshudd='$xfljs_id' and shifoucyxfljs = '否'")->select();
        $xfl_arr = array();
        foreach($xfljs as $vo){
            $xfl_arr[ $vo['xuehao'] ]['bucanyxfljsyy'] = $vo['bucanyxfljsyy'];
            $xfl_arr[ $vo['xuehao'] ]['shifoucyxfljs'] = $vo['shifoucyxfljs'];
        }

        //计算是否已考核
        $sy_qishu = date('Ym',strtotime(substr($qishu,0,4)).'-'.substr($qishu,4,2).'-01 -1 month');//上个月
        $qy_qishu = date('Ym',strtotime(substr($qishu,0,4)).'-'.substr($qishu,4,2).'-01 -2 month');//上上个月
        $sy_suoshudd = $this->getQishuId($sy_qishu,$sid,35);
        $qy_suoshudd = $this->getQishuId($qy_qishu,$sid,35);
        $where = '1=1';
        if ($sy_qishu && !$sy_qishu){
            $where .= " and suoshudd='$sy_suoshudd'";
        }else if($sy_qishu && !$sy_qishu){
            $where .= " and suoshudd='$qy_suoshudd'";
        }else{
             $where .= " and ( suoshudd='$sy_suoshudd' or suoshudd='$qy_suoshudd')";
        }
        $heji = array();
        $khb = M('khb')->where($where)->getField('xuehao,bumen');
        //秒杀设置
        $miaosha_sz = M('fxms')->field('shangkekc,danjia')->where("sid='$sid'")->find();
        //获取课消明细
        $kxmxb_id = $this->getQishuId($qishu,$sid,5);
        $kxmxb_list = M('kxmxb_'.$nian)->field('xuehao')->where("suoshudd='$kxmxb_id'")->group('xuehao')->select();
        $kxmxb = array();
        foreach($kxmxb_list as $val){
            $kxmxb[] = $val['xuehao'];
        }
        //获取本月新增秒杀
        $xzms = $this->xzms($qishu,$sid,$miaosha_sz);
     
        foreach($list as $key=>$val){
            if($val['shuliang'] <= $miaosha_sz['shangkekc'] && $val['danjia'] <= $miaosha_sz['danjia'] && $val['danjia'] > 0 && $val['leixing'] == ''){
                $list[$key]['shifoums'] = '是';
            }
            if(in_array($val['xuehao'],$kxmxb)){
                $list[$key]['shifouykx'] = '是';
            }
            $list[$key]['banxing'] = substr($val['banji'],0,3);
            $list[$key]['bumen'] = $banji[ $list[$key]['banxing'] ];
            $list[$key]['shifoucyxfljs'] = $xfl_arr[$val['xuehao']]['shifoucyxfljs'];
            $list[$key]['bucanyxfljsyy'] = $xfl_arr[$val['xuehao']]['bucanyxfljsyy'];
            $list[$key]['shifouyikaohe'] = $khb[$val['xuehao']] ? '是' : '';
            if(in_array($val['xuehao'],$xufei) && $val['shoucijfrq'] < $zuihou_day){
                $list[$key]['xufei'] = '续费';
            }else{
                $list[$key]['xufei'] = '';
            }
            if(($val['zuijinsksj'] > $last_day &&  $val['shuliang'] <= 0) || ($val['shuliang'] > 0  && $val['tuixueriqi'] > $last_day ) ){
                $list[$key]['shifoukhls'] = '本月流失';
            }else{
                $list[$key]['shifoukhls'] = '';
            }
            if($list[$key]['shifouzxzrdjb'] == '是'){
                $list[$key]['zhuangtai2'] = '未进班';
            }elseif( $list[$key]['zhuangtai'] == '在读' && $list[$key]['shoucixfrq'] == ''){
                $list[$key]['zhuangtai2'] = '未进班';
            }else{
                $list[$key]['zhuangtai2'] = $list[$key]['zhuangtai'];
            }
        }
        return $list;
    }

    //续费
    public function xufei($qishu,$sid){
        //获取上个月的期数
        $sjmxb_id = $this->getQishuId($qishu,$sid,24);
        $list = M('sjmxb')->field('xuehao,goumaikc,jiaofeije')->where("suoshudd='$sjmxb_id' and shoukuanzh != '结转学费' and shoukuanzh != '老带新返现' and shoukuanzh !='' ")->select();
        $sjmxb = array();
        $data = array();
        $xuehao = array();
        $result = array();
        foreach($list as $key=>$val){
            $list['goumaikc'] = mb_substr($val['goumaikc'],0,-1,'utf-8');
            if(!in_array($val['xuehao'],$xuehao)){
                $xuehao[] = $val['xuehao'];
            }
        }
        foreach($xuehao as $kk=>$vv){
            foreach($list as $val){
                if($vv == $val['xuehao']){
                    $data[$kk]['xuehao'] = $vv;
                    $data[$kk]['goumaikc'] += $val['goumaikc'];
                    $data[$kk]['jiaofeije'] += $val['jiaofeije'];
                }
            }
        }
        foreach($data as $val){
            if($val['goumaikc'] > 12 && $val['jiaofeije'] > 0){
                // dump($val);
                $result[] = $val['xuehao'];
            }
        }
        return $result;
    }

    //退费
    public function tuifei($qishu,$sid,$bianma=array()){
        $sjjlb_id = $this->getQishuId($qishu,$sid,4);
        $nian = substr($qishu,0,4);
        $list = M('sjjlb_'.$nian.' as sj')
                ->field('bj.banji,kb.jingjiangls,kb.fanduls,sj.shoujulx,sj.xuehao')
                ->join('LEFT JOIN stjy_bjxyxxb_'.$nian.' as bj on bj.xuehao=sj.xuehao')
                ->join('LEFT JOIN stjy_kbmxb_'.$nian.' as kb on bj.banji=kb.banjimc')
                ->where("sj.suoshudd='$sjjlb_id' and ( sj.shoujulx='退费' or sj.shoujulx like '%转费%') ")
                ->select();
        foreach($list as $val){
            $data[] = $val['xuehao'];
        }
        // $data = array();
        // $data['xiaoxuebu'] = 0;
        // $data['chuzhongbu'] = 0;
        // $data['chuerxxq'] = 0;
        // $xx_jd = array();
        // $xx_fd = array();
        // $cz_jd = array();
        // $cz_fd = array();
        // $ce_jd = array();
        // $ce_fd = array();
        // foreach($list as $val){
        //     $val['bumen'] = substr($val['banji'],0,3);
        //     $tmp = $bianma[ $val['bumen'] ];
        //     if ($tmp =='小学部'){
        //         $data['xiaoxuebu'] += 1;
        //         if (!in_array($val['jingjiangls'],$xx_jd)){
        //             $xx_jd[] = $val['jingjiangls'];
        //             $data['xx_jd'][ $val['jingjiangls'] ] += 1; 
        //         }
        //         if (!in_array($val['fanduls'],$xx_fd)){
        //             $xx_fd[] = $val['fanduls'];
        //             $data['xx_fd'][ $val['fanduls'] ] += 1; 
        //         }
        //     }
        //     if ($tmp =='初中部'){
        //         $data['chuzhongbu'] += 1;
        //         if (!in_array($val['jingjiangls'],$cz_jd)){
        //             $cz_jd[] = $val['jingjiangls'];
        //             $data['cz_jd'][ $val['jingjiangls'] ] += 1; 
        //         }
        //         if (!in_array($val['fanduls'],$cz_fd)){
        //             $cz_fd[] = $val['fanduls'];
        //             $data['cz_fd'][ $val['fanduls'] ] += 1; 
        //         }
        //     }
        //     if ($tmp =='初二下学期'){
        //         $data['chuerxxq'] += 1;
        //         if (!in_array($val['jingjiangls'],$ce_jd)){
        //             $ce_jd[] = $val['jingjiangls'];
        //             $data['ce_jd'][ $val['jingjiangls'] ] += 1; 
        //         }
        //         if (!in_array($val['fanduls'],$ce_fd)){
        //             $ce_fd[] = $val['fanduls'];
        //             $data['ce_fd'][ $val['fanduls'] ] += 1; 
        //         }
        //     }
        // }
        return $data;
    }

    //获取本月新增的秒杀和上月透视秒杀
    public function xzms($qishu='201808',$sid='1',$miaosha_sz=array()){
        $xzmxb_id = $this->getQishuId($qishu,$sid,10);
        $nian = substr($qishu,0,4);
        $miaosha = array();
        //获取上个月的透视秒杀
        $last_qishu = date('Ym',strtotime(substr($qishu,0,4).'-'.substr($qishu,4,2).' -1 day'));
        // dump($last_qishu);
        $xyfyyjb_id = $this->getQishuId($qishu,$sid,7);//学员费用预警表
        $xyfyyjb = array();
        if ($xyfyyjb_id){
            $lists = M('xyfyyjb_'.$nian)->field('xuehao,xingming,kechengmc,shengyugmsl,shengyuzssl,feiyong')->where("suoshudd='$xyfyyjb_id'")->select();
            foreach($lists as $key=>$val){
                $xyfyyjb[ $val['xuehao'] ]['zongshuliang'] += $val['shengyugmsl']+$val['shengyuzssl'];
                $xyfyyjb[ $val['xuehao'] ]['zongfeiyong'] += $val['feiyong'];
            }
        }
        // dump($lists);
        //获取本月新增的秒杀
        // $xyfy_id = $this->getQishuId($qishu,$sid,7);//学员费用预警表
        // $list = M('xzmxb as xz')
        //         ->field('xz.xuehao,yj.shengyugmsl,yj.shengyuzssl,yj.feiyong')
        //         ->join('LEFT JOIN stjy_xyfyyjb_'.$nian.' as yj on yj.xuehao=xz.xuehao')
        //         ->where("xz.suoshudd = '$xzmxb_id' and yj.suoshudd='$xyfy_id'")
        //         ->select();

        // foreach($list as $val){
        //     $xyfyyjb[ $val['xuehao'] ]['zongshuliang'] += $val['shengyugmsl'] + $val['shengyuzssl'];
        //     $xyfyyjb[ $val['xuehao'] ]['zongfeiyong'] += $val['feiyong'];
        // }
        foreach($xyfyyjb as $key=>$val){
            $val['danjia'] = round($val['zongfeiyong'] / $val['zongshuliang'],2);
            if ($val['zongshuliang'] <= $miaosha_sz['shangkekc'] && $val['danjia'] <= $miaosha_sz['danjia'] && $val['danjia'] > 0){
                 $miaosha[] = $key;
            }
        }
        return $miaosha;
    }


}
