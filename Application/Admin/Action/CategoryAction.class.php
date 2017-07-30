<?php
/**
 * Created by Liaofei.
 * User: Administrator
 * Date: 2015/5/29
 * Time: 14:16
 */
namespace Admin\Action;
use Think\Action;
class CategoryAction extends CommonAction {
    /**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $data = array('info' => array('name' => '栏目管理',
            'description' => ' 管理网站全部栏目',
        ),
            'menu' => array(
                array('name' => '内容列表',
                    'url' => url('Category/index'),
                    'icon' => 'list',
                ),
            ),
            'add' => array(
                array('name' => '添加内容',
                    'url' => url('Category/addCate'),
                ),
            ),/*
            'edit' => array(
                array('name' => '修改内容',
                    'url' => url('Category/Edit'),
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
        $breadCrumb = array('栏目列表' => url());
        $this->assign('breadCrumb', $breadCrumb);
        $this->assign('list',M('Category')->select());
        $this->adminDisplay();
    }
	
	/**
     * 添加
     */
	public function addCate(){
        $this->adminDisplay();
	}
	public function runAddCate(){
        if(M('category')->add($_POST)) {
			$this->success('添加成功',U('index'));
		}else {
			$this->error('添加失败');
		}
	}

    /**
     * 修改
     */
    public function edit() {
        if (!IS_POST) {
            $breadCrumb = array('页面列表'=>url('duxcms/AdminCategory/index'),'页面修改'=>url());
            $this->assign('breadCrumb',$breadCrumb);
            $this->assign('name','修改');
            $this->assign('info',M('category_page')->find($_GET['class_id']));
            $this->adminDisplay();
        } else {
            $page = M('Category_page');
            $data['content'] = $_POST['content'];
            if ($page->where(array('class_id'=>$_POST['class_id']))->save($data)) {
                $this->success('修改页面成功！');
            } else {
                $this->error('修改页面失败！');
            }
        }
    }
}