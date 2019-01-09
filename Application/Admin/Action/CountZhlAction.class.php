<?php
namespace Admin\Action;
use Think\Action;
class CountZhlAction extends CommonAction {
    /**
     * 获得统计数据
     *
     * @param  string $qishu       期数：201707
     * @param  string $sid         学校id：school  中的id
     * @return array
     */
    public function getZhlData($qishu='201810',$sid='15'){
        $xufei = $this->xufei($qishu,$sid);
        $nian = substr($qishu,0,4);
        $last_day = substr($qishu,0,4).'-'.substr($qishu,4,2);
        $yuefen = substr($qishu,4,2).'月';
        $yuemo = date('Y-m-d',strtotime($last_day.' +1 month'));
        $xyxxb_id = $this->getQishuId($qishu,$sid,1);
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        $list = M('xyxxb_'.$nian.' as xy')
                ->join('LEFT JOIN stjy_bjxyxxb_'.$nian.' as bj on bj.xuehao=xy.xuehao')
                // ->join('LEFT JOIN stjy_xyfyyjb_'.$nian.' as yj on yj.xuehao=xy.xuehao')
                ->join('LEFT JOIN stjy_kbmxb_'.$nian.' as kb on kb.banjimc=bj.banji')
                // ->join('LEFT JOIN stjy_kechenggl as kc on kc.kechengmc=yj.kechengmc')
                ->field('bj.id,xy.xuehao,xy.xingming,xy.shoucijfrq,bj.banji,xy.zuijinsksj,xy.tuixuerq,xy.xiuxuerq,kb.jingjiangls,kb.fanduls')
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
        }
        $banji = M('banjibianhao')->getField('jingdujb,bumen');
        //退费人数
        $tuifei = $this->tuifei($qishu,$sid,$banji);
        $data = array();
        $data['xiaoxuebu']['xufeixsrs'] = 0;
        $data['chuzhongbu']['xufeixsrs'] = 0;
        $data['chuerxxq']['xufeixsrs'] = 0;

        $data['xiaoxuebu']['shengyukcxydyldxs'] = 0;
        $data['chuzhongbu']['shengyukcxydyldxs'] = 0;
        $data['chuerxxq']['shengyukcxydyldxs'] = 0;

        $data['xiaoxuebu']['xinzengxxrs'] = 0;
        $data['chuzhongbu']['xinzengxxrs'] = 0;
        $data['chuerxxq']['xinzengxxrs'] = 0;
        $qishu_id = $this->insertQishuHistory(35,$qishu,$sid);//考核表订单id
        $xfl_suoshudd = $this->insertQishuHistory(38,$qishu,$sid);

        //获取续费率计算的数组
        $xfljs_id = $this->getQishuId($qishu,$sid,36);
        $xfljs = M('xfljs')->field('xuehao')->where("suoshudd='$xfljs_id' and shifoucyxfljs = '否'")->select();
        $xfl_arr = array();
        foreach($xfljs as $vo){
            $xfl_arr[] = $vo['xuehao'];
        }

        //计算是否已考核
        $sy_qishu = date('Ym',strtotime(substr($qishu,0,4)).'-'.substr($qishu,4,2));//上个月
        $qy_qishu = date('Ym',strtotime(substr($qishu,0,4)).'-'.substr($qishu,4,2));//上上个月
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

        //获取人事老师名单
        $renshi2 = array();
        $renshi = array();
        foreach($list as $val){
            if(!in_array($val['jingjiangls'],$renshi2)){
                $renshi2[] = $val['jingjiangls'];
            }
            if(!in_array($val['fanduls'],$renshi2)){
                $renshi2[] = $val['fanduls'];
            }
        }
        foreach($renshi2 as $key=>$val){
            $renshi[$key]['xingming'] = $val;
        }
        // $renshi = M('rycb')->field('id,xingming')->where(array('xiaoqu'=>$school_name))->select();

        $num = 1;

