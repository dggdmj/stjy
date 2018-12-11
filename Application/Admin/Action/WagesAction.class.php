<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class WagesAction extends CommonAction{
	/**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $this->class = M('class')->order('id desc')->select();
        $data = array('info' => array('name' => '工资表总表详情',
            'description' => '工资表总表',
        ),
            'menu' => array(
                array('name' => '工资表总表',
                    'url' => url('Wages/index'),
                    'icon' => 'list',
                ),
                array('name' => '行政部工资表',
                    'url' => url('/wages/tableList/table/Xzb'),
                    'icon' => 'list',
                ),
                array('name' => '教学部工资表',
                    'url' => url('/wages/tableList/table/Jxb'),
                    'icon' => 'list',
                ),
                array('name' => '市场部工资表',
                    'url' => url('/wages/tableList/table/Scb'),
                    'icon' => 'list',
                ),
                array('name' => '总监工资表',
                    'url' => url('/wages/tableList/table/Zj'),
                    'icon' => 'list',
                ),
            ),
           // 'add' => array(
           //     array('name' => '添加文章',
           //         'url' => url('Article/article'),
           //     ),
           // )
        );
        return $data;
    }

    //工资表总表
    public function index(){
        // 获取当前用户的角色
        $username = $_SESSION['username'];// 从session获取用户名
        $temp = M('admin')->where('username ="'.$username.'"')->find();// 获取admin表的数据
        $uid = $temp['id'];// 获取用户id
        $rid = M('role_user')->where('user_id ='.$uid)->getField('role_id');// 获取角色id
        $school_id = explode(",",$temp['school_id']);// 获取用户所属校区
        if($rid == 5){
            $map['status_fzr'] = array('neq',3);// 查询条件
        }elseif($rid == 4){
            $map['status_cw2'] = array('neq',3);// 查询条件
        }elseif($rid == 6){
            $map['status_cwzj'] = array('neq',3);// 查询条件
        }

        $map['status_cw'] = array('eq',2);
        
        $map['sid'] = array('in',$school_id);
        $data = M('sjzb'); // 实例化对象
        $count = $data->where($map)->count();// 查询满足要求的总记录数


        // $map['sid'] = array('in',$school_id);// 查询条件
        // $data = M('sjzb'); // 实例化对象
        // if(in_array($rid,[1,2,3,4,5])){
        //     $count = $data->where($map)->count();// 查询满足要求的总记录数
        // }

        $Page = new \Think\Page($count,15);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show = $Page->show();// 分页显示输出

        $list = $data->join('stjy_school ON stjy_sjzb.sid=stjy_school.id')->field('stjy_sjzb.*,stjy_school.name')->where($map)->where('stjy_sjzb.status_fzr is not null')->order('stjy_sjzb.qishu desc')->limit($Page->firstRow.','.$Page->listRows)->select();

        // dump($list);

        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        // if($rid == 3 || $rid == 2 || $rid == 1){
        //     $list = $data->join('stjy_school ON stjy_sjzb.sid=stjy_school.id')->field('stjy_sjzb.*,stjy_school.name')->where($map)->where('stjy_sjzb.status_xzjl is not null')->order('stjy_sjzb.qishu desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        // }else if($rid == 4){
        //     $list = $data->join('stjy_school ON stjy_sjzb.sid=stjy_school.id')->field('stjy_sjzb.*,stjy_school.name')->where($map)->where('stjy_sjzb.status_cw is not null')->order('stjy_sjzb.qishu desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        // }else if($rid == 5){
        //     $list = $data->join('stjy_school ON stjy_sjzb.sid=stjy_school.id')->field('stjy_sjzb.*,stjy_school.name')->where($map)->where('stjy_sjzb.status_fzr is not null')->order('stjy_sjzb.qishu desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        // }

        // dump($list);
        $this->assign('list',$list);// 赋值数据集
        $this->assign('fpage',$show);// 赋值分页输出
        $this->assign('rid',$rid);// 赋值角色id
        $this->adminDisplay();
    }

    // 列表页
    public function tableList(){
        // 获取当前用户的角色
        $username = $_SESSION['username'];// 从session获取用户名
        $temp = M('admin')->where('username ="'.$username.'"')->find();// 获取admin表的数据
        $uid = $temp['id'];// 获取用户id
        $rid = M('role_user')->where('user_id ='.$uid)->getField('role_id');// 获取角色id
        $school_id = explode(",",$temp['school_id']);// 获取用户所属校区
        if($rid == 5){
            $map['status_fzr'] = array('neq',3);// 查询条件
        }elseif($rid == 4){
            $map['status_cw2'] = array('neq',3);// 查询条件
        }elseif($rid == 6){
            $map['status_cwzj'] = array('neq',3);// 查询条件
        }

        $map['status_cw'] = array('eq',2);
        
        $map['sid'] = array('in',$school_id);
        $data = M('sjzb'); // 实例化对象
        $count = $data->where($map)->count();// 查询满足要求的总记录数

        // $map['sid'] = array('in',$school_id);// 查询条件
        // $data = M('sjzb'); // 实例化对象
        // if(in_array($rid,[1,2,3,4,5])){
        //     $count = $data->where($map)->count();// 查询满足要求的总记录数
        // }

        $Page = new \Think\Page($count,15);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show = $Page->show();// 分页显示输出

        $list = $data->join('stjy_school ON stjy_sjzb.sid=stjy_school.id')->field('stjy_sjzb.*,stjy_school.name')->where($map)->where('stjy_sjzb.status_cw is not null')->order('stjy_sjzb.qishu desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        // dump($list);die;
        if($_GET['table'] == 'Xzb'){
            $tname = '行政部工资表';
        }elseif($_GET['table'] == 'Jxb'){
            $tname = '教学部工资表';
        }elseif($_GET['table'] == 'Scb'){
            $tname = '市场部工资表';
        }elseif($_GET['table'] == 'Zj'){
            $tname = '总监工资表';
        }
        $controller = 'Wages'.$_GET['table'];
        $this->assign('controller',$controller);
        $this->assign('tname',$tname);
        $this->assign('list',$list);// 赋值数据集
        $this->assign('fpage',$show);// 赋值分页输出
        $this->assign('rid',$rid);// 赋值角色id
        $this->adminDisplay();
    }

    //行政部工资表
    public function xzbgzb(){
        echo "行政部工资表列表";
    }

    //市场部工资表
    public function scbgzb(){
        echo "市场部工资表列表";
    }

    public function jxbgzb(){
        echo "教学部工资表列表";
    }

    //总监工资表
    public function zjgzb(){
        echo "总监工资表列表";
    }
}



?>






