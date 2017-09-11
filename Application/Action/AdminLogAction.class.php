<?php
namespace Admin\Action;
use Think\Action;
class AdminLogAction extends CommonAction {
	/**
     * 当前模块参数
     */
    protected function _infoModule(){
        return array(
            'info'  => array(
                'name' => '安全记录',
                'description' => '查询网站操作记录',
                ),
            'menu' => array(
                    array(
                        'name' => '记录列表',
                        'url' => url('AdminLog/index'),
                        'icon' => 'list',
                    ),
                )
            );
    }

    /**
     * 安全记录
     */
    public function index() {
        $username = $_SESSION['username'];
        $list = M('admin_log')->loadList();
        p($list);
        $this->assign('list',$list);
    	$this->adminDisplay();
    }

}