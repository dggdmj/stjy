<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class TableCountAction extends CommonAction{
	/**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $this->class = M('class')->order('id desc')->select();
        $data = array('info' => array('name' => '校管家表格计算',
            'description' => ' 查看数据总表',
        ),
            'menu' => array(
                array('name' => '业绩总表',
                    'url' => url('TableCount/index'),
                    'icon' => 'list',
                ),
                array('name' => '市场业绩表',
                    'url' => url('TableCount/yejilist/tid/8'),
                    'icon' => 'list',
                ),
                array('name' => '市场占有率',
                    'url' => url('TableCount/yejilist/tid/9'),
                    'icon' => 'list',
                ),
                array('name' => '新增明细',
                    'url' => url('TableCount/yejilist/tid/10'),
                    'icon' => 'list',
                ),
                array('name' => '减少明细',
                    'url' => url('TableCount/yejilist/tid/11'),
                    'icon' => 'list',
                ),
                array('name' => '经营数据表',
                    'url' => url('TableCount/yejilist/tid/12'),
                    'icon' => 'list',
                ),
                array('name' => '退费',
                    'url' => url('TableCount/yejilist/tid/13'),
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

	//市场业绩总表
	public function index(){
        // 获取当前用户的角色
        $username = $_SESSION['username'];// 从session获取用户名
        $temp = M('admin')->where('username ="'.$username.'"')->find();// 获取admin表的数据
        $uid = $temp['id'];// 获取用户id
        $rid = M('role_user')->where('user_id ='.$uid)->getField('role_id');// 获取角色id
        $school_id = explode(",",$temp['school_id']);// 获取用户所属校区
        if($rid == 3 || $rid == 2 || $rid == 1){
            $map['status_xzjl'] = array('neq',3);// 查询条件
        }elseif($rid == 4){
            $map['status_cw'] = array('neq',3);// 查询条件
        }elseif($rid == 5){
            $map['status_fzr'] = array('eq',1);// 查询条件
        }

        $map['sid'] = array('in',$school_id);// 查询条件
        $data = M('sjzb'); // 实例化对象
        if(in_array($rid,[1,2,3,4,5])){
            $count = $data->where($map)->count();// 查询满足要求的总记录数
        }

        $Page = new \Think\Page($count,15);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        if($rid == 3 || $rid == 2 || $rid == 1){
            $list = $data->join('stjy_school ON stjy_sjzb.sid=stjy_school.id')->field('stjy_sjzb.*,stjy_school.name')->where($map)->where('stjy_sjzb.status_xzjl is not null')->order('stjy_sjzb.qishu desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        }else if($rid == 4){
            $list = $data->join('stjy_school ON stjy_sjzb.sid=stjy_school.id')->field('stjy_sjzb.*,stjy_school.name')->where($map)->where('stjy_sjzb.status_cw is not null')->order('stjy_sjzb.qishu desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        }else if($rid == 5){
            $list = $data->join('stjy_school ON stjy_sjzb.sid=stjy_school.id')->field('stjy_sjzb.*,stjy_school.name')->where($map)->where('stjy_sjzb.status_fzr is not null')->order('stjy_sjzb.qishu desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        }
        // 获取表明与序号对应的一维数组
        $arr = $this->getTabelnames(1,[2]);

        $this->assign('list',$list);// 赋值数据集
        $this->assign('fpage',$show);// 赋值分页输出
        $this->assign('rid',$rid);// 赋值角色id
        $this->assign('arr',$arr);
        $this->adminDisplay();
	}

    public function yejilist(){
        // 获取当前用户的角色
        $username = $_SESSION['username'];// 从session获取用户名
        $temp = M('admin')->where('username ="'.$username.'"')->find();// 获取admin表的数据
        $uid = $temp['id'];// 获取用户id
        $rid = M('role_user')->where('user_id ='.$uid)->getField('role_id');// 获取角色id
        $school_id = explode(",",$temp['school_id']);// 获取用户所属校区
        if($rid == 3 || $rid == 2 || $rid == 1){
            $map['stjy_sjzb.status_xzjl'] = array('neq',3);// 查询条件
        }elseif($rid == 4){
            $map['stjy_sjzb.status_cw'] = array('neq',3);// 查询条件
        }elseif($rid == 5){
            $map['stjy_sjzb.status_fzr'] = array('eq',1);// 查询条件
        }

        $map['stjy_sjzb.sid'] = array('in',$school_id);// 查询条件

        // $data = M('sjzb')->field('qishu,sid')->where($map)->where('status_xz = 2')->select();
        $count = M('sjzb')->where($map)->where('status_xz = 2')->count();// 查询满足要求的总记录数
        $Page = new \Think\Page($count,15);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $list = M('sjzb')->join('LEFT JOIN stjy_school ON stjy_sjzb.sid = stjy_school.id')->field('stjy_sjzb.*,stjy_school.name as school_name')->where($map)->where('stjy_sjzb.status_xz = 2')->order('stjy_sjzb.id desc')->order('stjy_sjzb.qishu desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        foreach($list as $k=>$v){
            $list[$k]['tid'] = $_GET['tid'];
            $where['tid'] = $_GET['tid'];
            $where['sid'] = $v['sid'];
            $where['qishu'] = $v['qishu'];
            $newid = M('qishu_history')->field('id')->where($where)->getField('id');
            $list[$k]['id'] = is_null($newid)?'new':$newid;
            $temp = M('table_name')->where('id = '.$_GET['tid'])->find();
            $list[$k]['table_name'] = $temp['table_name'];
            $list[$k]['name'] = $temp['name'];

        }
        $this->assign('list',$list);// 赋值数据集
        $this->assign('fpage',$show);// 赋值分页输出
        $this->adminDisplay();
    }

	//市场业绩表详情
	public function scyjb_xq(){
        $qishu = $_GET['qishu'];
        $sid = $_GET['sid'];
	    $data = new \Admin\Action\CountScyjAction();
        $list = $data->getScyjbData($qishu,$sid);//获得统计数据
        // dump($list);
        $arr = $this->getInfo($qishu,$sid);// 获取当前期数和校区
        $kecheng = M("kecheng")->order("paixu asc,id asc")->select();
        $this->assign("kecheng",$kecheng);
        $this->assign("list",$list);
        $this->assign('arr',$arr);
        $this->adminDisplay();
    }
    // public function scyjb_xq(){
    //     $qishu = $_GET['qishu'];
    //     $sid = $_GET['sid'];
    //     $id = $this->getQishuId($qishu,$sid,8);
    //     $list = M('scyjb')->where('suoshudd ='.$id)->select();
    //     foreach($list as $k=>$v){
    //         if(!empty($list[$k]['kechengyj'])){
    //             $list[$k]['kechengyj'] = json_decode($list[$k]['kechengyj']);
    //         }
    //     }
    //     dump($list);
    //     $arr = $this->getInfo($qishu,$sid);// 获取当前期数和校区
    //     $kecheng = M("kecheng")->order("paixu asc,id asc")->select();
    //     $this->assign("kecheng",$kecheng);
    //     $this->assign("list",$list);
    //     $this->assign('arr',$arr);
    //     $this->adminDisplay();
	// }

	//市场占有率表详情
	public function sczylb_xq(){
        $qishu = $_GET['qishu'];
        $sid = $_GET['sid'];
        $data = new \Admin\Action\CountSczylAction();
        $list = $data->getSczylbData($qishu,$sid);//获得统计数据
        $arr = $this->getInfo($qishu,$sid);// 获取当前期数和校区
        $this->assign("data",$list['data']);
        $this->assign("heji",$list['heji']);
        $this->assign('arr',$arr);
        $this->adminDisplay();
	}

	//新增明细表详情
	public function xzmxb_xq(){
        $qishu = $_GET['qishu'];
        $sid = $_GET['sid'];
        $data = new \Admin\Action\CountXzmxAction();
        $list = $data->getXzmxbData($qishu,$sid);//获得统计数据
        $arr = $this->getInfo($qishu,$sid);// 获取当前期数和校区
        $this->assign('list',$list);
        $this->assign('arr',$arr);
        $this->adminDisplay();
	}

	//减少明细表详情
	public function jsmxb_xq(){
        $qishu = $_GET['qishu'];
        $sid = $_GET['sid'];
        $data = new \Admin\Action\CountJsmxAction();
        $list = $data->getJsmxbData($qishu,$sid);//获得统计数据
        // dump($list);
        $arr = $this->getInfo($qishu,$sid);// 获取当前期数和校区
        $this->assign('list',$list);
        $this->assign('arr',$arr);
        $this->adminDisplay();
	}

	//经营数据表详情
	public function jysjb_xq(){
        $qishu = $_GET['qishu'];
        $sid = $_GET['sid'];
        $data = new \Admin\Action\CountJysjAction();
        $list = $data->getJysjbData($qishu,$sid);//获得统计数据
        // dump($list);
        $title = $this->getInfo($qishu,$sid);// 获取当前期数和校区
        $this->assign('list',$list);
        $this->assign('arr',$title);
        $this->adminDisplay();
	}

	//退费表详情
	public function tfb_xq(){
        // $bjbm = $this->getBjbm();
        // dump($bjbm);
        // $tbnames = $this->getTabelnames(1,[2]);
        // dump($tbnames);
        $qishu = $_GET['qishu'];
        $sid = $_GET['sid'];
        $data = new \Admin\Action\CountTfAction();
        $list = $data->getTfbData($qishu,$sid);//获得统计数据
        // dump($list);
        $this->assign('list',$list);
        $this->adminDisplay();
	}



}
?>