        $miaosha_sz = M('fxms')->field('shangkekc,danjia')->where("sid='$sid'")->find();
        //获取本月新增秒杀
        $xzms = $this->xzms($qishu,$sid,$miaosha_sz);
        foreach($renshi as $ko=>&$vo){
            $temp = array();
            foreach($list as &$val){
                $val['banji'] = substr($val['banji'],0,3);
                $val['bumen'] = $banji[ $val['banji'] ];
                //判断不是本月透视并且不是本月新增秒杀
                if (in_array($val['xuehao'],$xzms) && !in_array($val['xuehao'],$xfl_arr)){
                    if ($val['bumen'] == '小学部'){
                        if ($ko==0){
                            if(in_array($val['xuehao'],$tuifei)){
                                $tuifeis['xiaoxuebu'] += 1;
                            }
                        }
                        if ($vo['xingming'] == $val['jingjiangls']){
                            if(in_array($val['xuehao'],$tuifei)){
                                $temp['xx_jd']['tuifeixsrs'] += 1;
                            }
                        }
                        if ($vo['xingming'] == $val['fanduls']){
                            if(in_array($val['xuehao'],$tuifei)){
                                $temp['xx_fd']['tuifeixsrs'] += 1;
                            }
                        }
                        //续费学生人数
                        if ($val['shoucijfrq'] < $last_day && in_array($val['xuehao'],$xufei) && $val['shoucijfrq'] != ''){
                            if($ko==0){
                                $data['xiaoxuebu']['xufeixsrs'] += 1;
                            }
                            //精读老师
                            if ($vo['xingming'] == $val['jingjiangls']){
                                $temp['xx_jd']['xufeixsrs'] +=1;
                            }
                            //泛读老师
                            if ($vo['xingming'] == $val['fanduls']){
                                $temp['xx_fd']['xufeixsrs'] +=1;
                                
                            }
                        }
                        //剩余课次小于或等于0学生人数
                        if(($val['zuijinsksj'] > $last_day) && !( $val['shuliang'] > 0) || ( ($val['shuliang'] > 0 ) && ($val['tuixueriqi'] > $last_day) ) ){
                            if($ko == 0){
                                $data['xiaoxuebu']['shengyukcxydyldxs'] += 1;
                            }
                            //记录考核表
                            $khb['xuehao'] = $val['xuehao'];
                            $khb['bumen'] = '小学部';
                            $khb['suoshudd'] = $qishu_id;
                            $khb['type'] = 1;
                            // M('khb')->add($khb);
                            //精读老师
                            if ($vo['xingming'] == $val['jingjiangls']){
                                $temp['xx_jd']['shengyukcxydyldxs'] +=1;
                            }
                            //泛读老师
                            if ($vo['xingming'] == $val['fanduls']){
                                $temp['xx_fd']['shengyukcxydyldxs'] +=1;
                            }
                        }
                        //新增休学人数
                        if($val['xiuxuerq'] >  $last_day && $val['xiuxuerq'] < $yuemo){
                            if($ko==0){
                                $data['xiaoxuebu']['xinzengxxrs'] += 1;
                            }
                            //精读老师
                            if ($vo['xingming'] == $val['jingjiangls']){
                                $temp['xx_jd']['xinzengxxrs'] +=1;
                            }
                            //泛读老师
                            if ($vo['xingming'] == $val['fanduls']){
                                $temp['xx_fd']['xinzengxxrs'] +=1;
                            }
                        }
                        //已考核
                        if($khb[ $val['xuehao'] ] == '小学部'){
                            $data['xiaoxuebu']['yikaohe'] += 1;
                            //精读老师
                            if ($vo['xingming'] == $val['jingjiangls']){
                                $temp['xx_jd']['yikaohe'] +=1;
                            }
                            //泛读老师
                            if ($vo['xingming'] == $val['fanduls']){
                                $temp['xx_fd']['yikaohe'] +=1;
                            }
                        }
                    }
                    if ($val['bumen'] == '初中部'){
                        if ($ko==0){
                            if(in_array($val['xuehao'],$tuifei)){
                                $tuifeis['xiaoxuebu'] += 1;
                            }
                        }
                        if ($vo['xingming'] == $val['jingjiangls']){
                            if(in_array($val['xuehao'],$tuifei)){
                                $temp['cz_jd']['tuifeixsrs'] += 1;
                            }
                        }
                        if ($vo['xingming'] == $val['fanduls']){
                            if(in_array($val['xuehao'],$tuifei)){
                                $temp['cz_fd']['tuifeixsrs'] += 1;
                            }
                        }
                        //续费学生人数
                        if ($val['shoucijfrq'] < $last_day && in_array($val['xuehao'],$xufei) && $val['shoucijfrq'] != ''){
                            if($ko==0){
                                $data['chuzhongbu']['xufeixsrs'] += 1;
                                if(in_array($val['xuehao'],$tuifei)){
                                    $tuifeis['chuzhongbu'] += 1;
                                }
                            }
                            //精读老师
                            if ($vo['xingming'] == $val['jingjiangls']){
                                $temp['cz_jd']['xufeixsrs'] +=1;
                            }
                            //泛读老师
                            if ($vo['xingming'] == $val['fanduls']){
                                $temp['cz_fd']['xufeixsrs'] +=1;
                            }
                        }
                        //剩余课次小于或等于0学生人数
                        if(($val['zuijinsksj'] > $last_day) && !( $val['shuliang'] > 0) || ( ($val['shuliang'] > 0 ) && ($val['tuixueriqi'] > $last_day) ) ){
                            if($ko == 0){
                                $data['chuzhongbu']['shengyukcxydyldxs'] += 1;
                            }
                            //记录考核表
                            $khb['xuehao'] = $val['xuehao'];
                            $khb['bumen'] = '初中部';
                            $khb['suoshudd'] = $qishu_id;
                            $khb['type'] = 1;
                            // M('khb')->add($khb);
                            //精读老师
                            if ($vo['xingming'] == $val['jingjiangls']){
                                $temp['cz_jd']['shengyukcxydyldxs'] +=1;
                            }
                            //泛读老师
                            if ($vo['xingming'] == $val['fanduls']){
                                $temp['cz_fd']['shengyukcxydyldxs'] +=1;
                            }
                        }
                        //新增休学人数
                        if($val['xiuxuerq'] >  $last_day && $val['xiuxuerq'] < $yuemo){
                            $data['chuzhongbu']['xinzengxxrs'] += 1;
                            //精读老师
                            if ($vo['xingming'] == $val['jingjiangls']){
                                $temp['cz_jd']['xinzengxxrs'] +=1;
                            }
                            //泛读老师
                            if ($vo['xingming'] == $val['fanduls']){
                                $temp['cz_fd']['xinzengxxrs'] +=1;
                            }
                        }
                        //已考核
                        if($khb[ $val['xuehao'] ] == '初中部'){
                            $data['chuzhongbu']['yikaohe'] += 1;
                            //精读老师
                            if ($vo['xingming'] == $val['jingjiangls']){
                                $temp['cz_jd']['yikaohe'] +=1;
                            }
                            //泛读老师
                            if ($vo['xingming'] == $val['fanduls']){
                                $temp['cz_fd']['yikaohe'] +=1;
                            }
                        }
                    }
                    if ($val['bumen'] == '初二下学期'){
                        if ($ko==0){
                            if(in_array($val['xuehao'],$tuifei)){
                                $tuifeis['xiaoxuebu'] += 1;
                            }
                        }
                        if ($vo['xingming'] == $val['jingjiangls']){
                            if(in_array($val['xuehao'],$tuifei)){
                                $temp['ce_jd']['tuifeixsrs'] += 1;
                            }
                        }
                        if ($vo['xingming'] == $val['fanduls']){
                            if(in_array($val['xuehao'],$tuifei)){
                                $temp['ce_fd']['tuifeixsrs'] += 1;
                            }
                        }
                        //续费学生人数
                        if ($val['shoucijfrq'] < $last_day && in_array($val['xuehao'],$xufei)){
                            if($ko==0){
                                $data['chuerxxq']['xufeixsrs'] += 1;
                                if(in_array($val['xuehao'],$tuifei)){
                                    $tuifeis['chuerxxq'] += 1;
                                }
                            }
                            //精读老师
                            if ($vo['xingming'] == $val['jingjiangls']){
                                $temp['ce_jd']['xufeixsrs'] +=1;
                            }
                            //泛读老师
                            if ($vo['xingming'] == $val['fanduls']){
                                $temp['ce_fd']['xufeixsrs'] +=1;
                            }
                        }
                        //剩余课次小于或等于0学生人数
                        if(($val['zuijinsksj'] > $last_day) && !( $val['shuliang'] > 0) || ( ($val['shuliang'] > 0 ) && ($val['tuixueriqi'] > $last_day) ) ){
                            if($ko == 0){
                                $data['chuerxxq']['shengyukcxydyldxs'] += 1;
                            }
                            //记录考核表
                            $khb['xuehao'] = $val['xuehao'];
                            $khb['bumen'] = '初二下学期';
                            $khb['suoshudd'] = $qishu_id;
                            $khb['type'] = 1;
                            // M('khb')->add($khb);
                            //精读老师
                            if ($vo['xingming'] == $val['jingjiangls']){
                                $temp['xx_jd']['shengyukcxydyldxs'] +=1;
                            }
                            //泛读老师
                            if ($vo['xingming'] == $val['fanduls']){
                                $temp['xx_fd']['shengyukcxydyldxs'] +=1;
                            }
                        }
                        //新增休学人数
                        if($val['xiuxuerq'] >  $last_day && $val['xiuxuerq'] < $yuemo){
                            $data['chuerxxq']['xinzengxxrs'] += 1;
                            //精读老师
                            if ($vo['xingming'] == $val['jingjiangls']){
                                $temp['ce_jd']['xinzengxxrs'] +=1;
                            }
                            //泛读老师
                            if ($vo['xingming'] == $val['fanduls']){
                                $temp['ce_fd']['xinzengxxrs'] +=1;
                            }
                        }
                        //已考核
                        if($khb[ $val['xuehao'] ] == '初二下学期'){
                            $data['chuerxxq']['yikaohe'] += 1;
                            //精读老师
                            if ($vo['xingming'] == $val['jingjiangls']){
                                $temp['ce_jd']['yikaohe'] +=1;
                            }
                            //泛读老师
                            if ($vo['xingming'] == $val['fanduls']){
                                $temp['ce_fd']['yikaohe'] +=1;
                            }
                        }
                    }
                }
            }
            //这里写插入数据库语句
            //小学精读
            $temp['xx_jd']['xuhao'] = $num;
            $temp['xx_jd']['laoshimz'] = $vo['xingming'];
            $temp['xx_jd']['banxing'] = '小学部';
            $temp['xx_jd']['leixing'] = '精读';
            // $temp['xx_jd']['tuifeixsrs'] = $tuifei['xx_jd'][ $vo['xingming'] ] ? $tuifei['xx_jd'][ $vo['xingming'] ] : 0;
            $temp['xx_jd']['fenmu'] =  $temp['xx_jd']['xufeixsrs']  + $temp['xx_jd']['shengyukcxydyldxs'] + $temp['xx_jd']['tuifeixsrs'] + $temp['xx_jd']['xinzengxxrs'] - $temp['yikaohe'];
            if ($temp['xx_jd']['xufeixsrs'] > 0 && $temp['xx_jd']['fenmu'] <= 0){
                $temp['xx_jd']['xufeilv'] = 1;
            }else{
                $temp['xx_jd']['xufeilv'] = (round(is_nan($temp['xx_jd']['xufeixsrs'] / $temp['xx_jd']['fenmu']) ? 0 : $temp['xx_jd']['xufeixsrs'] / $temp['xx_jd']['fenmu'] ,4) * 100 ).'%';
            }
            $temp['xx_jd']['yuefen'] = substr($qishu,4,2).'月';
            $temp['xx_jd']['fenxiao'] = $school_name;
            $temp['xx_jd']['type'] = 3;
            $temp['xx_jd']['suoshudd'] = $xfl_suoshudd;
            M('zhl')->add($temp['xx_jd']);

            //小学泛读
            $temp['xx_fd']['xuhao'] = $num;
            $temp['xx_fd']['laoshimz'] = $vo['xingming'];
            $temp['xx_fd']['banxing'] = '小学部';
            $temp['xx_fd']['leixing'] = '泛读';
            // $temp['xx_fd']['tuifeixsrs'] = $tuifei['xx_fd'][ $vo['xingming'] ] ? $tuifei['xx_fd'][ $vo['xingming'] ] : 0;
            $temp['xx_fd']['fenmu'] =  $temp['xx_fd']['xufeixsrs']  + $temp['xx_fd']['shengyukcxydyldxs'] + $temp['xx_fd']['tuifeixsrs'] + $temp['xx_fd']['xinzengxxrs'] - $temp['yikaohe'];
            if ($temp['xx_fd']['xufeixsrs'] > 0 && $temp['xx_fd']['fenmu'] <= 0){
                $temp['xx_fd']['xufeilv'] = 1;
            }else{
                $temp['xx_fd']['xufeilv'] = (round(is_nan($temp['xx_fd']['xufeixsrs'] / $temp['xx_fd']['fenmu']) ? 0 : $temp['xx_fd']['xufeixsrs'] / $temp['xx_fd']['fenmu'] ,4) * 100 ).'%';
            }
            $temp['xx_fd']['yuefen'] = substr($qishu,4,2).'月';
            $temp['xx_fd']['fenxiao'] = $school_name;
            $temp['xx_fd']['type'] = 3;
            $temp['xx_fd']['suoshudd'] = $xfl_suoshudd;
            M('zhl')->add($temp['xx_fd']);

            //初中精读
            $temp['cz_jd']['xuhao'] = $num;
            $temp['cz_jd']['laoshimz'] = $vo['xingming'];
            $temp['cz_jd']['banxing'] = '初中部';
            $temp['cz_jd']['leixing'] = '精读';
            // $temp['cz_jd']['tuifeixsrs'] = $tuifei['cz_jd'][ $vo['xingming'] ] ? $tuifei['cz_jd'][ $vo['xingming'] ] : 0;
            $temp['cz_jd']['fenmu'] =  $temp['cz_jd']['xufeixsrs']  + $temp['cz_jd']['shengyukcxydyldxs'] + $temp['cz_jd']['tuifeixsrs'] + $temp['cz_jd']['xinzengxxrs'] - $temp['yikaohe'];
            if ($temp['cz_jd']['xufeixsrs'] > 0 && $temp['cz_jd']['fenmu'] <= 0){
                $temp['cz_jd']['xufeilv'] = 1;
            }else{
                $temp['cz_jd']['xufeilv'] = (round(is_nan($temp['cz_jd']['xufeixsrs'] / $temp['cz_jd']['fenmu']) ? 0 : $temp['cz_jd']['xufeixsrs'] / $temp['cz_jd']['fenmu'] ,4) * 100 ).'%';
            }
            $temp['cz_jd']['yuefen'] = substr($qishu,4,2).'月';
            $temp['cz_jd']['fenxiao'] = $school_name;
            $temp['cz_jd']['type'] = 3;
            $temp['cz_jd']['suoshudd'] = $xfl_suoshudd;
            M('zhl')->add($temp['cz_jd']);

            //初中泛读
            $temp['cz_fd']['xuhao'] = $num;
            $temp['cz_fd']['laoshimz'] = $vo['xingming'];
            $temp['cz_fd']['banxing'] = '初中部';
            $temp['cz_fd']['leixing'] = '泛读';
            // $temp['cz_fd']['tuifeixsrs'] = $tuifei['cz_fd'][ $vo['xingming'] ] ? $tuifei['cz_fd'][ $vo['xingming'] ] : 0;
            $temp['cz_fd']['fenmu'] =  $temp['cz_fd']['xufeixsrs']  + $temp['cz_fd']['shengyukcxydyldxs'] + $temp['cz_fd']['tuifeixsrs'] + $temp['cz_fd']['xinzengxxrs'] - $temp['yikaohe'];
            if ($temp['cz_fd']['xufeixsrs'] > 0 && $temp['cz_fd']['fenmu'] <= 0){
                $temp['cz_fd']['xufeilv'] = 1;
            }else{
                $temp['cz_fd']['xufeilv'] = (round(is_nan($temp['cz_fd']['xufeixsrs'] / $temp['cz_fd']['fenmu']) ? 0 : $temp['cz_fd']['xufeixsrs'] / $temp['cz_fd']['fenmu'] ,4) * 100 ).'%';
            }
            $temp['cz_fd']['yuefen'] = substr($qishu,4,2).'月';
            $temp['cz_fd']['fenxiao'] = $school_name;
            $temp['cz_fd']['type'] = 3;
            $temp['cz_fd']['suoshudd'] = $xfl_suoshudd;
            M('zhl')->add($temp['cz_fd']);

            //初二下学期精读
            $temp['ce_jd']['xuhao'] = $num;
            $temp['ce_jd']['laoshimz'] = $vo['xingming'];
            $temp['ce_jd']['banxing'] = '初二下学期';
            $temp['ce_jd']['leixing'] = '精读';
            // $temp['ce_jd']['tuifeixsrs'] = $tuifei['ce_jd'][ $vo['xingming'] ] ? $tuifei['ce_jd'][ $vo['xingming'] ] : 0;
            $temp['ce_jd']['fenmu'] =  $temp['ce_jd']['xufeixsrs']  + $temp['ce_jd']['shengyukcxydyldxs'] + $temp['ce_jd']['tuifeixsrs'] + $temp['ce_jd']['xinzengxxrs'] - $temp['yikaohe'];
            if ($temp['ce_jd']['xufeixsrs'] > 0 && $temp['ce_jd']['fenmu'] <= 0){
                $temp['ce_jd']['xufeilv'] = 1;
            }else{
                $temp['ce_jd']['xufeilv'] = (round(is_nan($temp['ce_jd']['xufeixsrs'] / $temp['ce_jd']['fenmu']) ? 0 : $temp['ce_jd']['xufeixsrs'] / $temp['ce_jd']['fenmu'] ,4) * 100 ).'%';
            }
            $temp['ce_jd']['yuefen'] = substr($qishu,4,2).'月';
            $temp['ce_jd']['fenxiao'] = $school_name;
            $temp['ce_jd']['type'] = 3;
            $temp['ce_jd']['suoshudd'] = $xfl_suoshudd;
            M('zhl')->add($temp['ce_jd']);

            // 初二下学期泛读
            $temp['ce_fd']['xuhao'] = $num;
            $temp['ce_fd']['laoshimz'] = $vo['xingming'];
            $temp['ce_fd']['banxing'] = '初二下学期';
            $temp['ce_fd']['leixing'] = '泛读';
            // $temp['ce_fd']['tuifeixsrs'] = $tuifei['ce_fd'][ $vo['xingming'] ] ? $tuifei['ce_fd'][ $vo['xingming'] ] : 0;
            $temp['ce_fd']['fenmu'] =  $temp['ce_fd']['xufeixsrs']  + $temp['ce_fd']['shengyukcxydyldxs'] + $temp['ce_fd']['tuifeixsrs'] + $temp['ce_fd']['xinzengxxrs'] - $temp['yikaohe'];
            if ($temp['ce_fd']['xufeixsrs'] > 0 && $temp['ce_fd']['fenmu'] <= 0){
                $temp['ce_fd']['xufeilv'] = 1;
            }else{
                $temp['ce_fd']['xufeilv'] = (round(is_nan($temp['ce_fd']['xufeixsrs'] / $temp['ce_fd']['fenmu']) ? 0 : $temp['ce_fd']['xufeixsrs'] / $temp['ce_fd']['fenmu'] ,4) * 100 ).'%';
            }
            $temp['ce_fd']['yuefen'] = substr($qishu,4,2).'月';
            $temp['ce_fd']['fenxiao'] = $school_name;
            $temp['ce_fd']['type'] = 3;
            $temp['ce_fd']['suoshudd'] = $xfl_suoshudd;
            M('zhl')->add($temp['ce_fd']);

            //小计
            $temp['xiaoji']['xuhao'] = $num;$num++;
            $temp['xiaoji']['laoshimz'] = '';
            $temp['xiaoji']['banxing'] = '个人小计';
            $temp['xiaoji']['leixing'] = '';
            $temp['xiaoji']['xufeixsrs'] = $temp['xx_jd']['xufeixsrs'] + $temp['xx_fd']['xufeixsrs'] + $temp['cz_jd']['xufeixsrs'] +$temp['cz_fd']['xufeixsrs'] + $temp['ce_jd']['xufeixsrs'] + $temp['ce_fd']['xufeixsrs'];
            $temp['xiaoji']['shengyukcxydyldxs'] = $temp['xx_jd']['shengyukcxydyldxs'] + $temp['xx_fd']['shengyukcxydyldxs'] + $temp['cz_jd']['shengyukcxydyldxs'] +$temp['cz_fd']['shengyukcxydyldxs'] + $temp['ce_jd']['shengyukcxydyldxs'] + $temp['ce_fd']['shengyukcxydyldxs'];
            $temp['xiaoji']['xinzengxxrs'] = $temp['xx_jd']['xinzengxxrs'] + $temp['xx_fd']['xinzengxxrs'] + $temp['cz_jd']['xinzengxxrs'] +$temp['cz_fd']['xinzengxxrs'] + $temp['ce_jd']['xinzengxxrs'] + $temp['ce_fd']['xinzengxxrs'];
            $temp['xiaoji']['yikaohe'] = $temp['xx_jd']['yikaohe'] + $temp['xx_fd']['yikaohe'] + $temp['cz_jd']['yikaohe'] +$temp['cz_fd']['yikaohe'] + $temp['ce_jd']['yikaohe'] + $temp['ce_fd']['yikaohe'];
            $temp['xiaoji']['tuifeixsrs'] = $temp['xx_jd']['tuifeixsrs'] + $temp['xx_fd']['tuifeixsrs'] + $temp['cz_jd']['tuifeixsrs'] +$temp['cz_fd']['tuifeixsrs'] + $temp['ce_jd']['tuifeixsrs'] + $temp['ce_fd']['tuifeixsrs'];
            $temp['xiaoji']['fenmu'] =  $temp['xx_jd']['fenmu'] + $temp['xx_fd']['fenmu'] + $temp['cz_jd']['fenmu'] +$temp['cz_fd']['fenmu'] + $temp['ce_jd']['fenmu'] + $temp['ce_fd']['fenmu'];
            if ($temp['xiaoji']['xufeixsrs'] > 0 && $temp['xiaoji']['fenmu'] <= 0){
                $temp['xiaoji']['xufeilv'] = 1;
            }else{
                $temp['xiaoji']['xufeilv'] = (round(is_nan($temp['xiaoji']['xufeixsrs'] / $temp['xiaoji']['fenmu']) ? 0 : $temp['xiaoji']['xufeixsrs'] / $temp['xiaoji']['fenmu'] ,4) * 100 ).'%';
            }
            $temp['xiaoji']['yuefen'] = substr($qishu,4,2).'月';
            $temp['xiaoji']['fenxiao'] = $school_name;
            $temp['xiaoji']['type'] = 3;
            $temp['xiaoji']['xiaoji'] = 1;
            $temp['xiaoji']['suoshudd'] = $xfl_suoshudd;
            M('zhl')->add($temp['xiaoji']);

            //小学部-精读
            $heji['xx_jd']['xufeixsrs'] += $temp['xx_jd']['xufeixsrs'];
            $heji['xx_jd']['shengyukcxydyldxs'] += $temp['xx_jd']['shengyukcxydyldxs'];
            $heji['xx_jd']['tuifeixsrs'] += $temp['xx_jd']['tuifeixsrs'];
            $heji['xx_jd']['xinzengxxrs'] += $temp['xx_jd']['xinzengxxrs'];
            $heji['xx_jd']['yikaohe'] += $temp['xx_jd']['yikaohe'];
            $heji['xx_jd']['fenmu'] += $temp['xx_jd']['fenmu'];
            //小学部-泛读
            $heji['xx_fd']['xufeixsrs'] += $temp['xx_fd']['xufeixsrs'];
            $heji['xx_fd']['shengyukcxydyldxs'] += $temp['xx_fd']['shengyukcxydyldxs'];
            $heji['xx_fd']['tuifeixsrs'] += $temp['xx_fd']['tuifeixsrs'];
            $heji['xx_fd']['xinzengxxrs'] += $temp['xx_fd']['xinzengxxrs'];
            $heji['xx_fd']['yikaohe'] += $temp['xx_fd']['yikaohe'];
            $heji['xx_fd']['fenmu'] += $temp['xx_fd']['fenmu'];
            //初中部-精读
            $heji['cz_jd']['xufeixsrs'] += $temp['cz_jd']['xufeixsrs'];
            $heji['cz_jd']['shengyukcxydyldxs'] += $temp['cz_jd']['shengyukcxydyldxs'];
            $heji['cz_jd']['tuifeixsrs'] += $temp['cz_jd']['tuifeixsrs'];
            $heji['cz_jd']['xinzengxxrs'] += $temp['cz_jd']['xinzengxxrs'];
            $heji['cz_jd']['yikaohe'] += $temp['cz_jd']['yikaohe'];
            $heji['cz_jd']['fenmu'] += $temp['cz_jd']['fenmu'];
            //初中部-泛读
            $heji['cz_fd']['xufeixsrs'] += $temp['cz_fd']['xufeixsrs'];
            $heji['cz_fd']['shengyukcxydyldxs'] += $temp['cz_fd']['shengyukcxydyldxs'];
            $heji['cz_fd']['tuifeixsrs'] += $temp['cz_fd']['tuifeixsrs'];
            $heji['cz_fd']['xinzengxxrs'] += $temp['cz_fd']['xinzengxxrs'];
            $heji['cz_fd']['yikaohe'] += $temp['cz_fd']['yikaohe'];
            $heji['cz_fd']['fenmu'] += $temp['cz_fd']['fenmu'];
            //初二下学期-精读
            $heji['ce_jd']['xufeixsrs'] += $temp['ce_jd']['xufeixsrs'];
            $heji['ce_jd']['shengyukcxydyldxs'] += $temp['ce_jd']['shengyukcxydyldxs'];
            $heji['ce_jd']['tuifeixsrs'] += $temp['ce_jd']['tuifeixsrs'];
            $heji['ce_jd']['xinzengxxrs'] += $temp['ce_jd']['xinzengxxrs'];
            $heji['ce_jd']['yikaohe'] += $temp['ce_jd']['yikaohe'];
            $heji['ce_jd']['fenmu'] += $temp['ce_jd']['fenmu'];
            //初二下学期-泛读
            $heji['ce_fd']['xufeixsrs'] += $temp['ce_fd']['xufeixsrs'];
            $heji['ce_fd']['shengyukcxydyldxs'] += $temp['ce_fd']['shengyukcxydyldxs'];
            $heji['ce_fd']['tuifeixsrs'] += $temp['ce_fd']['tuifeixsrs'];
            $heji['ce_fd']['xinzengxxrs'] += $temp['ce_fd']['xinzengxxrs'];
            $heji['ce_fd']['yikaohe'] += $temp['ce_fd']['yikaohe'];
            $heji['ce_fd']['fenmu'] += $temp['ce_fd']['fenmu'];
        }
        //小学部-精读
        $heji['xx_jd']['xuhao'] = 2; 
        $heji['xx_jd']['type'] = 2; 
        $heji['xx_jd']['laoshimz'] = ''; 
        $heji['xx_jd']['banxing'] = '小学部'; 
        $heji['xx_jd']['leixing'] = '精读';
        $heji['xx_jd']['yuefen'] = substr($qishu,4,2).'月';
        $heji['xx_jd']['fenxiao'] = $school_name;
        $heji['xx_jd']['suoshudd'] = $xfl_suoshudd;
        if ($heji['xx_jd']['xufeixsrs'] > 0 && $heji['xx_jd']['fenmu'] <= 0){
            $heji['xx_jd']['xufeilv'] = 1;
        }else{
            $heji['xx_jd']['xufeilv'] = (round(is_nan($heji['xx_jd']['xufeixsrs'] / $heji['xx_jd']['fenmu']) ? 0 : $heji['xx_jd']['xufeixsrs'] / $heji['xx_jd']['fenmu'] ,4) * 100 ).'%';
        }
        M('zhl')->add($heji['xx_jd']);

