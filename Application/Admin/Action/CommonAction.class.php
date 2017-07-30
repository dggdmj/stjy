<?php
namespace Admin\Action;
use Think\Action;
use Org\Util\Rbac;
class CommonAction extends Action {
	
	protected function _initialize() {
		/*
		if (!isset($_SESSION['uid']) || !isset($_SESSION['username'])) {
			$this->redirect('Admin/Login/index');
		}
		*/
		if(!isset($_SESSION[C('USER_AUTH_KEY')])) {
			$this->redirect('Login/index');
		}
		$notAuth=in_array(MODULE_NAME,explode(',',C('NOT_AUTH_MODULE')))||in_array(ACTION_NAME,explode(',',C('NOT_AUTH_ACTION')));
		if(C('USER_AUTH_ON')&&!$notAuth) {
			RBAC::AccessDecision()||$this->error('没有权限');
		}
		if(!(APP_NAME == 'admin' && CONTROLLER_NAME == 'Login')){
			//赋值当前菜单
	        if(method_exists($this,'_infoModule')){
	            $this->infoModule = $this->_infoModule();
	        }
    	}
	}

	/**
     * 后台模板显示 调用内置的模板引擎显示方法，
     * @access protected
     * @param string $tpl 指定要调用的模板文件
     * @return void
     */
    protected function adminDisplay($tpl = '') {
        //复制当前URL
        $this->assign('self',__SELF__);
        $common = $this->fetch('common');
        $tplArray = get_method_array($tpl);
        $tpl = $tplArray['controller'] . '/' . $tplArray['action'];
        $html = $this->fetch($tpl);
        echo str_replace('<!--common-->', $html, $common);
    }

    /**
     * 图片上传
     * @access protected
     * @param string void
     * @return void
     */
    function uploads() {
        $config = array(
            'maxSize' => 3145728,    // 设置附件上传大小
            'exts' => array('jpg', 'gif', 'png', 'jpeg'),    // 设置附件上传类型
        );
        $upload = new \Think\Upload($config);// 实例化上传类

        // 上传文件
        $info   =   $upload->uploadOne($_FILES['file']);
        if(!$info) {	// 上传错误提示错误信息
            $return['status'] = 0;
            $return['info'] = $this->Error();
        }else{	// 上传成功
            //$this->success('站点配置成功！');
            $return['status'] = 1;
            $return['path'] = $info['savepath'].$info['savename'];
        }
        $this->ajaxReturn($return);
    }
    
}