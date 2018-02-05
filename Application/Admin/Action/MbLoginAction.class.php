<?php
namespace Admin\Action;
use Think\Action;
use Org\Util\Rbac;

class MbLoginAction extends Action {
	

    public function index(){
		$cookieUserInfo = cookie('cookieUserInfo');
		
		if($cookieUserInfo!=""){
			if($this->checkLogin()){
				$this->redirect('/MbLogin/showZijin');
			}else{
				$this->error("您输入的用户名或密码错误，请检查！");
			}
		}else{
			$this->display();
		}
    }

	public function login(){
        
		$strUserInfo = md5("test_123456789");
		
		$cookieUserName = $_POST['username'];
		$cookiePassword = $_POST['password'];
		
		if($cookieUserName!=""){
			$cookieUserInfo = md5($cookieUserName."_".$cookiePassword);
			if($strUserInfo == $cookieUserInfo){
				cookie('cookieUserInfo',$strUserInfo,86400*30);
				$this->redirect('/MbLogin/showZijin');
			}else{
				$this->error("您输入的用户名或密码错误，请检查！");
			}
		}else{
			$this->display();
		}
		
    }
	
	public function showZijin(){
		$this->checkLogin();
		if($this->checkLogin()){
			echo "登录成功！！！";
		}else{
			$this->error("您还没有登录，请返回登录界面！");
		}
	}
	

	public function logout(){
        cookie('cookieUserInfo',null);
		$this->redirect('/MbLogin/');
    }
	
	
	
	public function checkLogin(){
		$strUserInfo = md5("test_123456789");
		$cookieUserInfo = cookie('cookieUserInfo');

		if($strUserInfo == $cookieUserInfo){
			return true;
		}else{
			return false;
		}
	}

}