        //小学部-泛读
        $heji['xx_fd']['xuhao'] = 3; 
        $heji['xx_fd']['type'] = 2; 
        $heji['xx_fd']['laoshimz'] = ''; 
        $heji['xx_fd']['banxing'] = '小学部'; 
        $heji['xx_fd']['leixing'] = '泛读';
        $heji['xx_fd']['yuefen'] = substr($qishu,4,2).'月';
        $heji['xx_fd']['fenxiao'] = $school_name;
        $heji['xx_fd']['suoshudd'] = $xfl_suoshudd;
        if ($heji['xx_fd']['xufeixsrs'] > 0 && $heji['xx_fd']['fenmu'] <= 0){
            $heji['xx_fd']['xufeilv'] = 1;
        }else{
            $heji['xx_fd']['xufeilv'] = (round(is_nan($heji['xx_fd']['xufeixsrs'] / $heji['xx_fd']['fenmu']) ? 0 : $heji['xx_fd']['xufeixsrs'] / $heji['xx_fd']['fenmu'] ,4) * 100 ).'%';
        }
        M('zhl')->add($heji['xx_fd']);

        //初中部-精读
        $heji['cz_jd']['xuhao'] = 4; 
        $heji['cz_jd']['type'] = 2; 
        $heji['cz_jd']['laoshimz'] = ''; 
        $heji['cz_jd']['banxing'] = '初中部'; 
        $heji['cz_jd']['leixing'] = '精读';
        $heji['cz_jd']['yuefen'] = substr($qishu,4,2).'月';
        $heji['cz_jd']['fenxiao'] = $school_name;
        $heji['cz_jd']['suoshudd'] = $xfl_suoshudd;
        if ($heji['cz_jd']['xufeixsrs'] > 0 && $heji['cz_jd']['fenmu'] <= 0){
            $heji['cz_jd']['xufeilv'] = 1;
        }else{
            $heji['cz_jd']['xufeilv'] = (round(is_nan($heji['cz_jd']['xufeixsrs'] / $heji['cz_jd']['fenmu']) ? 0 : $heji['cz_jd']['xufeixsrs'] / $heji['cz_jd']['fenmu'] ,4) * 100 ).'%';
        }
        M('zhl')->add($heji['cz_jd']);

