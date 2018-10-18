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
                array('name' => '退费表',
                    'url' => url('TableCount/yejilist/tid/13'),
                    'icon' => 'list',
                ),
                array('name' => '老师确认营业额',
                    'url' => url('TableCount/yejilist/tid/29'),
                    'icon' => 'list',
                ),
                array('name' => '老师确认收入',
                    'url' => url('TableCount/yejilist/tid/30'),
                    'icon' => 'list',
                ),
                array('name' => '中心会员台账',
                    'url' => url('TableCount/yejilist/tid/31'),
                    'icon' => 'list',
                ),
                array('name' => '老带新台账',
                    'url' => url('TableCount/yejilist/tid/32'),
                    'icon' => 'list',
                ),
                array('name' => '中心学习卡额度',
                    'url' => url('TableCount/yejilist/tid/33'),
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
            $map['status_fzr'] = array('neq',3);// 查询条件
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
    
    public function index_xq(){
        // dump($_GET);die;
        $data = M('sjzb')->field('id,sid,xyxxb,bjxxb,bjxyxxb,sjjlb,kxmxb,kbmxb,xyfyyjb,xxkedb,sbmxb,gjjmxb',true)->where($_GET)->find();
        $data['school'] = M('school')->where('id ='.$_GET['sid'])->getField('name');
        // dump($data);
        $this->assign('data',$data);
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

        /* 实时计算开始 */
//	     $data = new \Admin\Action\CountScyjAction();
//         $list = $data->getScyjbData($qishu,$sid);//获得统计数据
//die;
        /* 实时计算结束 */

        /* 查库开始 */
        $id = $this->getQishuId($qishu,$sid,8);
        $data = M('scyjb')->where('suoshudd ='.$id)->order('xuhao')->select();
        $list = array();
        foreach($data as $v){
            if(!empty($v['kechengyj'])){
                $v['kechengyj'] = json_decode($v['kechengyj']);
                foreach($v['kechengyj'] as $key=>$val){
                    $v[$key] = $val;
                }
            }
            unset($v['kechengyj']);
            if($v['xingming'] == '合计'){
                $heji = $v;
            }else{
                $list[] = $v;
            }
        }
        array_push($list,$heji);
        // dump($list);
        /* 查库结束 */
        // dump($list);
        $arr = $this->getInfo($qishu,$sid);// 获取当前期数和校区
        $kecheng = M("kecheng")->order("paixu asc,id asc")->select();
        $this->assign("kecheng",$kecheng);
        $this->assign("list",$list);
        $this->assign('arr',$arr);
        $this->adminDisplay();
    }

	//市场占有率表详情
	public function sczylb_xq(){
        $qishu = $_GET['qishu'];
        $sid = $_GET['sid'];

        /* 实时计算开始 */
         $data = new \Admin\Action\CountSczylAction();
         $list = $data->getSczylbData(201808,15);//获得统计数据
//         dump($list);die;
        /* 实时计算结束 */

        /* 查库开始 */
//        $id = $this->getQishuId($qishu,$sid,9);
//        $data = M('sczylb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$id)->order('xuhao')->select();
//        $data[0]['xuhao'] = '';
        // dump($data);
        /* 查库结束 */
        $arr = $this->getInfo($qishu,$sid);// 获取当前期数和校区
        // $this->assign("data",$list['data']);
        // $this->assign("heji",$list['heji']);
        $this->assign("list",$list);
        $this->assign('arr',$arr);
        $this->adminDisplay();
	}

	//新增明细表详情
	public function xzmxb_xq(){
        $qishu = $_GET['qishu'];
        $sid = $_GET['sid'];

        /* 实时计算开始 */
         $data = new \Admin\Action\CountXzmxAction();
         $list = $data->getXzmxbData(201808,15);//获得统计数据
        /* 实时计算结束 */

        /* 查库开始 */
//        $id = $this->getQishuId($qishu,$sid,10);
//        if(!empty($id)){
//            $data = M('xzmxb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$id)->order('xuhao')->select();
//            $this->assign('list',$data);
//        }
        
         dump($list);die;
        /* 查库结束 */
        $arr = $this->getInfo($qishu,$sid);// 获取当前期数和校区
        
        $this->assign('arr',$arr);
        $this->adminDisplay();
	}

	//减少明细表详情
	public function jsmxb_xq(){
        $qishu = $_GET['qishu'];
        $sid = $_GET['sid'];

        /* 实时计算开始 */
        // $data = new \Admin\Action\CountJsmxAction();
        // $list = $data->getJsmxbData($qishu,$sid);//获得统计数据
        /* 实时计算结束 */

        /* 查库开始 */
        $id = $this->getQishuId($qishu,$sid,11);
        if(!empty($id)){
            $data = M('jsmxb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$id)->order('xuhao')->select();
            $this->assign('list',$data);
        }
        
        // dump($data);
        /* 查库结束 */
        $arr = $this->getInfo($qishu,$sid);// 获取当前期数和校区
        
        $this->assign('arr',$arr);
        $this->adminDisplay();
	}

	//经营数据表详情
	public function jysjb_xq(){
        $qishu = $_GET['qishu'];
        $sid = $_GET['sid'];

        /* 实时计算开始 */
        // $data = new \Admin\Action\CountJysjAction();
        // $list = $data->getJysjbData($qishu,$sid);//获得统计数据
        // dump($list);die;
        /* 实时计算结束 */

        /* 查库开始 */
        $info = $this->getInfo($qishu,$sid);
        $kecheng_arr = array("K01","K02","K03","K04","K05","K06","P01","P02","P03","P1A","P1B","P2A","P2B","P3A","P3B","P4A","P4B","P5A","P5B","P6A","P6B","J1A","J1B","J2A","J2B","J3A","J3B","一对一","NS1");
        $school_data = M('school')->where('name ="'.$info['school'].'"')->find();
        $id = $this->getQishuId($qishu,$sid,12);
        $data_fxkkb = M('fxkkb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$id)->order('id asc')->select();
        $data_zcxsxqztb = M('zcxsxqztb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$id)->order('id asc')->select();
        $data_bjzysjb = M('bjzysjb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$id)->order('id asc')->select();
        $data_gbxzdrstjb = M('gbxzdrstjb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$id)->order('id asc')->select();
        $data_xsrsbd = M('xsrsbdb')->field('id,suoshudd,daorusj,xuhao',true)->where('suoshudd ='.$id)->order('xuhao asc')->select();
        
        $beizhu = M("jysjb_beizhu")->where("qishu = '".$qishu."' and sid = $sid")->find();
        // dump($data_gbxzdrstjb);
        $sjbd = [];
        foreach($data_bjzysjb as $v){
            if($v['bumen'] == '总计'){
                $sjbd['c57'] = $v['dangyuebjs'];
                $sjbd['d57'] = $v['renshuzj'];
            }
        }
        foreach($data_zcxsxqztb as $v){
            if($v['nianji'] == '合计'){
                $sjbd['c36'] = $v['zongrenshu'];
                $sjbd['h36'] = $v['shijizbrs'];
            }
        }
        foreach($data_xsrsbd as $v){
            if($v['xiangmu'] == '本月底在册学生人数'){
                $sjbd['d46'] = $v['renshu'];
            }
        }
        foreach($data_fxkkb as $v){
            if($v['kaikesjd'] == '总计'){
                $sjbd['c21'] = $v['banjishu'];
            }
        }
        foreach($data_gbxzdrstjb as $v){
            if($v['bumen'] == '总计'){
                $sjbd['n66'] = $v['heji'];
            }
        }
        // dump($sjbd);
        /* 查库结束 */
        $title = $this->getInfo($qishu,$sid);// 获取当前期数和校区
        // $this->assign('list',$list);
        $this->assign('kecheng',$kecheng_arr);
        $this->assign('school',$school_data);
        $this->assign('data1',$data_fxkkb);// 分校开课表
        $this->assign('data2',$data_zcxsxqztb);// 在册学生学期状态表(国际班课程)
        $this->assign('data3',$data_bjzysjb);// 班级重要数据
        $this->assign('data4',$data_gbxzdrstjb);// 各班型在读人数统计
        $this->assign('data5',$data_xsrsbd);// 学生人数变动
        $this->assign('sjbd',$sjbd);// 数据比对
        $this->assign('beizhu',$beizhu);// 备注
        $this->assign('arr',$title);
        $this->assign('qishu',$qishu);
        $this->assign('sid',$sid);
        $this->adminDisplay();
	}

    // public function jysjb_xq(){
    //     $qishu = $_GET['qishu'];
    //     $sid = $_GET['sid'];

    //     /* 实时计算开始 */
    //     $data = new \Admin\Action\CountJysjAction();
    //     $list = $data->getJysjbData($qishu,$sid);//获得统计数据
    //     dump($list);die;
    //     /* 实时计算结束 */
    // }
	//退费表详情
	public function tfb_xq(){
        // $bjbm = $this->getBjbm();
        // dump($bjbm);
        // $tbnames = $this->getTabelnames(1,[2]);
        // dump($tbnames);
        $qishu = $_GET['qishu'];
        $sid = $_GET['sid'];
        // $data = new \Admin\Action\CountTfAction();
        // $list = $data->getTfbData($qishu,$sid);//获得统计数据
        $id = $this->getQishuId($qishu,$sid,13);
        if(!empty($id)){
            $data = M('tfb')->where('suoshudd ='.$id)->order('xuhao')->select();
            $this->assign('list',$data);
        }
        
        $title = $this->getInfo($qishu,$sid);// 获取当前期数和校区
        // dump($data);die;
        
        $this->assign('title',$title);
        $this->adminDisplay();
	}

	public function savebeizhu(){
	    $data[$_POST['name']] = $_POST['value'];
        $data['sid'] = $where['sid'] = $_POST['sid'];
        $data['qishu'] = $where['qishu'] = $_POST['qishu'];
	    $res = M("jysjb_beizhu")->where($where)->find();
	    if(!$res){
            $ret = M("jysjb_beizhu")->add($data);
        }else{
            $ret = M("jysjb_beizhu")->where($where)->save($data);
        }
        $arr = array();
        if($ret){
	        $arr['status'] = true;
        }else{
            $arr['status'] = false;
        }
        return $arr;
    }

    //老师确认营业额表详情
    public function lsqryye_xq(){
        $qishu = $_GET['qishu'];
        $sid = $_GET['sid'];

        /* 实时计算开始 */
        $data = new \Admin\Action\CountLsqryyeAction();
        $list = $data->getYjData(201806,43);//获得统计数据
        /* 实时计算结束 */

        /* 查库开始 */
        // $id = $this->getQishuId($qishu,$sid,11);
        // if(!empty($id)){
        //     $data = M('jsmxb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$id)->order('xuhao')->select();
     
        // }
        /* 查库结束 */
        
        $this->assign('list',$list);
        
        // dump($data);
        $arr = $this->getInfo($qishu,$sid);// 获取当前期数和校区
        
        $this->assign('arr',$arr);
        $this->adminDisplay();
    }


}
?>
