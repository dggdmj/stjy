<?php
namespace Admin\Action;
use Think\Action;
class CountXzmxAction extends CommonAction {
    /**
     * 获得统计数据
     *
     * @param  string $qishu       期数：201707
     * @param  string $sid         学校id：school  中的id
     * @return array
     */
    public function getXzmxbData($qishu='201902',$sid='1'){
        $yuefen = substr($qishu,4,2).'月';
        $qishu_id = M('qishu_history')->where(array('qishu'=>$qishu,'sid'=>$sid,'tid'=>10))->getField('id');//判断是否有生成历史
        if ($qishu_id){
            $list = M('xzmxb')->where(array('suoshudd'=>$qishu_id))->order('id')->select();
            return $list;
        }else{
            $qishu_id = $this->insertQishuHistory(10,$qishu,$sid);
        }
        //获取学员信息表的订单id
        $xyxxb_oid = $this->getQishuId($qishu,$sid,1);

        //获取学员信息表的订单id
        $sjjlb_oid = $this->getQishuId($qishu,$sid,4);

        //获取转入记录的订单号
         $zrjl_oid = $this->getQishuId($qishu,$sid,28);

        //获取本月最后一天和第一天
        $qishu_time = substr($qishu,0,4).'-'.substr($qishu,4,2);
        $lastday = date('Y-m-d', strtotime("$qishu_time +1 month -1 day"));
        $firstday = date('Y-m-d', strtotime("$qishu_time"));
        $xyxxb = $this->checkFenbiao($xyxxb_oid,'xyxxb');
        $sjjlb = $this->checkFenbiao($xyxxb_oid,'sjjlb');
        //新生
        $list = M($xyxxb)->field('xuehao,xingming,xingbie,xiaoqu as fenxiao,zhuangtai,baomingrq')->where("baomingrq >= '$firstday' and baomingrq <= '$lastday' and suoshudd ='$xyxxb_oid'")->group('xuehao')->select();
        //转入
        $zhuangru = M('zrjlb as zr')
                ->join('LEFT JOIN stjy_sjmxb as sz on sz.xuehao=zr.xuehao')
                ->field('zr.xuehao,zr.xingming,zr.zhuanruxq,sz.goumaikc,sz.jiaofeije')
                ->where(" zr.zhuangxiaosj >= '$firstday' and zr.zhuangxiaosj <= '$lastday' and zr.suoshudd = '$zrjl_oid'")
                ->select();
        //查上个月退学的
        // 获取上个月的期数
        $last_qishu = date('Ym',strtotime("$qishu_time -1 month"));
        $last_oid = $this->getQishuId($last_qishu,$sid,1);
        if($last_oid){
            $xyxxb = $this->checkFenbiao($last_oid,'xyxxb');
             //获取上个月的学员信息表
            $sgy_xyxxb_list = M($xyxxb)->field('xuehao')->where("suoshudd = '$last_oid'")->select();
            $xuehao2 = array();
            foreach($sgy_xyxxb_list as $val){
                $xuehao2[] = $val['xuehao'];
            }
        }else{
            $xyxxb = 'xyxxb_'.substr($qishu,0,4);
        }
        $nian = substr($qishu,0,4);
        $liushi = M($xyxxb.' as ly')
                ->join('LEFT JOIN stjy_xyxxb_'.$nian.' as b on b.xuehao=ly.xuehao')
                ->field('ly.xuehao,ly.xingming,b.huifurxrq,ly.zhuangtai')
                ->where(" ly.suoshudd ='$last_oid' and ly.zhuangtai = '已退学' and b.huifurxrq >= '$firstday' and b.huifurxrq <= '$lastday' and (b.zhuangtai = '在读' or b.zhuangtai = '休学')")
                ->select();
        $ls = array();
        foreach($liushi as $vo){
           $ls[] = $vo['xuehao'];
        }

        $school_name = M("school")->where("id = ".$sid)->getField("name");

        $zhuanchu_id = $this->getQishuId($qishu,$sid,27);
        $shouju_id = $this->getQishuId($qishu,$sid,4);

        $shouju = M($sjjlb.' as sj')
                    ->field('zc.xuehao,zc.xingming,zc.xingbie,zc.zhuanchuxq as fenxiao,sz.goumaikc,sz.jiaofeije')
                    ->join('LEFT JOIN stjy_zcjlb as zc on zc.xuehao=sj.xuehao')
                    ->join('LEFT JOIN stjy_sjmxb as sz on sz.xuehao=sj.xuehao')
                    ->where("sj.suoshudd='$shouju_id' and zc.suoshudd='$zhuanchu_id' and sj.jiaofeirq >= '$firstday' and sj.jiaofeirq <= '$lastday' and zc.zhuangxiaosj >= '$firstday' and zc.zhuangxiaosj <= '$lastday'")
                    ->group('zc.xuehao')
                    ->select();

        $xyList = M($xyxxb)->field('xuehao')->where("suoshudd = '$xyxxb_oid'")->select();
        $xyList = $this->quchongjian($xyList);

        foreach($shouju as $v){
            if (!in_array($v['xuehao'],$xyList) && !in_array($v['xuehao'],$xuehao2)){
                $list[] = $v;
            }
        }
        $i = 1;
        $array = array();
        $nian = substr($qishu,0,4);
        $zhuanru_arr = array(); 
        foreach ($zhuangru as $tmp){
            if(!in_array($tmp['xuehao'],$zhuanru_arr))
                $zhuanru_arr[] = $tmp['xuehao'];
        }
        foreach($list as $key=>$val){
            $val['fenxiao'] =  $school_name;
            $list[$key]['xuhao'] = $i;
            $list[$key]['suoshudd'] = $qishu_id;
            $list[$key]['yuefen'] = $yuefen;
            $list[$key]['xinzenglx'] = '新增';
            $tmp = M('sjjlb_'.$nian)->where("suoshudd=$sjjlb_oid and xuehao='".$val['xuehao']."' and yejigsr != '' and chanpinlx like '%秒杀%'")->count();
            if($tmp){
                $list[$key]['shifoums'] = '是';
            }
            //判断是不是转入的
            if (in_array($val['xuehao'],$zhuanru_arr)){
                $list[$key]['xinzenglx'] = '转入';
            }
            if (in_array($val['xuehao'],$ls)){
                $list[$key]['xinzenglx'] = '流失回来';
                $list[$key]['shifoums'] = '';
            }
            if(!in_array($val['xuehao'],$array)){
                M('xzmxb')->add($list[$key]);
                $array[] = $val['xuehao'];
                $i ++;
            }
        }
        
        //转入
        foreach($zhuangru as $vv){
            if (!in_array($vv['xuehao'],$array)){
                $tmm = array(); 
                $temp = array();
                $temp['xuehao'] = $vv['xuehao'];
                $temp['xingming'] = $vv['xingming'];
                $temp['fenxiao'] = $vv['zhuanruxq'];
                $temp['xuhao'] = $i;
                $temp['suoshudd'] = $qishu_id;
                $temp['yuefen'] = $yuefen;
                $temp['xinzenglx'] = '转入';
                $array[] = $vv['xuehao'];
                M('xzmxb')->add($temp);
                $i ++;
            }
        }
        // 流失回来
       foreach($liushi as $vl){
           if (!in_array($vl['xuehao'],$array)){
              $temp = array();
               $temp['xuehao'] = $vl['xuehao'];
               $temp['xingming'] = $vl['xingming'];
               $temp['fenxiao'] = $school_name;
               $temp['xuhao'] = $i;
               $temp['suoshudd'] = $qishu_id;
               $temp['yuefen'] = $yuefen;
               $temp['xinzenglx'] = '流失回来';
               $array[] = $vl['xuehao'];
               M('xzmxb')->add($temp);
               $i ++;
           }
       }
        return $list;
    }