        //初中部-泛读
        $heji['cz_fd']['xuhao'] = 5; 
        $heji['cz_fd']['type'] = 2; 
        $heji['cz_fd']['laoshimz'] = ''; 
        $heji['cz_fd']['banxing'] = '初中部'; 
        $heji['cz_fd']['leixing'] = '泛读';
        $heji['cz_fd']['yuefen'] = substr($qishu,4,2).'月';
        $heji['cz_fd']['fenxiao'] = $school_name;
        $heji['cz_fd']['suoshudd'] = $xfl_suoshudd;
        if ($heji['cz_fd']['xufeixsrs'] > 0 && $heji['cz_fd']['fenmu'] <= 0){
            $heji['cz_fd']['xufeilv'] = 1;
        }else{
            $heji['cz_fd']['xufeilv'] = (round(is_nan($heji['cz_fd']['xufeixsrs'] / $heji['cz_fd']['fenmu']) ? 0 : $heji['cz_fd']['xufeixsrs'] / $heji['cz_fd']['fenmu'] ,4) * 100 ).'%';
        }
        M('zhl')->add($heji['cz_fd']);

        //初二部-精读
        $heji['ce_jd']['xuhao'] = 6; 
        $heji['ce_jd']['type'] = 2; 
        $heji['ce_jd']['laoshimz'] = ''; 
        $heji['ce_jd']['banxing'] = '初二下学期'; 
        $heji['ce_jd']['leixing'] = '精读';
        $heji['ce_jd']['yuefen'] = substr($qishu,4,2).'月';
        $heji['ce_jd']['fenxiao'] = $school_name;
        $heji['ce_jd']['suoshudd'] = $xfl_suoshudd;
        if ($heji['ce_jd']['xufeixsrs'] > 0 && $heji['ce_jd']['fenmu'] <= 0){
            $heji['ce_jd']['xufeilv'] = 1;
        }else{
            $heji['ce_jd']['xufeilv'] = (round(is_nan($heji['ce_jd']['xufeixsrs'] / $heji['ce_jd']['fenmu']) ? 0 : $heji['ce_jd']['xufeixsrs'] / $heji['ce_jd']['fenmu'] ,4) * 100 ).'%';
        }
        M('zhl')->add($heji['ce_jd']);

