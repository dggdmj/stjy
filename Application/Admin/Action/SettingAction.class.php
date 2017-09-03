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
                array('name' => '部门列表',
                    'url' => url('Setting/Department'),
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
                array('name' => '添加部门',
                    'url' => url('Setting/Department_add'),
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

    //部门列表页
    public function department(){
        $data = M('department'); // 实例化对象
        $list = $data->order('id desc')->select();
        $this->assign('list',$list);// 赋值数据集
        $this->adminDisplay();
    }

    //添加校区页面
    public function department_add(){
        $this->adminDisplay();
    }

    //添加校区
    public function addDepartment(){
        if(empty($_GET['id'])) {
            if($bid=M('department')->add($_POST)) {
                $this->success('添加成功',U('Department'));
            } else {
                $this->error('添加失败');
            }
        }
        else {
            $bid=$_GET['id'];
            if(M('department')->where(array('id'=>$bid))->save($_POST)) {
                $this->success('修改成功',U('Department'));
            } else {
                $this->error('修改失败');
            }
        }
    }

    // 修改校区
    public function editDepartment() {
        $id = $_GET['id'];
        $this->list=D('department')->where(array('id'=>$id))->find();
        $this->adminDisplay('department_add');
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
        $school = M('school')->where('isuse = 1')->select();
        $this->assign('school',$school);
        $this->adminDisplay();
    }

    //添加校区
    public function addRenshi(){
        dump($_POST);
        die;
        $bitian = array('xingming'=>'姓名','zhiwu'=>'职务','leixing'=>'类型','xiaoqu'=>'校区','bumen'=>'部门','chushengrq'=>'出生日期','diyixl'=>'第一学历','diyixlyx'=>'第一学历院校','zuigaoxl'=>'最高学历','zuigaoxlyx'=>'最高学历院校','ruzhirq'=>'入职日期','hetongkssj'=>'合同开始时间','hetongdqsj'=>'合同到期时间');// 所有必填项目
        foreach($bitian as $k=>$v){
            if(empty($_POST[$k])){
                $err[] = $v;
            }
        }
        if(!empty($err)){
            $notice = implode(',',$err);
            $this->error($notice.'没有填写');
        }

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

    //班级编号管理
    public function banjibianhao(){
        $res = M()->query("SELECT COLUMN_NAME,COLUMN_COMMENT FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'stjy_banjibianhao' AND TABLE_SCHEMA = 'stjy'");
        $fields = array();
        foreach ($res as $k=>$v){
            $fields[$v["column_name"]] = $v["column_comment"];
        }
        $list = M("banjibianhao")->select();
        $this->assign("list",$list);
        $this->assign("fields",$fields);
        $this->adminDisplay("banjibianhao");
    }

    //班级编号管理导入
    public function banjibianhao_import(){
        if (!empty($_FILES)) {
            $res = M('banjibianhao')->select();
            //如果没有清空表格，就不允许导入
            if($res){
                $this->error('请先清空表格再导入');
            }
            $temp = M("banjibianhao")->query("SHOW FULL COLUMNS FROM stjy_banjibianhao");
            $comment = array();
            $field = array();
            foreach($temp as $v){
                $field[]=$v['field'];
                $comment[]=$v['comment'];
            }
            $newTemp = array_combine($comment,$field);
            //上传表格并导入数据

            dump($newTemp);die;
            }else{
            $this->error('请先上传文件');
        }
    }

    //班级编号管理清空
    public function banjibianhao_delete(){
        if(M('banjibianhao')->where("1 = 1")->delete()) {
            $this->success('删除成功');
        }else {
            $this->error('删除失败');
        }
    }
}
?>