    // 市场业绩表人头数
    public function getRentoushu($qishu,$sid){
        $list = $this->getXzmxbData($qishu,$sid);
        $xueyuan_all_3m = $this->getAll($qishu);
        // 获取前3个月内所有退学学员的学号
        $xueyuan_tuixue_3m = $this->getTuixue($qishu);
        // 获取上一期所有非本校的在读学员信息
        $zhuanru = $this->getZhuanru($qishu,$sid);

        foreach($list as $k=>$v){
            if(in_array($v['xuehao'],$zhuanru)){
                $arr1[] = $v['xuehao'];
            }elseif(in_array($v['xuehao'],$xueyuan_tuixue_3m)){
                $arr2[] = $v['xuehao'];
            }elseif(!in_array($v['xuehao'],$xueyuan_all_3m)){
                $arr3[] = $v['xuehao'];
            }
        }
        $arr = array('zhuanru'=>$arr1,'liushihuilai'=>$arr2,'xinsheng'=>$arr3);
        return $arr;
    }

    // 处理$list数据
    public function doList($list,$qishu,$sid){
        $bjbm = $this->getBjbm();// 获取班级编码数据
        // 获取前3个月内所有学员的学号
        $xueyuan_all_3m = $this->getAll($qishu);
        // 获取前3个月内所有退学学员的学号
        $xueyuan_tuixue_3m = $this->getTuixue($qishu);
        // 获取上一期所有非本校的在读学员信息
        $zhuanru = $this->getZhuanru($qishu,$sid);
        // dump($zhuan);
        // dump($xueyuan_all_3m);
        // dump($xueyuan_tuixue_3m);

        foreach($list as $k=>$v){
            if(in_array($v['xuehao'],$zhuanru)){
                $list[$k]['addtype'] = '转入';
            }elseif(in_array($v['xuehao'],$xueyuan_tuixue_3m)){
                $list[$k]['addtype'] = '流失回来';
            }elseif(!in_array($v['xuehao'],$xueyuan_all_3m)){
                $list[$k]['addtype'] = '新生';
            }else{
                $list[$k]['addtype'] = '新生';// 当月进出算新生
            }

            $jdjb = substr($v['banji'],0,3);
            // dump(strtolower($jdjb));
            if(strlen($jdjb) == mb_strlen($jdjb,'gb2312')){
                $list[$k]['suoshubm'] = $bjbm[strtolower($jdjb)]['banxing'];
            }else{
                $list[$k]['suoshubm'] = $v['banji'];
            }

            $list[$k]['xiaoqu'] = $this->getInfo($qishu,$sid)['school'];// 将所有数据的校区改为本校区

            // $t_arr = explode(',',$v['shangkels']);
            // $list[$k]['jingduls'] = $t_arr[0];

            // 判断外教和泛读老师的逻辑,截取前面3个字符,如果是英文就是外教,否则就是泛读
            // if(strlen(substr($t_arr[1],0,3)) == mb_strlen(substr($t_arr[1],0,3),'gb2312')){
            //     $list[$k]['waijiao'] = $t_arr[1];
            //     $list[$k]['fanduls'] = $t_arr[2];
            // }else{
            //     $list[$k]['waijiao'] = $t_arr[2];
            //     $list[$k]['fanduls'] = $t_arr[1];
            // }
        }
        return $list;
    }