        //初二部-泛读
        $heji['ce_fd']['xuhao'] = 7; 
        $heji['ce_fd']['type'] = 2; 
        $heji['ce_fd']['laoshimz'] = ''; 
        $heji['ce_fd']['banxing'] = '初二下学期'; 
        $heji['ce_fd']['leixing'] = '泛读';
        $heji['ce_fd']['yuefen'] = substr($qishu,4,2).'月';
        $heji['ce_fd']['fenxiao'] = $school_name;
        $heji['ce_fd']['suoshudd'] = $xfl_suoshudd;
        if ($heji['ce_fd']['xufeixsrs'] > 0 && $heji['ce_fd']['fenmu'] <= 0){
            $heji['ce_fd']['xufeilv'] = 1;
        }else{
            $heji['ce_fd']['xufeilv'] = (round(is_nan($heji['ce_fd']['xufeixsrs'] / $heji['ce_fd']['fenmu']) ? 0 : $heji['ce_fd']['xufeixsrs'] / $heji['ce_fd']['fenmu'] ,4) * 100 ).'%';
        }
        M('zhl')->add($heji['ce_fd']);

        //小计
        $heji['xiaoji']['xuhao'] = 1;
        $heji['xiaoji']['laoshimz'] = '';
        $heji['xiaoji']['banxing'] = '分校整体续费率验证（为实际人数的双倍）';
        $heji['xiaoji']['leixing'] = '';
        $heji['xiaoji']['xufeixsrs'] = $heji['xx_jd']['xufeixsrs'] + $heji['xx_fd']['xufeixsrs'] + $heji['cz_jd']['xufeixsrs'] +$heji['cz_fd']['xufeixsrs'] + $heji['ce_jd']['xufeixsrs'] + $heji['ce_fd']['xufeixsrs'];
        $heji['xiaoji']['shengyukcxydyldxs'] = $heji['xx_jd']['shengyukcxydyldxs'] + $heji['xx_fd']['shengyukcxydyldxs'] + $heji['cz_jd']['shengyukcxydyldxs'] +$heji['cz_fd']['shengyukcxydyldxs'] + $heji['ce_jd']['shengyukcxydyldxs'] + $heji['ce_fd']['shengyukcxydyldxs'];
        $heji['xiaoji']['xinzengxxrs'] = $heji['xx_jd']['xinzengxxrs'] + $heji['xx_fd']['xinzengxxrs'] + $heji['cz_jd']['xinzengxxrs'] +$heji['cz_fd']['xinzengxxrs'] + $heji['ce_jd']['xinzengxxrs'] + $heji['ce_fd']['xinzengxxrs'];
        $heji['xiaoji']['yikaohe'] = $heji['xx_jd']['yikaohe'] + $heji['xx_fd']['yikaohe'] + $heji['cz_jd']['yikaohe'] +$heji['cz_fd']['yikaohe'] + $heji['ce_jd']['yikaohe'] + $heji['ce_fd']['yikaohe'];
        $heji['xiaoji']['tuifeixsrs'] = $heji['xx_jd']['tuifeixsrs'] + $heji['xx_fd']['tuifeixsrs'] + $heji['cz_jd']['tuifeixsrs'] +$heji['cz_fd']['tuifeixsrs'] + $heji['ce_jd']['tuifeixsrs'] + $heji['ce_fd']['tuifeixsrs'];
        $heji['xiaoji']['fenmu'] =  $heji['xx_jd']['fenmu'] + $heji['xx_fd']['fenmu'] + $heji['cz_jd']['fenmu'] +$heji['cz_fd']['fenmu'] + $heji['ce_jd']['fenmu'] + $heji['ce_fd']['fenmu'];
        if ($heji['xiaoji']['xufeixsrs'] > 0 && $heji['xiaoji']['fenmu'] <= 0){
            $heji['xiaoji']['xufeilv'] = 1;
        }else{
            $heji['xiaoji']['xufeilv'] = (round(is_nan($heji['xiaoji']['xufeixsrs'] / $heji['xiaoji']['fenmu']) ? 0 : $heji['xiaoji']['xufeixsrs'] / $heji['xiaoji']['fenmu'] ,4) * 100 ).'%';
        }
        $heji['xiaoji']['yuefen'] = substr($qishu,4,2).'月';
        $heji['xiaoji']['fenxiao'] = $school_name;
        $heji['xiaoji']['type'] = 2;
        $heji['xiaoji']['suoshudd'] = $xfl_suoshudd;
        M('zhl')->add($heji['xiaoji']);


