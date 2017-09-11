<?php
namespace Admin\Action;
use Think\Action;
class AdminUserAction extends CommonAction {
	/**
     * 当前模块参数
     */
    protected function _infoModule(){
        return array(
            'info'  => array(
                'name' => '用户管理',
                'description' => '管理网站后台管理员',
                ),
            'menu' => array(
                    array(
                        'name' => '用户列表',
                        'url' => url('AdminUser/edit'),
                        'icon' => 'list',
                    ),
                ),
            'add' => array(
                    array(
                        'name' => '添加用户',
                        'url' => url('add'),
                    ),
                ),
            );
    }

    /**
     * 修改管理员
     */
    public function edit() {
    	$adminId = $_SESSION['uid'];	// 获取管理员ID
		if(empty($adminId)){
            $this->error('参数不能为空！');
        }
    	if (!IS_POST) {
            $this->assign('name','修改');
    		// 根据管理员ID查询用户信息
    		$info = M('Admin')->field('id,username,nicename,email,lock')->find($adminId);
    		$this->assign('info',$info);
    		$this->adminDisplay();
    	} else {
            if ($_POST['password'] == '' or $_POST['password2'] == '') {
                $this->error('密码不能为空！');
            }
    		if ($_POST['password'] != $_POST['password2']) {
    			$this->error('用户密码不匹配！');
    		} else {
                // MD5加密
    			$_POST['password'] = MD5($_POST['password']);
    			if(M('Admin')->where(array('id'=>$adminId))->save($_POST)){
	                $this->success('用户修改成功！');
	            }else{
	                $this->error('用户修改失败');
	            }
    		}
    	}
    }
}