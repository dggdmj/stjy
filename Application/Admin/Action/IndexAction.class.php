<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class IndexAction extends CommonAction {

	/**
     * 当前模块参数
     */
	protected function _infoModule(){
		return array(
            'info' => array(
                    'name' => '管理首页',
                    'description' => '站点运行信息',
                )
        );
	}

    /**
    * 网站首页
    */
    public function index(){
        // 加载菜单列表
        $Menu = new \Admin\Model\MenuModel();
        $menuList = $Menu->getMenu();
        $this->assign('menuList',json_encode($menuList));
        // 进入首页
        $this->display();
    }

    public function common(){
        $this->display();
    }

    /**
     * 欢迎页面
     */
	public function home(){
        //访问量
        echo phpinfo();die;
        $todayTime= mktime(0,0,0,date("m"),date("d"),date("Y"));
        $yesterdayTime= $todayTime - 86400;
        $map['time']  = array('between',$yesterdayTime.','.$todayTime);
        $this->todayViewer = M("log")->where('time>'.$todayTime)->count();
        $this->yesterdayViewer = M("log")->where($map)->count();
        $this->totalViewer = M("log")->count();

        $this->adminDisplay();
    }
    
}