        //顶头合计
        $newdata['xuhao'] = 2;
        $newdata['type'] = 1;
        $newdata['laoshi'] = '';
        $newdata['banxing'] = '小学部';
        $newdata['leixing'] = '';

        $newdata['xufeixsrs'] = $data['xiaoxuebu']['xufeixsrs'];
        $newdata['shengyukcxydyldxs'] = $data['xiaoxuebu']['shengyukcxydyldxs'];
        $newdata['tuifeixsrs'] = $tuifeis['xiaoxuebu'];
        $newdata['xinzengxxrs'] = $data['xiaoxuebu']['xinzengxxrs'];
        $newdata['yikaohe']= $data['xiaoxuebu']['yikaohe'];
        $newdata['fenmu']= $newdata['xufeixsrs']  + $newdata['shengyukcxydyldxs'] + $newdata['tuifeixsrs'] + $newdata['xinzengxxrs'] - $newdata['yikaohe'];
        if ($newdata['xufeixsrs'] > 0 && $newdata['fenmu'] <= 0){
            $newdata['xufeilv'] = 1;
        }else{
            $newdata['xufeilv'] = (round(is_nan($newdata['xufeixsrs'] / $newdata['fenmu']) ? 0 : $newdata['xufeixsrs'] / $newdata['fenmu'],4) * 100 ).'%';
        }

