<?php
namespace Admin\Action;
use Think\Action;
class CountTfAction extends CommonAction {
    /**
     * 获得统计数据
     *
     * @param  string $qishu       期数：201707
     * @param  string $sid         学校id：school  中的id
     * @return array
     */
    public function getTfbData($qishu,$sid){
        $js = new \Admin\Action\CountJsmxAction();// 获取减少明细对象
        $data = $js->getJsmxbData($qishu,$sid);
        // dump($data);
        foreach($data as $v){
            if($v['reducetype'] == "退学"){
                $list[]=$v;
            }
        }
        // dump($list);
        return $list;
    }

}
