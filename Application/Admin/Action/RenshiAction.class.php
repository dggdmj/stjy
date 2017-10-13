<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class RenshiAction extends CommonAction{
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
                array('name' => '人事列表',
                    'url' => url('Renshi/renshi'),
                    'icon' => 'list',
                ),
            ),
            'add' => array(
                array('name' => '添加人事',
                    'url' => url('Renshi/renshi_add'),
                ),
            ),
        );
        return $data;
    }

    //人事列表页
    public function renshi(){
        $data = M('renshi'); // 实例化对象
        $list = $data->order('id desc')->select();
        $this->assign('list',$list);// 赋值数据集
        $this->adminDisplay();
    }

    //添加人事页面
    public function renshi_add(){
        $school = M('school')->where('isuse = 1')->select();
        $this->assign('school',$school);
        $this->adminDisplay();
    }

    //添加人士
    public function addRenshi(){
        // $bitian = array('xingming'=>'姓名','zhiwu'=>'职务','leixing'=>'类型','xiaoqu'=>'校区','bumen'=>'部门','chushengrq'=>'出生日期','diyixl'=>'第一学历','diyixlyx'=>'第一学历院校','zuigaoxl'=>'最高学历','zuigaoxlyx'=>'最高学历院校','ruzhirq'=>'入职日期','hetongkssj'=>'合同开始时间','hetongdqsj'=>'合同到期时间');// 所有必填项目
        // foreach($bitian as $k=>$v){
        //     if(empty($_POST[$k])){
        //         $err[] = $v;
        //     }
        // }
        // if(!empty($err)){
        //     $notice = implode(',',$err);
        //     $this->error($notice.'没有填写');
        // }

        if(empty($_GET['id'])) {
            if($bid=M('renshi')->add($_POST)) {
                $this->success('添加成功',U('renshi'));
            } else {
                $this->error('添加失败');
            }
        }else {
            $bid=$_GET['id'];
            if(M('renshi')->where(array('id'=>$bid))->save($_POST)) {
                $this->success('修改成功',U('renshi'));
            } else {
                $this->error('修改失败');
            }
        }
    }

    // 修改人士
    public function editRenshi() {
        $id = $_GET['id'];
        $this->list=D('renshi')->where(array('id'=>$id))->find();
        $this->adminDisplay('renshi_add');
        // view未套数据
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
