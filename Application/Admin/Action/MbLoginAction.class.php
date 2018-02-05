<?php
namespace Admin\Action;
use Think\Action;
use Org\Util\Rbac;

class MbLoginAction extends Action {
	
    public function index(){
		
		$strUserName = "test";
		$strPassword = md5("123456789");
		
		$cookieUserName = cookie('cookieUserName');
		$cookiePassword = cookie('cookiePassword');
		
		if($cookieUserName!=""){
			if($strUserName == $cookieUserName && $strPassword == $cookiePassword){
				$this->success("登录成功！",'',5);
				$this->redirect('/MbLogin/showZijin');
			}else{
				$this->error("您输入的用户名或密码错误，请检查！");
			}
		}else{
			$this->display();
		}
    }

	public function login(){
        
		$strUserName = "test";
		$strPassword = md5("123456789");
		
		$cookieUserName = $_POST['username'];
		$cookiePassword = md5($_POST['password']);
		
		if($cookieUserName!=""){
			if($strUserName == $cookieUserName && $strPassword == $cookiePassword){
				cookie('cookieUserName',$cookieUserName,(time()+86400)*30);
				cookie('cookiePassword',$cookiePassword,(time()+86400)*30);
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
        cookie('cookieUserName',null);
		cookie('cookiePassword',null);
		$this->redirect('/MbLogin/');
    }
	
}