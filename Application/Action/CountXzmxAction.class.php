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
        // 获取上一月的学号数组
        $fmonth = $this->getMonth($qishu);
        $fm = $this->getData($fmonth,$sid);

        // 获取前上二月的学号数组
        $fmonth2 = $this->getMonth($fmonth);
        $fm2 = $this->getData($fmonth2,$sid);

        // 获取前上三月的学号数组
        $fmonth3 = $this->getMonth($fmonth2);
        $fm3 = $this->getData($fmonth3,$sid);

        // 查询本期所有学员
        unset($where);
        $xueyuan = $this->getStu($qishu,$sid);

        // $new为新增学员,取本月和上月学员差集,若上月学员为空,则本月全员为新增学员
        if(!is_null($fm)){
            $new = array_diff($xueyuan,$fm);// 新增
        }else{
            $new = $xueyuan;
        }

        $map['stjy_bjxyxxb.xuehao'] = array('in',$new);// 查询条件

        $list = M('bjxyxxb')->join('LEFT JOIN stjy_xyfyyjb on stjy_bjxyxxb.xuehao=stjy_xyfyyjb.xuehao')->join('LEFT JOIN (select * from stjy_sjjlb where stjy_sjjlb.yejigsr != "") as temp on stjy_bjxyxxb.xuehao=temp.xuehao')->join('LEFT JOIN stjy_xyxxb on stjy_bjxyxxb.xuehao=stjy_xyxxb.xuehao')->field('stjy_bjxyxxb.*,temp.yejigsr,temp.zhaoshengly,stjy_xyxxb.shoujihm,stjy_xyfyyjb.shuliang,stjy_xyfyyjb.danwei,stjy_xyfyyjb.feiyong')->where($map)->group('stjy_bjxyxxb.xuehao')->select();
        $res = $this->doList($list,$qishu,$sid);
        // dump($res);
        return $res;
    }

    // 处理$list数据
    public function doList($list,$qishu,$sid){
        $bjbm = $this->getBjbm();// 获取班级编码数据
        foreach($list as $k=>$v){
            if(in_array($v['xuehao'],$this->getZhuan($qishu,$sid))){
                $list[$k]['addtype'] = '转入';
            }elseif(in_array($v['xuehao'],$fm3) and !in_array($v['xuehao'],$fm2) and !in_array($v['xuehao'],$fm)){
                $list[$k]['addtype'] = '流失回来';
            }else{
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
        // 在收据记录表查询当期转入学号
        $where1['qishu'] = $qishu;
        $where1['tid'] = 4;
        $where1['sid'] = $sid;
        $where2['suoshudd'] = M('qishu_history')->where($where1)->getField('id');
        // dump($where2['id']);
        $where2['qiandanlx'] = "转校";
        $zhuanxiao = M('sjjlb')->field('xuehao')->where($where2)->select();
        // 生成转入学号的一维数组
        foreach($zhuanxiao as $v){
            $zhuan[] = $v['xuehao'];
        }
        return $zhuan;
    }

}
