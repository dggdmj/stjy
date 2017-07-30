<?php
namespace Admin\Action;
use Think\Action;
class CaseSortAction extends CommonAction {
    /**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $data = array('info' => array('name' => '作品分类管理',
            'description' => ' 管理网站作品分类',
        ),
            'menu' => array(
                array('name' => '作品分类',
                    'url' => url('CaseSort/index'),
                    'icon' => 'list',
                ),
            ),
            'add' => array(
                array('name' => '添加作品',
                    'url' => url('CaseSort/add'),
                ),
            ),
        );
        return $data;
    }
	
    /**
     * 列表
     */
    public function index()
    {
        $this->caseSort=M('caseSort')->order('sort')->select();
        $this->adminDisplay();
    }
	/**
     * 添加
     */
	public function add(){
        $this->adminDisplay();
	}
	public function runAdd(){
		if(empty($_GET['id'])) {
			if(M('caseSort')->add($_POST)) {
				$this->success('添加成功',U('index'));
			}else {
				$this->error('添加失败');
			}
		}
		else {
			M('caseSort')->where(array('id'=>$_GET['id']))->save($_POST);
			$this->success('修改成功',U('index'));
		}
	}
	
	public function delete() {
		
		if ($_GET['id']==13 or $_GET['id']==15 ){
				
			$this->error('该分类不能删除');
			exit();
		}
		if(M('caseSort')->delete($_GET['id'])) {
			$this->success('删除成功');
		} else {
			$this->error('删除失败');
		}
	}
	public function edit() {
		$this->classes=M('caseSort')->where(array('id'=>$_GET['id']))->find();
		$this->adminDisplay('add');
	}
}