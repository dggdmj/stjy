<?php 
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class ArticleRecycleAction extends CommonAction{

	/**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $data = array('info' => array(
        	'name' => '文章回收站',
            'description' => ' 管理网站文章回收站',
        ),
            'menu' => array(
                array('name' => '回收站列表',
                    'url' => url('ArticleRecycle/index'),
                    'icon' => 'list',
                ),
            )
        );
        return $data;
    }

    /**
     * 批量还原文章
     */
    public function allUpdate() {
    	$ids = I('id');
		$data = M("article")->where(array('id'=>array('in',$ids)))->setField('del',0);
		if ($data) {
			$this->success('文章批量还原成功!');
		} else {
			$this->error('文章批量还原失败');
		}
    }
	
	// 删除/还原
	public function toTrash(){
		$type=(int)$_GET['type'];
		$msg=$type?'删除':'还原';
		$update=array(
			'id'=>(int)$_GET['id'],
			'del'=>$type,
		);
		if(M('article')->save($update)) {
			$this->success($msg.'文章成功！');
		}else {
			$this->error($msg.'失败');
		}	
	}
	
	//回收站页
	public function index(){
		$this->article=D('Article')->getArticles(1);
		$this->adminDisplay('index');
	}

	//彻底删除
	public function delete() {
		$id=(int)$_GET['id'];
		if(M('article')->delete($id)) {
			M('article_attr')->where(array('bid'=>$id))->delete();
			$this->success('还原文章删除成功');
		}else {
			$this->error('删除失败');
		}
	}

	/**
     * 批量彻底删除
     */
    public function allDelete() {
		$ids = I('id');
		$data = M("article")->where(array('id'=>array('in',$ids)))->delete();
		if ($data) {
			$this->success('文章批量删除成功');
		} else {
			$this->error('文章批量删除失败');
		}
    }

}
?>