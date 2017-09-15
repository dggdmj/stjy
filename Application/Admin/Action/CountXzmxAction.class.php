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
    public function getXzmxbData($qishu,$sid){
        // 查询本期班级学员信息表里的所有学员
        unset($where);
        $data_bjxyxxb = $this->getStu($qishu,$sid);

        // 收据记录表与班级学员信息表的重复学员信息进行合并
        $where['qishu'] = $qishu;
        $where['sid'] = $sid;
        $where['tid'] = 4;
        $id = M('qishu_history')->where($where)->getField('id');
        $data_temp = M('sjjlb')->where('suoshudd ='.$id)->field('xuehao')->select();
        foreach($data_temp as $v){
            $data_sjjlb[] = $v['xuehao'];
        }
        unset($where);
        if(!empty(array_diff($data_sjjlb,$data_bjxyxxb))){
            $xueyuan = array_merge($data_bjxyxxb,array_diff($data_sjjlb,$data_bjxyxxb));
        }else{
            $xueyuan = $data_bjxyxxb;
        }

        // dump(array_diff($data_sjjlb,$data_bjxyxxb));die;
        $fmonth = $this->getMonth($qishu);
        $fm = $this->getStu($fmonth,$sid);
        // dump($fm);die;

        // $new为新增学员,取本月和上月学员差集,若上月学员为空,则本月全员为新增学员
        if(!empty($fm)){
            $new = array_diff($xueyuan,$fm);// 新增
        }else{
            $new = $xueyuan;
        }
        // dump($new);die;
        $map['stjy_bjxyxxb.xuehao'] = array('in',$new);// 查询条件
        // print_r($new);die;

        $list = M('bjxyxxb')->join('LEFT JOIN stjy_xyfyyjb on stjy_bjxyxxb.xuehao=stjy_xyfyyjb.xuehao')->join('LEFT JOIN (select * from stjy_sjjlb where stjy_sjjlb.yejigsr != "") as temp on stjy_bjxyxxb.xuehao=temp.xuehao')->join('LEFT JOIN stjy_xyxxb on stjy_bjxyxxb.xuehao=stjy_xyxxb.xuehao')->field('stjy_bjxyxxb.*,temp.yejigsr,temp.zhaoshengly,stjy_xyxxb.shoujihm,stjy_xyfyyjb.shuliang,stjy_xyfyyjb.danwei,stjy_xyfyyjb.feiyong')->where($map)->select();
        // dump($list);
        $res = $this->doList($list,$qishu,$sid);
        // dump($res);
        return $res;
    }

    // 处理$list数据
    public function doList($list,$qishu,$sid){
        $bjbm = $this->getBjbm();// 获取班级编码数据
        // 获取前3个月内所有学员的学号
        $xueyuan_all_3m = $this->getAll($qishu);
        // 获取前3个月内所有退学学员的学号
        $xueyuan_tuixue_3m = $this->getAll($qishu);
        // 获取上一期所有非本校的在读学员信息
        $zhuan = $this->getZhuan($qishu,$sid);

        foreach($list as $k=>$v){
            if(in_array($v['xuehao'],$zhuan)){
                $list[$k]['addtype'] = '转入';
            }elseif(in_array($v['xuehao'],$xueyuan_tuixue_3m)){
                $list[$k]['addtype'] = '流失回来';
            }elseif(!in_array($v['xuehao'],$xueyuan_all_3m)){
                $list[$k]['addtype'] = '新生';
            }

            $jdjb = substr($v['banji'],0,3);
            // dump(strtolower($jdjb));
            if(strlen($jdjb) == mb_strlen($jdjb,'gb2312')){
                $list[$k]['suoshubm'] = $bjbm[strtolower($jdjb)]['banxing'];
            }else{
                $list[$k]['suoshubm'] = $v['banji'];
            }

            $t_arr = explode(',',$v['shangkels']);
            $list[$k]['jingduls'] = $t_arr[0];

            // 判断外教和泛读老师的逻辑,截取前面3个字符,如果是英文就是外教,否则就是泛读
            if(strlen(substr($t_arr[1],0,3)) == mb_strlen(substr($t_arr[1],0,3),'gb2312')){
                $list[$k]['waijiao'] = $t_arr[1];
                $list[$k]['fanduls'] = $t_arr[2];
            }else{
                $list[$k]['waijiao'] = $t_arr[2];
                $list[$k]['fanduls'] = $t_arr[1];
            }
        }
        return $list;
    }

    // 获取转学学生数据
    public function getZhuan($qishu,$sid){
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
            $stu = M('xyxxb')->field('xuehao')->where($map)->select();
            foreach($stu as $v){
                $xueyuan[] = $v['xuehao'];
            }
            return $xueyuan;
        }else{
            return false;
        }
    }

    // 取得所有分校前3个月内的学生学号
    public function getAll($qishu){
        // 获取上一月的学号数组
        $fmonth = $this->getMonth($qishu);
        $fm = $this->getXyxxbData($fmonth);

        // 获取前上二月的学号数组
        $fmonth2 = $this->getMonth($fmonth);
        $fm2 = $this->getXyxxbData($fmonth2);

        // 获取前上三月的学号数组
        $fmonth3 = $this->getMonth($fmonth2);
        $fm3 = $this->getXyxxbData($fmonth3);

        // 获取前3个月内所有的学员学号
        $xueyuan_3m = array_merge(fm,fm2,fm3);
        return $xueyuan_3m;
    }

    // 取得所有分校前3个月内退学的学生学号
    public function getTuixue($qishu){
        $str = 'zhuangtai = "已退学"';
        // 获取上一月的学号数组
        $fmonth = $this->getMonth($qishu);
        $fm = $this->getXyxxbData($fmonth,$str);

        // 获取前上二月的学号数组
        $fmonth2 = $this->getMonth($fmonth);
        $fm2 = $this->getXyxxbData($fmonth2,$str);

        // 获取前上三月的学号数组
        $fmonth3 = $this->getMonth($fmonth2);
        $fm3 = $this->getXyxxbData($fmonth3,$str);

        // 获取前3个月内所有的学员学号
        $xueyuan_3m = array_merge(fm,fm2,fm3);
        return $xueyuan_3m;
    }

    // 获取当期所有学校学员信息表的学号
    public function getXyxxbData($qishu,$extra=''){
        // 获取一期内的所有学员信息
        $where['qishu'] = $qishu;
        $where['tid'] = 1;
        if(empty($extra)){
            $res = M('qishu_history')->field('id')->where($where)->select();
        }else{
            $res = M('qishu_history')->field('id')->where($where)->where($extra)->select();
        }

        if(!empty($res)){
            foreach($res as $v){
                $ids[] = $v['id'];
            }
            $map['suoshudd'] = array('in',$ids);
            $stu = M('xyxxb')->field('xuehao')->where($map)->select();
            foreach($stu as $v){
                $xueyuan[] = $v['xuehao'];
            }
            return $xueyuan;
        }else{
            return false;
        }
    }

}
