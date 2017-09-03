<?php
namespace Admin\Action;
use Think\Action;
class CountJsmxAction extends CommonAction {
    /**
     * 获得统计数据
     *
     * @param  string $qishu       期数：201707
     * @param  string $sid         学校id：school  中的id
     * @return array
     */
    public function getJsmxbData($qishu,$sid){
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

        // $new为新增学员,取本月和上月学员差集
        if(!is_null($fm)){
            $jianshao = array_diff($fm,$xueyuan);// 减少人员取上一月和本月的差集,即上一月存在,本月不存在
            // dump(count($new));
            $map['stjy_bjxyxxb.xuehao'] = array('in',$jianshao);// 查询条件
            $list = M('bjxyxxb')->join('LEFT JOIN stjy_xyfyyjb on stjy_bjxyxxb.xuehao=stjy_xyfyyjb.xuehao')->join('LEFT JOIN stjy_xyxxb on stjy_bjxyxxb.xuehao=stjy_xyxxb.xuehao')->field('stjy_bjxyxxb.*,stjy_xyfyyjb.shuliang,stjy_xyfyyjb.feiyong,stjy_xyxxb.shoujihm,stjy_xyxxb.zhaoshengly')->where($map)->group('stjy_bjxyxxb.xuehao')->select();

            // foreach($list as $k=>$v){
            //     // ------------------写三种流失类型的逻辑------------------

            //     if(in_array($v['xuehao'],$zhuan)){
            //         $list[$k]['addtype'] = '转入';
            //     }elseif(in_array($v['xuehao'],$fm3) and !in_array($v['xuehao'],$fm2) and !in_array($v['xuehao'],$fm)){
            //         $list[$k]['addtype'] = '流失回来';
            //     }else{
            //         $list[$k]['addtype'] = '新生';
            //     }
            // }
            return $list;
        }else{
            return false;
        }
    }




}
