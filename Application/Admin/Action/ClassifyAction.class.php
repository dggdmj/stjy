<?php
namespace Admin\Action;
use Think\Action;
class ClassifyAction extends CommonAction {
	/**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $data = array('info' => array('name' => '栏目列表',
            'description' => '管理网站全部栏目',
        ),
            'menu' => array(
                array('name' => '栏目列表',
                    'url' => url('Classify/index'),
                    'icon' => 'list',
                ),
            ),
            'add' => array(
                array('name' => '添加分类',
                    'url' => url('Classify/addCate'),
                ),
            )
        );
        return $data;
    }
	
    public function index()
    {
		$cate=M('classify')->order('sort ASC')->select();
        $this->cate=unlimitedForLevel($cate);
        $this->adminDisplay();
    }

	public function addCate()
    {
		$pid = I('pid',0,'intval');
        $this->name="添加";
		if($pid==0) {
			$this->type='控制器';
		}else{
			$this->type='动作方法';
		}
		$this->pid = $pid;
		$this->adminDisplay();
    }

	public function runAddCate(){
		if(empty($_GET['id'])) {
			if(M('classify')->add($_POST)) {
				$this->success('添加成功',U('index'));
			} else {
				$this->error('添加失败');
			}
		}
		else {
			$classify = M('classify');
			$data = $classify->where(array('id'=>$_GET['id']))->save($_POST);
			if ($data) {
				$this->success('修改成功',U('index'));
			} else {
				$this->error('修改失败',U('index'));
			}
			
		}
	}

	public function sortCate(){
		$db=M('classify');
		foreach($_POST as $id => $sort) {
			$db->where(array('id'=>$id))->setField('sort',$sort);
		}
		$this->redirect('Classify/index');
	}

	public function delete() {
		$id = $_GET['id'];
		
		$cate=M('classify')->select();
        $arr=getChildsId($cate,$id);
		
		if(!empty($arr)) {
			$this->error('请先删除子分类');
		}
		else {
			if(M('classify')->delete($id)) {
				$this->success('删除成功');
			} else {
				$this->error('删除失败');
			}
		}
	}

	public function edit() {
		$id = $_GET['id'];
		$cate=M('classify')->where(array('id'=>$id))->find();
		$pid=$cate['pid'];
		if($pid==0) {
			$this->type='控制器';
		}else{
			$this->type='动作方法';
		}
        $this->name="修改";
		$this->info=$cate;
		$this->adminDisplay('addCate');
	}
	
}
?>