    // 获取转学学生数据
    public function getZhuanru($qishu,$sid){
        $nianfen = substr($qishu,0,4);
        // 获取上一期内非本校的所有在读学员信息
        $fmonth = $this->getMonth($qishu);
        $where['qishu'] = $fmonth;
        $where['tid'] = 1;
        $where['zhuangtai'] = '在读';
        $res = M('qishu_history')->field('id')->where($where)->where('sid !='.$sid)->select();

        if(!empty($res)){
            foreach($res as $v){
                $ids[] = $v['id'];
            }
            $map['suoshudd'] = array('in',$ids);
            $stu = M('xyxxb_'.$nianfen)->field('xuehao')->where($map)->select();
            if(!empty($stu)){
                foreach($stu as $v){
                    $xueyuan[] = $v['xuehao'];
                }
                return $xueyuan;
            }else{
                return false;
            }
        }else{
            return false;
        }
    }

    // 取得所有分校前3个月内的学生学号
    public function getAll($qishu){
        $nianfen = substr($qishu,0,4);
        // 获取上一月
        $fmonth = $this->getMonth($qishu);
        // 获取前上二月
        $fmonth2 = $this->getMonth($fmonth);
        // 获取前上三月
        $fmonth3 = $this->getMonth($fmonth2);

        // 获取三期所有学校的qishu_history的id数组
        $map['tid'] = 1;
        $map['qishu'] = array('in',[$fmonth,$fmonth2,$fmonth3]);
        $res = M('qishu_history')->field('id')->where($map)->select();
        
        if(!empty($res)){
            foreach($res as $v){
                $ids[] = $v['id'];
            }
            $map2['suoshudd'] = array('in',$ids);
            $stu = M('xyxxb')->field('xuehao')->where($map2)->select();
            if(!empty($stu)){
                foreach($stu as $v){
                    $xueyuan[] = $v['xuehao'];
                }
                return $xueyuan;
            }else{
                return false;
            }
        }else{
            return false;
        }
    }

    // 取得所有分校前3个月内退学的学生学号
    public function getTuixue($qishu){
        $nianfen = substr($qishu,0,4);
        // 获取上一月
        $fmonth = $this->getMonth($qishu);
        // 获取前上二月
        $fmonth2 = $this->getMonth($fmonth);
        // 获取前上三月
        $fmonth3 = $this->getMonth($fmonth2);

        // 获取三期所有学校的qishu_history的id数组
        $map['tid'] = 1;
        $map['qishu'] = array('in',[$fmonth,$fmonth2,$fmonth3]);
        $res = M('qishu_history')->field('id')->where($map)->select();
        
        if(!empty($res)){
            foreach($res as $v){
                $ids[] = $v['id'];
            }
            $map2['suoshudd'] = array('in',$ids);
            $map2['zhuangtai'] = '已退学';
            $stu = M('xyxxb_'.$nianfen)->field('xuehao')->where($map2)->select();
            if(!empty($stu)){
                foreach($stu as $v){
                    $xueyuan[] = $v['xuehao'];
                }
                return $xueyuan;
            }else{
                return false;
            }
        }else{
            return false;
        }
    }

}
