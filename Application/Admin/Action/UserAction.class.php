<?php
namespace Admin\Action;
use Think\Action;
class UserAction extends CommonAction {
	/**
     * 当前模块参数
     */
    protected function _infoModule(){
        return array(
            'info'  => array(
                'name' => '用户管理',
                'description' => '管理网站用户',
                ),
            'menu' => array(
                    array(
                        'name' => '用户列表',
                        'url' => url('User/index'),
                        'icon' => 'list',
                    ),
                ),
//            'add' => array(
//                    array(
//                        'name' => '添加用户',
//                        'url' => url('add'),
//                    ),
//                ),
            );
    }

    /**
     * 会员列表
     */
    public function index() {
        $data = M('w_user'); // 实例化service_order对象
        $count = $data->count();// 查询满足要求的总记录数
        $Page = new \Think\Page($count,15);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $list = $data->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        //查找宝宝信息
        foreach ($list as $k=>$v){
            $list[$k]["binfo"] = M("baby_info")->where("pid = '".$v['openid']."'")->find();
        }
        $this->assign('list',$list);// 赋值数据集
        $this->assign('pages',$show);// 赋值分页输出
        $this->adminDisplay();
    }
}