<?php
namespace Admin\Action;
use Think\Action;
use Org\Util\Rbac;

class MbLoginAction extends Action {
	
    public function index(){
	
		$strUserInfo = md5("test_123456789");
		
		$cookieUserInfo = cookie('cookieUserInfo');
		
		if($cookieUserName!=""){
			if($strUserInfo == $cookieUserInfo){
				//$this->success("登录成功！",'',5);
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
				cookie('cookieUserInfo',$strUserInfo,(time()+86400)*30);
				$this->redirect('/MbLogin/showZijin');
			}else{
				$this->error("您输入的用户名或密码错误，请检查！");
			}
		}else{
			$this->display();
		}
		
    }
	
	public function showZijin(){
		echo "登录成功！！！";
	}
	

	public function logout(){
        cookie('cookieUserInfo',null);
		$this->redirect('/MbLogin/');
    }
	
}