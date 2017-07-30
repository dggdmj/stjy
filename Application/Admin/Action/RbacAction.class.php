<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class RbacAction extends CommonAction {

    /**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $data = array('info' => array('name' => '会员管理',
            'description' => ' 管理会员列表',
        ),
            'menu' => array(
                array('name' => '用户列表',
                    'url' => url('Rbac/index'),
                    'icon' => 'list',
                ),
            ),
            'add' => array(
                array('name' => '添加用户',
                    'url' => url('Rbac/addUser'),
                ),
                array('name' => '添加角色',
                    'url' => url('Rbac/addRole'),
                ),
                array('name' => '添加节点',
                    'url' => url('Rbac/addNode'),
                ),
            ),
        );
        return $data;
    }

	// 用户列表
	public function index() {
		$this->user=D('User')->field('password',true)->relation(true)->select();
		$this->adminDisplay();
	}
	//添加用户页面
	public function addUser() {
		$this->role=M('role')->select();
		$this->adminDisplay();
	}
	//处理添加、修改用户
	public function addUserHandle() {
		if(empty($_GET['id'])) { //添加
			$user=array(
				'username' => $_POST['username'],
				'nicename' => $_POST['nicename'],
				'email' => $_POST['email'],
				'password' => I('password','','md5'),
				'logintime' => time(),
				'lock' => $_POST['lock'],
				'loginip' => get_client_ip(),
			);
			$role=array();
			if($uid=M('admin')->add($user)) {
				foreach($_POST['role_id'] as $v) {
					$role[]=array(
						'role_id' => $v,
						'user_id' => $uid
					);
				}
				M('role_user')->addAll($role);
				$this->success('添加成功',U('index'));	
			}else{
				$this->error('添加失败');
			}
		}
		else { //修改
			$arr=M('admin')->where(array('id'=>$_GET['id']))->find();
			$pwd=$_POST['password']?I('password','','md5'):$arr['password']; //是否输入新密码
			$user=array(
				'username' => $_POST['username'],
				'nicename' => $_POST['nicename'],
				'email' => $_POST['email'],
				'password' => $pwd,
				'logintime' => time(),
				'lock' => $_POST['lock'],
				'loginip' => get_client_ip(),
			);
			$role=array();
			if(M('admin')->where(array('id'=>$_GET['id']))->save($user)) {
				M('role_user')->where(array('user_id'=>$_GET['id']))->delete();
				foreach($_POST['role_id'] as $v) {
					$role[]=array(
						'role_id' => $v,
						'user_id' => $_GET['id']
					);
				}
				M('role_user')->addAll($role);
				$this->success('修改成功',U('index'));	
			}else{
				$this->error('修改失败');
			}
		}
	}
	//修改用户页面
	public function editUser() {
		$id = $_GET['id'];
		$this->user=D('User')->field('password',true)->relation(true)->where(array('id'=>$id))->find();
		$this->role=M('role')->select();
		$this->adminDisplay('addUser');
	}
	//删除
	public function deleteUser() {
		$id=$_GET['id'];
		if(M('admin')->delete($id)) {
			M('role_user')->where(array('user_id'=>$id))->delete();
			$this->success('删除成功');
		} else {
			$this->error('删除失败');
		}
	}
	
	

	// 角色列表
	public function roleList() {
		$this->role = M('role')->select();
		$this->adminDisplay();
	}
	// 添加角色页面
	public function addRole() {
		$this->adminDisplay();
	}
	// 添加、修改角色表单处理
	public function addRoleHandle() {
		if(empty($_GET['id'])) {
			if (M('role')->add($_POST)) {
				$this->success('添加成功',U('roleList'));
			} else {
				$this->error('添加失败');
			}
		}
		else {
			M('role')->where(array('id'=>$_GET['id']))->save($_POST);
			$this->success('修改成功',U('roleList'));
		}
	}
	//修改角色页面
	public function editRole() {
		$id = $_GET['id'];
		$this->role=M('role')->where(array('id'=>$id))->find();
		$this->adminDisplay('addRole');
	}
	//删除角色页面
	public function deleteRole() {
		$id=$_GET['id'];
		if(M('role')->delete($id)) {
			$this->success('删除成功');
		} else {
			$this->error('删除失败');
		}
	}
	
	
	
	
	// 节点列表
	public function nodeList() {	
		$node=M('node')->order('sort')->select();
		$this->node=node_unlimitedForLevel($node);
		$this->adminDisplay();
	}
	// 添加节点页面
	public function addNode() {
		$this->pid=I('pid',0,'intval');
		$this->level=I('level',1,'intval');
		switch($this->level) {
			case 1:
				$this->type='应用';
				break;
			case 2:
				$this->type='控制器';
				break;
			case 3:
				$this->type='动作方法';
				break;
		}
		$this->adminDisplay();
	}
	// 添加、修改节点表单
	public function addNodeHandle() {
		if(empty($_GET['id'])) {
			if (M('node')->add($_POST)) {
				$this->success('添加成功',U('nodeList'));
			} else {
				$this->error('添加失败');
			}
		}
		else {
			M('node')->where(array('id'=>$_GET['id']))->save($_POST);
			$this->success('修改成功',U('nodeList'));
		}
	} 
	//修改节点页面
	public function editNode() {
		$id = $_GET['id'];
		$this->node=M('node')->where(array('id'=>$id))->find();
		switch($this->node['level']) {
			case 1:
				$this->type='应用';
				break;
			case 2:
				$this->type='控制器';
				break;
			case 3:
				$this->type='动作方法';
				break;
		}
		$this->adminDisplay('addNode');
	}
	//删除节点页面
	public function deleteNode() {
		$id=$_GET['id'];
		$node=M('node')->select();
		$arr=node_getChildsId($node,$id);
		if(!empty($arr)) {
			$this->error('请先删除子节点');
		}
		else {
			if(M('node')->delete($id)) {
				$this->success('删除成功');
			} else {
				$this->error('删除失败');
			}
		}
	}
	public function sortNode(){
		$db=M('node');
		foreach($_POST as $id => $sort) {
			$db->where(array('id'=>$id))->setField('sort',$sort);
		}
		$this->redirect('Rbac/nodeList');
	}
	
	//配置权限
	public function access() {
		$rid=I('rid',0,'intval');
		$field=array('id','name','title','pid');
		$node=M('node')->order('sort')->field($field)->select();
		//原有权限
		$access=M('access')->where(array('role_id'=>$rid))->getField('node_id',true);
		$this->node=node_merge($node,$access);
		$this->rid=$rid;
		$this->adminDisplay();
	}
	//修改权限
	public function setAccess() {
		$rid=I('rid',0,'intval');
		$db=M('access');
		//清空原权限
		$db->where(array('role_id'=>$rid))->delete();
		//组合新权限
		$data=array();
		foreach($_POST['access'] as $v) {
			$tmp=explode('_',$v);
			$data[]=array(
				'role_id' => $rid,
				'node_id' => $tmp[0],
				'level' => $tmp[1],
			);
		}
		//插入新权限 
		if(empty($data)||$db->addAll($data)) {
			$this->success('修改成功',U('roleList'));
		}else {
			$this->error('修改失败');
		}
	}
}