        $newdata['fenxiaofzrqm'] = '';
        $newdata['yuefen'] = substr($qishu,4,2).'月';
        $newdata['fenxiao'] = $school_name;
        $newdata['suoshudd'] = $xfl_suoshudd;
        M('zhl')->add($newdata);

        $newdata['xuhao'] = 3;
        $newdata['type'] = 1;
        $newdata['banxing'] = '初中部';
        $newdata['xufeixsrs'] = $data['chuzhongbu']['xufeixsrs'];
        $newdata['shengyukcxydyldxs'] = $data['chuzhongbu']['shengyukcxydyldxs'];
        $newdata['tuifeixsrs'] = $tuifeis['chuzhongbu'];
        $newdata['xinzengxxrs'] = $data['chuzhongbu']['xinzengxxrs'];
        $newdata['yikaohe']= $data['chuzhongbu']['yikaohe'];
        $newdata['fenmu']= $newdata['xufeixsrs']  + $newdata['shengyukcxydyldxs'] + $newdata['tuifeixsrs'] + $newdata['xinzengxxrs'] - $newdata['yikaohe'];
        if ($newdata['xufeixsrs'] > 0 && $newdata['fenmu'] <= 0){
            $newdata['xufeilv'] = 1;
        }else{
            $newdata['xufeilv'] = (round(is_nan($newdata['xufeixsrs'] / $newdata['fenmu']) ? 0 : $newdata['xufeixsrs'] / $newdata['fenmu'],4) * 100 ).'%';
        }
        M('zhl')->add($newdata);

