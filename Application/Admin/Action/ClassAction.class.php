<?php
namespace Admin\Action;
use Think\Action;
class ClassAction extends CommonAction {
    /**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $data = array('info' => array('name' => '案例分类管理',
            'description' => ' 管理网站案例分类',
        ),
            'menu' => array(
                array('name' => '分类列表',
                    'url' => url('Class/index'),
                    'icon' => 'list',
                ),
            ),
            'add' => array(
                array('name' => '添加分类',
                    'url' => url('Class/addClass'),
                ),
            ),/*
            'edit' => array(
                array('name' => '修改内容',
                    'url' => url('SingleMember/Edit'),
                ),
            ),*/

        );
        return $data;
    }
	
    /**
     * 列表
     */
    public function index()
    {
        $this->classes=M('class')->order('sort')->select();
        $this->adminDisplay();
    }
	/**
     * 添加
     */
	public function addClass(){
        $this->adminDisplay();
	}
	public function runAddClass(){
		if(empty($_GET['id'])) {
			if(M('class')->add($_POST)) {
				$this->success('添加成功',U('index'));
			}else {
				$this->error('添加失败');
			}
		}
		else {
			M('class')->where(array('id'=>$_GET['id']))->save($_POST);
			$this->success('修改成功',U('index'));
		}
	}
	
	public function delete() {
		
		if ($_GET['id']==3 or $_GET['id']==4  or $_GET['id']==7 or  $_GET['id']==8 or $_GET['id']==9 or $_GET['id']==10){
			
			$this->error('该分类不能删除');
			exit();
		}
		
		if(M('class')->delete($_GET['id'])) {
			$this->success('删除成功');
		} else {
			$this->error('删除失败');
		}
	}
	public function edit() {
		$this->classes=M('class')->where(array('id'=>$_GET['id']))->find();
		$this->adminDisplay('addClass');
	}
}