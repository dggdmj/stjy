<?php
namespace Admin\Model;
use Think\Model;
class AdminLogModel extends Model {
    /**
     * 获取列表
     * @return array 列表
     */
    public function loadList($where = array(), $limit = 0){
        $data = $this->table('admin_log as A')
                ->join('{pre}admin_user as B ON A.user_id = B.user_id')
                ->field('A.*,B.username')
                ->where($where)
                ->limit($limit)
                ->order('A.log_id desc')
                ->select();
        return $data;

    }
}