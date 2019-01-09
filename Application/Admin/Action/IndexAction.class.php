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
        // dump($menuList);exit;
        $this->assign('menuList',json_encode($menuList));

        //获取当前角色拥有的所有校区id
        $school_id = M('admin')->where(array('id'=>session('uid')))->getField('school_id');
        $school = M("school")->field("id,name,subname")->where(array('id'=>array('in',$school_id),'isuse'=>1))->select();
        $sid = session('sid');
        $school_name = M('school')->field('name')->where(array('id'=>array('in',$sid)))->select();
        $xuexiao = array();
        foreach($school_name as $val){
            $xuexiao[] = $val['name'];
        }
        if(count($xuexiao) == 1){
            $xuexiao = $xuexiao['0'];
        }else{
            $xuexiao = count($xuexiao);
        }
        
        $sid = explode(',',$sid);
        $this->assign('school',$school);
        $this->assign('xuexiao',$xuexiao);
        $this->assign('sid',$sid);
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
//        echo phpinfo();die;
        $todayTime= mktime(0,0,0,date("m"),date("d"),date("Y"));
        $yesterdayTime= $todayTime - 86400;
        $map['time']  = array('between',$yesterdayTime.','.$todayTime);
        $this->todayViewer = M("log")->where('time>'.$todayTime)->count();
        $this->yesterdayViewer = M("log")->where($map)->count();
        $this->totalViewer = M("log")->count();

        $this->adminDisplay();
    }

    //切换分校
    public function qihuan(){
        $sid = I('sid');
        if (!$sid){
            $this->error('请选择要切换的分校',U('index/index'));
            exit;
            // $result['info'] = '请选择要切换的分校';
        }
        $sid = implode(',',$sid);
        session('sid',$sid);
        $this->success('切换成功',U('index/index'));
    }
    
}