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
    public function getXzmxbData($qishu='201808',$sid='1'){
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
        $list = M($xyxxb)->field('xuehao,xingming,xingbie,xiaoqu as fenxiao,zhuangtai')->where("baomingrq >= '$firstday' and baomingrq <= '$lastday' and suoshudd ='$xyxxb_oid'")->group('xuehao')->select();
        //转入
        $zhuangru = M('zrjlb')
                ->field('xuehao,xingming,zhuanruxq')
                ->where(" zhuangxiaosj >= '$firstday' and zhuangxiaosj <= '$lastday' and suoshudd = '$zrjl_oid'")
                ->select();

        //查上个月退学的
        // 获取上个月的期数
        $last_qishu = date('Ym',strtotime("$qishu_time -1 month"));
        $last_oid = $this->getQishuId($last_qishu,$sid,1);
        $liushi = M($xyxxb)->field('xuehao,xingming,laiyuanfx')->where("suoshudd ='$last_oid' and zhuangtai = '已退学'")->select();

        $zhuanchu_id = $this->getQishuId($qishu,$sid,27);
        $shouju_id = $this->getQishuId($qishu,$sid,4);

        $shouju = M($sjjlb.' as sj')->field('zc.xuehao,zc.xingming,zc.xingbie,zc.zhuanchuxq as fenxiao')->join('RIGHT JOIN stjy_zcjlb as zc on zc.xuehao=sj.xuehao')->where("sj.suoshudd='$shouju_id' and zc.suoshudd='$zhuanchu_id' and sj.jiaofeirq >= '$firstday' and sj.jiaofeirq <= '$lastday' and zc.zhuangxiaosj >= '$firstday' and zc.zhuangxiaosj <= '$lastday'")->group('zc.xuehao')->select();

        $xyList = M($xyxxb)->field('xuehao')->where("suoshudd = '$xyxxb_oid'")->select();
        $xyList = $this->quchongjian($xinzeng);

        foreach($shouju as $v){
            if (!in_array($v['xuehao'],$xyList)){
                $list[] = $v;
            }
        }
        $i = 1;
        $array = array();
        foreach($list as $key=>&$val){
            $array[] = $val['xuehao'];
            $val['xuhao'] = $i;
            $val['suoshudd'] = $qishu_id;
            $val['yuefen'] = $yuefen;
            $val['xinzenglx'] = '新增';
            //判断是不是转入的
            if (in_array($val['xuehao'],$zhuangru)){
                $val['xinzenglx'] = '转入';
            }
            if (in_array($val['xuehao'],$liushi)){
                $val['xinzenglx'] = '流失回来';
            }
            M('xzmxb')->add($val);
            $i ++;
        }
        //转入
        foreach($zhuangru as $vv){
            if (!in_array($vv,$array)){
                $temp = array();
                $temp['xuehao'] = $vv['xuehao'];
                $temp['xingming'] = $vv['xingming'];
                $temp['fenxiao'] = $vv['zhuanruxq'];
                $temp['xuhao'] = $i;
                $temp['suoshudd'] = $qishu_id;
                $temp['yuefen'] = $yuefen;
                $temp['xinzenglx'] = '转入';
                M('xzmxb')->add($temp);
                $i ++;
            }
        }
        //流失回来
        foreach($liushi as $vl){
            if (!in_array($vl,$array)){
               $temp = array();
                $temp['xuehao'] = $vl['xuehao'];
                $temp['xingming'] = $vl['xingming'];
                $temp['fenxiao'] = $vl['laiyuanfx'];
                $temp['xuhao'] = $i;
                $temp['suoshudd'] = $qishu_id;
                $temp['yuefen'] = $yuefen;
                $temp['xinzenglx'] = '流失回来';
                M('xzmxb')->add($temp);
                $i ++;
            }
        }
        return $list;
    }

    public function getXzmxbData_bak($qishu,$sid){
        $nianfen = '_'.substr($qishu,0,4);
        // 查询本期班级学员信息表里的所有学员
        // $t1 = microtime(true);
        $data_bjxyxxb = $this->getData($qishu,$sid);
        // 如果$data_bjxyxxb为空,基本可以断定是因为数据里面校区和校区设置里面校区名称不一致
        if(empty($data_bjxyxxb)){
            $temp['time_xz'] = date('Y-m-d H:i:s');
            $temp['status_xz'] = 4;
            $temp['status_xzjl'] = null;
            $temp['xingzheng'] = M('admin')->where('username ="'.$_SESSION['username'].'"')->getField('nicename');
            M('sjzb')->where($_GET)->save($temp);// 更新数据总表
            // 删除生成数据
            $this->delAllScData($qishu,$sid);

            $arr['status'] = false;
            $arr['info'] = '学员信息表和班级学员信息表中的校区名称和校区设置对应的名称不一致';
            $this->ajaxReturn($arr);
        }

        // 收据记录表与班级学员信息表的重复学员信息进行合并
        $id = $this->getQishuId($qishu,$sid,4);
        $id_xyxxb = $this->getQishuId($qishu,$sid,1);
        $school = $this->getInfo($qishu,$sid)['school'];
        // $t2 = microtime(true);
        $where['stjy_sjjlb.suoshudd'] = $id;
        $where['stjy_sjjlb.beizhu'] = array('notlike','%领袖课程%');
        $where['stjy_sjjlb.xiaoqu'] = $school;
        // $where['temp.laiyuanfx'] = array('in',[$school,'']);
        // $data_temp = M('sjjlb')->join('LEFT JOIN (select * from stjy_xyxxb where stjy_xyxxb.suoshudd ='.$id_xyxxb.') as temp on stjy_sjjlb.xuehao=temp.xuehao')->where($where)->where()->field('stjy_sjjlb.xuehao,stjy_sjjlb.xiaoqu as xiaoqu2,temp.xiaoqu')->select();
        $data_temp = M('sjjlb'.$nianfen)->where($where)->field('stjy_sjjlb.xuehao')->select();
        // $t3 = microtime(true);
        // dump($data_temp);die;
        if(!empty($data_temp)){
            foreach($data_temp as $v){
                $data_sjjlb[] = $v['xuehao'];
            }
        }else{
            $data_sjjlb = [];
        }

        // dump($data_sjjlb);die;
        unset($where);
        if(!empty(array_diff($data_sjjlb,$data_bjxyxxb))){
            $xueyuan = array_merge($data_bjxyxxb,array_diff($data_sjjlb,$data_bjxyxxb));
        }else{
            $xueyuan = $data_bjxyxxb;
        }

        // dump(array_diff($data_sjjlb,$data_bjxyxxb));die;
        // 取得上个月的班级学员信息表学员信息
        // $t4 = microtime(true);
        $fmonth = $this->getMonth($qishu);
        $fm = $this->getData($fmonth,$sid);
        // dump($xueyuan);
        // dump($fm);die;

        // $new为新增学员,取本月和上月学员差集,若上月学员为空,则本月全员为新增学员
        if(!empty($fm)){
            $new = array_diff($xueyuan,$fm);// 新增
        }else{
            $new = $xueyuan;
        }

        if(!empty($new)){
            // 去掉重复值
            $new = array_flip(array_flip($new));
            // dump($new);
            // die;
            // 学号在新增的学号里面,且是本校学校学员,期数是本期的
            // $t5 = microtime(true);
            $map['stjy_xyxxb.xuehao'] = array('in',$new);
            $map['stjy_xyxxb.suoshudd'] = M('qishu_history')->where('qishu='.$qishu.' and sid='.$sid.' and tid=1')->getField('id');
            // $map['stjy_bjxyxxb.banji'] = array('neq','');
            $list = M('xyxxb'.$nianfen.' as stjy_xyxxb')->join('LEFT JOIN stjy_xyfyyjb'.$nianfen.' as stjy_xyxxb on stjy_xyxxb.xuehao=stjy_xyfyyjb.xuehao')->join('LEFT JOIN (select * from stjy_sjjlb_'.$nianfen.' where stjy_sjjlb'.$nianfen.'.yejigsr != "") as temp on stjy_xyxxb.xuehao=temp.xuehao')->join('LEFT JOIN stjy_bjxyxxb'.$nianfen.' as stjy_bjxyxxb on stjy_xyxxb.xuehao=stjy_bjxyxxb.xuehao')->join('LEFT JOIN stjy_kbmxb'.$nianfen.' as stjy_kbmxb on stjy_bjxyxxb.banji=stjy_kbmxb.banjimc')->field('stjy_xyxxb.xuehao,stjy_bjxyxxb.gonglixx,stjy_xyxxb.nianji,stjy_xyxxb.xingming,stjy_xyxxb.xiaoqu,stjy_bjxyxxb.banji,temp.yejigsr,stjy_xyxxb.zhaoshengly,stjy_xyxxb.shoujihm,sum(stjy_xyfyyjb.shuliang) as shuliang,stjy_xyfyyjb.danwei,sum(stjy_xyfyyjb.feiyong) as feiyong,stjy_kbmxb.kaibanrq,stjy_kbmxb.jiebanrq,stjy_kbmxb.jingjiangls,stjy_kbmxb.fanduls')->where($map)->group('stjy_xyxxb.xuehao')->select();
            dump($list);exit;
            // $list = M('xyxxb')->join('LEFT JOIN stjy_bjxyxxb on stjy_xyxxb.xuehao=stjy_bjxyxxb.xuehao')->join('LEFT JOIN stjy_kbmxb on stjy_bjxyxxb.banji=stjy_kbmxb.banjimc')->field('stjy_xyxxb.xuehao,stjy_bjxyxxb.gonglixx,stjy_xyxxb.nianji,stjy_xyxxb.xingming,stjy_xyxxb.xiaoqu,stjy_bjxyxxb.banji,stjy_xyxxb.zhaoshengly,stjy_xyxxb.shoujihm,stjy_kbmxb.kaibanrq,stjy_kbmxb.jiebanrq,stjy_kbmxb.jingjiangls,stjy_kbmxb.fanduls')->where($map)->group('stjy_xyxxb.xuehao')->select();
            // $list = M('xyxxb')->where($map)->group('stjy_xyxxb.xuehao')->select();
            // dump($list);die;
            // $t6 = microtime(true);
            $res = $this->doList($list,$qishu,$sid);
            // $t7 = microtime(true);
            // echo "新增明细表个步骤计算时间：".(($t2-$t1)*1000).'ms--'.(($t3-$t2)*1000).'ms--'.(($t4-$t3)*1000).'ms--'.(($t5-$t4)*1000).'ms--'.(($t6-$t5)*1000).'ms--'.(($t7-$t6)*1000).'ms';
            // dump($res);
        }else{
            $res = array();
        }

        return $res;
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
