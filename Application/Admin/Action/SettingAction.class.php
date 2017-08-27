<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class SettingAction extends CommonAction{
	/**
     * 当前模块参数
     */
    public function _infoModule()
    {
    	$this->class = M('class')->order('id desc')->select();
        $data = array('info' => array('name' => '网站设置',
            'description' => '网站设置',
        ),
            'menu' => array(
                array('name' => '校区列表',
                    'url' => url('Setting/School'),
                    'icon' => 'list',
                ),
                array('name' => '期数列表',
                    'url' => url('Setting/Qishu'),
                    'icon' => 'list',
                ),
                array('name' => '人事列表',
                    'url' => url('Setting/Renshi'),
                    'icon' => 'list',
                ),
            ),
            'add' => array(
                array('name' => '添加校区',
                    'url' => url('Setting/School_add'),
                ),
                array('name' => '添加期数',
                    'url' => url('Setting/Qishu_add'),
                ),
                array('name' => '添加人事',
                    'url' => url('Setting/Renshi_add'),
                ),
            ),
        );
        return $data;
    }

	//校区列表页
	public function school(){
		$data = M('school'); // 实例化对象
		$list = $data->order('id desc')->select();
		$this->assign('list',$list);// 赋值数据集
		$this->adminDisplay();
	}

	//添加校区页面
	public function school_add(){
		$this->adminDisplay();
	}

    //添加校区
    public function addSchool(){
        if(empty($_GET['id'])) {
            if($bid=M('school')->add($_POST)) {
                $this->success('添加成功',U('School'));
            } else {
                $this->error('添加失败');
            }
        }
        else {
            $bid=$_GET['id'];
            if(M('school')->where(array('id'=>$bid))->save($_POST)) {
                $this->success('修改成功',U('School'));
            } else {
                $this->error('修改失败');
            }
        }
    }

    // 修改校区
    public function editSchool() {
        $id = $_GET['id'];
        $this->list=D('School')->where(array('id'=>$id))->find();
        $this->adminDisplay('school_add');
    }


    //期数列表页
    public function qishu(){
        $data = M('qishu'); // 实例化对象
        $list = $data->order('id desc')->select();
        $this->assign('list',$list);// 赋值数据集
        $this->adminDisplay();
    }

    //添加期数页面
    public function qishu_add(){
        $this->adminDisplay();
    }

    //添加期数
    public function addQishu(){
        if(empty($_GET['id'])) {
            if($bid=M('qishu')->add($_POST)) {
                $this->success('添加成功',U('qishu'));
            } else {
                $this->error('添加失败');
            }
        }
        else {
            $bid=$_GET['id'];
            if(M('qishu')->where(array('id'=>$bid))->save($_POST)) {
                $this->success('修改成功',U('qishu'));
            } else {
                $this->error('修改失败');
            }
        }
    }

    // 修改期数
    public function editQishu() {
        $id = $_GET['id'];
        $this->list=D('qishu')->where(array('id'=>$id))->find();
        $this->adminDisplay('qishu_add');
    }

    //人事列表页
    public function renshi(){
        $data = M('renshi'); // 实例化对象
        $list = $data->order('id desc')->select();
        $this->assign('list',$list);// 赋值数据集
        $this->adminDisplay();
    }

    //添加校区页面
    public function renshi_add(){
        $this->adminDisplay();
    }

    //添加校区
    public function addRenshi(){
        if(empty($_GET['id'])) {
            if($bid=M('renshi')->add($_POST)) {
                $this->success('添加成功',U('renshi'));
            } else {
                $this->error('添加失败');
            }
        }
        else {
            $bid=$_GET['id'];
            if(M('renshi')->where(array('id'=>$bid))->save($_POST)) {
                $this->success('修改成功',U('renshi'));
            } else {
                $this->error('修改失败');
            }
        }
    }

    // 修改校区
    public function editRenshi() {
        $id = $_GET['id'];
        $this->list=D('renshi')->where(array('id'=>$id))->find();
        $this->adminDisplay('renshi_add');
    }

    //彻底删除
    public function delete() {
        $id=(int)$_GET['id'];
        $tablename = $_GET['table'];
        if(M($tablename)->delete($id)) {
            $this->success('删除成功');
        }else {
            $this->error('删除失败');
        }
    }
}
?>
