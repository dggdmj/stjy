<?php
namespace Admin\Action;
use Think\Action;
class SinglePageAction extends CommonAction {
    /**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $data = array('info' => array('name' => '单页管理',
            'description' => ' 管理网站单页内容',
        ),
            'menu' => array(
                array('name' => '单页列表',
                    'url' => url('SinglePage/index'),
                    'icon' => 'list',
                ),
            ),
            'add' => array(
                array('name' => '添加单页',
                    'url' => url('SinglePage/addPage'),
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
        $this->page=M('SinglePage')->order('sort')->select();
        $this->adminDisplay();
    }
	/**
     * 添加
     */
	public function addPage(){
        $this->adminDisplay();
	}
	public function runAddPage(){
		if(empty($_GET['id'])) {
			if(M('single_page')->add($_POST)) {
				$this->success('添加成功',U('index'));
			} else {
				$this->error('添加失败');
			}
		}
		else {
			M('single_page')->where(array('id'=>$_GET['id']))->save($_POST);
			$this->success('修改成功',U('index'));	
		}
	}
	public function delete() {
		$id = $_GET['id'];
		if ($id==7){
			
			$this->error('该页面不能删除');
		}
		if(M('single_page')->delete($id)) {
			$this->success('删除成功');
		} else {
			$this->error('删除失败');
		}
	}
	public function edit() {
		$this->page=M('SinglePage')->where(array('id'=>$_GET['id']))->find();
		$this->adminDisplay('addPage');
	}
}