        $newdata['xuhao'] = 4;
        $newdata['type'] = 1;
        $newdata['banxing'] = '初二下学期';
        $newdata['xufeixsrs'] = $data['chuerxxq']['xufeixsrs'];
        $newdata['shengyukcxydyldxs'] = $data['chuerxxq']['shengyukcxydyldxs'];
        $newdata['tuifeixsrs'] = $tuifeis['chuerxxq'];
        $newdata['xinzengxxrs'] = $data['chuerxxq']['xinzengxxrs'];
        $newdata['yikaohe']= $data['chuerxxq']['yikaohe'];
        $newdata['fenmu']= $newdata['xufeixsrs']  + $newdata['shengyukcxydyldxs'] + $newdata['tuifeixsrs'] + $newdata['xinzengxxrs'] - $newdata['yikaohe'];
        if ($newdata['xufeixsrs'] > 0 && $newdata['fenmu'] <= 0){
            $newdata['xufeilv'] = 1;
        }else{
            $newdata['xufeilv'] = (round(is_nan($newdata['xufeixsrs'] / $newdata['fenmu']) ? 0 : $newdata['xufeixsrs'] / $newdata['fenmu'],4) * 100 ).'%';
        }
        M('zhl')->add($newdata);

        $newdata['xuhao'] = 1;
        $newdata['type'] = 1;
        $newdata['banxing'] = '分校整体续费率';
        $newdata['xufeixsrs'] = $data['xiaoxuebu']['xufeixsrs'] + $data['chuzhongbu']['xufeixsrs'] + $data['chuerxxq']['xufeixsrs'];
        $newdata['shengyukcxydyldxs'] =$data['xiaoxuebu']['shengyukcxydyldxs'] + $data['chuzhongbu']['shengyukcxydyldxs'] + $data['chuerxxq']['shengyukcxydyldxs'];
        $newdata['tuifeixsrs'] = $tuifeis['xiaoxuebu'] + $tuifeis['chuzhongbu'] + $tuifeis['chuerxxq'];
        $newdata['xinzengxxrs'] = $data['xiaoxuebu']['xinzengxxrs'] + $data['chuzhongbu']['xinzengxxrs'] + $data['chuerxxq']['xinzengxxrs'];
        $newdata['yikaohe']= $data['xiaoxuebu']['yikaohe'] + $data['chuzhongbu']['yikaohe'] + $data['chuerxxq']['yikaohe'];
        $newdata['fenmu']= $newdata['xufeixsrs']  + $newdata['shengyukcxydyldxs'] + $newdata['tuifeixsrs'] + $newdata['xinzengxxrs'] - $newdata['yikaohe'];
        if ($newdata['xufeixsrs'] > 0 && $newdata['fenmu'] <= 0){
            $newdata['xufeilv'] = 1;
        }else{
            $newdata['xufeilv'] = (round(is_nan($newdata['xufeixsrs'] / $newdata['fenmu']) ? 0 : $newdata['xufeixsrs'] / $newdata['fenmu'],4) * 100 ).'%';
        }
        M('zhl')->add($newdata);
        return true;
    }

    //续费
    public function xufei($qishu,$sid){
        //获取上个月的期数
        $sjmxb_id = $this->getQishuId($qishu,$sid,24);
        $list = M('sjmxb')->field('xuehao,goumaikc')->where("suoshudd='$sjmxb_id' and shoukuanzh != '结转学费' and shoukuanzh != '老带新返现' and shoukuanzh !='' ")->select();
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
                }
            }
        }
        foreach($data as $val){
            if($val['goumaikc'] > 12){
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
        $xyfyyjb_id = $this->getQishuId($last_qishu,$sid,7);//学员费用预警表
        $xyfyyjb = array();
        if ($xyfyyjb_id){
            $lists = M('xyfyyjb_'.$nian)->field('xuehao,xingming,kechengmc,shengyugmsl,shengyuzssl,feiyong')->where("suoshudd='$xyfyyjb_id'")->select();
            foreach($lists as $key=>$val){
                $xyfyyjb[ $val['xuehao'] ]['zongshuliang'] += $val['shengyugmsl']+$val['shengyuzssl'];
                $xyfyyjb[ $val['xuehao'] ]['zongfeiyong'] += $val['feiyong'];
            }
        }
        //获取本月新增的秒杀
        $xyfy_id = $this->getQishuId($qishu,$sid,7);//学员费用预警表
        $list = M('xzmxb as xz')
                ->field('xz.xuehao,yj.shengyugmsl,yj.shengyuzssl,yj.feiyong')
                ->join('LEFT JOIN stjy_xyfyyjb_'.$nian.' as yj on yj.xuehao=xz.xuehao')
                ->where("xz.suoshudd = '$xzmxb_id' and yj.suoshudd='$xyfy_id'")
                ->select();

        foreach($list as $val){
            $xyfyyjb[ $val['xuehao'] ]['zongshuliang'] += $val['shengyugmsl'] + $val['shengyuzssl'];
            $xyfyyjb[ $val['xuehao'] ]['zongfeiyong'] += $val['feiyong'];
        }
        foreach($xyfyyjb as $key=>$val){
            $val['danjia'] = round($val['zongfeiyong'] / $val['zongshuliang'],2);
            if ($val['zongshuliang'] <= $miaosha_sz['shangkekc'] && $val['danjia'] <= $miaosha_sz['danjia'] && $val['danjia'] > 0){
                 $miaosha[] = $key;
            }
        }
        return $miaosha;
    }


}
