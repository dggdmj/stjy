<?php
namespace Admin\Action;
use Think\Action;
use Org\Util\Rbac;
class LoginAction extends Action {
	
    public function index(){
        $this->display();
    }

    //生成验证码
    public function verify() {
    	$config = array(
        	'fontSize' => 30,      // 验证码字体大小
        	'length' => 4,         // 验证码位数
            'imageW' => 190,       // 验证码宽度
            'imageH' => 34,        // 验证码高度
        	'useNoise' => false,   // 关闭验证码杂点
            'useCurve' => false,   // 是否使用混淆曲线 默认为true
            'useNoise' => false,   // 是否添加杂点 默认为true
            'fontSize' => 18,      // 验证码字体大小（像素） 默认为25
    	);
    	$Verify = new \Think\Verify($config);
    	$Verify->entry();
    }

    /**
    * 用户登陆检测
    */
    public function login() {
    	if (!IS_POST) $this->error('页面不存在!');
    	$username = I('username');
    	$password = I('password','','md5');
    	$user = M('admin')->where(array('username' => $username))->find();
    	if (!$user || $user['password'] != $password) {
    		$this->error('账号或密码错误!');
    	}
        //判断验证码是否正确
        $Verify = new \Think\Verify();
        if(!$Verify->check(I('code'))) {
            $this->error('验证码错误！',U('/Login/index'));
        }
        
    	if ($user['lock']) $this->error('用户已锁定');

    	$data = array(
    		'id' => $user['id'],
    		'logintime' => time(),
    		'loginip' => get_client_ip(),
    	);
    	M('admin')->save($data);
    	session(C('USER_AUTH_KEY'), $user['id']);
        session('username', $user['username']);
    	session('logintime', date('Y-m-d H:i:s', $data['logintime']));
    	session('loginip', $user['loginip']);

		//超级管理员识别
		if($user['username']==C('RBAC_SUPERADMIN')) {
			session(C('ADMIN_AUTH_KEY'),true);
		}
		//读取用户权限
		RBAC::saveAccessList();

    	$this->redirect('/Index/index');
    }

    /**
    * 退出登陆
    */
    public function logout() {
        session_unset();
        session_destroy();
        $this->redirect('/Login/index');
    }
}