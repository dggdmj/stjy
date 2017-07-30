<?php
/**
 * Created by Lf.
 * User: Administrator
 * Date: 2015/8/4
 * Time: 15:17
 */
namespace Admin\Action;
use Think\Action;
class PositionAction extends CommonAction {
    /**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $data = array('info' => array('name' => '广告位管理',
            'description' => ' 管理网站广告位',
        ),
            'menu' => array(
                array('name' => '广告列表',
                    'url' => url('Position/index'),
                    'icon' => 'list',
                ),
            ),
            'add' => array(
                array('name' => '添加广告',
                    'url' => url('Position/add'),
                ),
            ),
        );
        return $data;
    }

    public function index() {
        $this->position=M('position')->order('sort')->select();
        $this->adminDisplay();
    }

    public function add() {
        $this->adminDisplay();
    }

    public function runAdd() {
        if(empty($_GET['id'])) {
            if(M('position')->add($_POST)) {
                $this->success('添加成功',U('index'));
            } else {
                $this->error('添加失败');
            }
        }
        else {
            M('position')->where(array('id'=>$_GET['id']))->save($_POST);
            $this->success('修改成功',U('index'));
        }
    }

    public function edit() {
        $this->info=M('position')->where('id='.$_GET['id'])->find();
        $this->adminDisplay('add');
    }

    public function delete() {
        $id = $_GET['id'];
        if(M('position')->delete($id)) {
            $this->success('删除成功');
        } else {
            $this->error('删除失败');
        }
    }


}