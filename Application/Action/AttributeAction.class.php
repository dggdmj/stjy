<?php 
namespace Admin\Action;
use Think\Action;
class AttributeAction extends CommonAction{
	/**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $data = array('info' => array('name' => '属性列表',
            'description' => ' 管理网站属性列表',
        ),
            'menu' => array(
                array('name' => '属性列表',
                    'url' => url('Attribute/index'),
                    'icon' => 'list',
                ),
            ),
            'add' => array(
                array('name' => '添加属性',
                    'url' => url('Attribute/addAttr'),
                ),
            ),
        );
        return $data;
    }
	
	public function index(){
		$this->attr=M('attr')->select();
		$this->adminDisplay();
	}

	public function addAttr(){
		$this->adminDisplay();
	}

	public function runAddAttr(){
		if(empty($_GET['id'])) {
			if(M('attr')->add($_POST)) {
				$this->success('添加属性成功',U('index'));
			}else {
				$this->error('添加属性失败');
			}
		}
		else {
			M('attr')->where(array('id'=>$_GET['id']))->save($_POST);
			$this->success('修改属性成功',U('index'));
		}
	}

	public function delete() {
		$id=I('id','','intval');
		if(M('attr')->delete($id)) {
			M('article_attr')->where(array('aid'=>$id))->delete();
			$this->success('删除属性成功');
		} else {
			$this->error('删除属性失败');
		}
	}

	public function edit() {
		$id=I('id','','intval');
		$this->attr=M('attr')->where(array('id'=>$id))->find();
		$this->adminDisplay('addAttr');
	}
}
?>