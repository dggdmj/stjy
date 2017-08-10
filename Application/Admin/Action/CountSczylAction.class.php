<?php
namespace Admin\Action;
use Think\Action;
class CountSczylAction extends CommonAction {
    /**
     * 获得统计数据
     *
     * @param  string $qishu       期数：201707
     * @param  string $sid         学校id：school  中的id
     * @return array
     */
    public function getSczylbData($qishu,$sid){
        $data = M('bjxyxxb')->field('gonglixx')->group('gonglixx')->select();

        // var_dump($data);
        return $data;
    }

}
