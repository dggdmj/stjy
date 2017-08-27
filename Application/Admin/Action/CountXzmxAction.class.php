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
        $fm = $this->getData($fmonth);

        // 获取前上二月的学号数组
        $fmonth2 = $this->getMonth($fmonth);
        $fm2 = $this->getData($fmonth2);

        // 获取前上三月的学号数组
        $fmonth3 = $this->getMonth($fmonth2);
        $fm3 = $this->getData($fmonth3);

        // 在收据记录表查询当期转入学号
        $where1['qishu'] = $qishu;
        $where1['tid'] = 4;
        $where2['suoshudd'] = M('qishu_history')->where($where1)->getField('id');
        // dump($where2['id']);
        $where2['qiandanlx'] = "转校";
        $zhuanxiao = M('sjjlb')->field('xuehao')->where($where2)->select();
        // 生成转入学号的一维数组
        foreach($zhuanxiao as $v){
            $zhuan[] = $v['xuehao'];
        }

        // 查询本期所有学员
        unset($where);
        $where['qishu'] = $qishu;
        $where['tid'] = 3;
        $id = M('qishu_history')->where($where)->getField('id');
        $stu = M('bjxyxxb')->where('suoshudd ='.$id)->field('xuehao')->select();
        // dump($stu);
        foreach($stu as $v){
            $xueyuan[] = $v['xuehao'];
        }

        // $new为新增学员,取本月和上月学员差集
        if(!is_null($fm)){
            $new = array_diff($xueyuan,$fm);
            // dump(count($new));
            $map['stjy_bjxyxxb.xuehao'] = array('in',$new);// 查询条件
            $list = M('bjxyxxb')->join('LEFT JOIN stjy_sjjlb on stjy_bjxyxxb.xuehao=stjy_sjjlb.xuehao')->join('LEFT JOIN stjy_xyxxb on stjy_bjxyxxb.xuehao=stjy_xyxxb.xuehao')->field('stjy_bjxyxxb.*,stjy_sjjlb.yejigsr,stjy_sjjlb.zhaoshengly,stjy_xyxxb.shoujihm')->where($map)->group('stjy_bjxyxxb.xuehao')->select();

            foreach($list as $k=>$v){
                if(in_array($v['xuehao'],$zhuan)){
                    $list[$k]['addtype'] = '转入';
                }elseif(in_array($v['xuehao'],$fm3) and !in_array($v['xuehao'],$fm2) and !in_array($v['xuehao'],$fm)){
                    $list[$k]['addtype'] = '流失回来';
                }else{
                    $list[$k]['addtype'] = '新生';
                }
            }
            return $list;
        }else{
            $new = $xueyuan;
            // dump(count($new));
            $map['stjy_bjxyxxb.xuehao'] = array('in',$new);// 查询条件
            $list = M('bjxyxxb')->join('LEFT JOIN stjy_sjjlb on stjy_bjxyxxb.xuehao=stjy_sjjlb.xuehao')->join('LEFT JOIN stjy_xyxxb on stjy_bjxyxxb.xuehao=stjy_xyxxb.xuehao')->field('stjy_bjxyxxb.*,stjy_sjjlb.yejigsr,stjy_sjjlb.zhaoshengly,stjy_xyxxb.shoujihm')->where($map)->group('stjy_bjxyxxb.xuehao')->select();

            foreach($list as $k=>$v){
                if(in_array($v['xuehao'],$zhuan)){
                    $list[$k]['addtype'] = '转入';
                }elseif(in_array($v['xuehao'],$fm3) and !in_array($v['xuehao'],$fm2) and !in_array($v['xuehao'],$fm)){
                    $list[$k]['addtype'] = '流失回来';
                }else{
                    $list[$k]['addtype'] = '新生';
                }
            }
            return $list;
        }
    }




}
