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
            // 'menu' => array(
            //     array('name' => '业绩总表',
            //         'url' => url('TableCount/index'),
            //         'icon' => 'list',
            //     ),
            //     array('name' => '市场业绩表',
            //         'url' => url('TableCount/yejilist/tid/8'),
            //         'icon' => 'list',
            //     ),
            //     array('name' => '市场占有率',
            //         'url' => url('TableCount/yejilist/tid/9'),
            //         'icon' => 'list',
            //     ),
            //     array('name' => '新增明细',
            //         'url' => url('TableCount/yejilist/tid/10'),
            //         'icon' => 'list',
            //     ),
            //     array('name' => '减少明细',
            //         'url' => url('TableCount/yejilist/tid/11'),
            //         'icon' => 'list',
            //     ),
            //     array('name' => '经营数据表',
            //         'url' => url('TableCount/yejilist/tid/12'),
            //         'icon' => 'list',
            //     ),
            //     array('name' => '退费表',
            //         'url' => url('TableCount/yejilist/tid/13'),
            //         'icon' => 'list',
            //     ),
            //     array('name' => '老师确认营业额',
            //         'url' => url('TableCount/yejilist/tid/29'),
            //         'icon' => 'list',
            //     ),
            //     array('name' => '老师确认收入',
            //         'url' => url('TableCount/yejilist/tid/30'),
            //         'icon' => 'list',
            //     ),
            //     array('name' => '中心会员台账',
            //         'url' => url('TableCount/yejilist/tid/31'),
            //         'icon' => 'list',
            //     ),
            //     array('name' => '老带新台账',
            //         'url' => url('TableCount/yejilist/tid/32'),
            //         'icon' => 'list',
            //     )
            // ),
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
        $sid = session('sid');
        $school_id = explode(",",$sid);// 获取用户当前校区
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
        // $school_id = explode(",",$temp['school_id']);// 获取用户所属校区
        $school_id = session('sid');
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
	     $data = new \Admin\Action\CountScyjAction();
        $list = $data->getScyjData($qishu,$sid);//获得统计数据
//die;
        /* 实时计算结束 */

        /* 查库开始 */
        // $id = $this->getQishuId($qishu,$sid,8);
        // $data = M('scyjb')->where('suoshudd ='.$id)->order('xuhao')->select();
        // $list = array();
        // foreach($data as $v){
        //     if(!empty($v['kechengyj'])){
        //         $v['kechengyj'] = json_decode($v['kechengyj']);
        //         foreach($v['kechengyj'] as $key=>$val){
        //             $v[$key] = $val;
        //         }
        //     }
        //     unset($v['kechengyj']);
        //     if($v['xingming'] == '合计'){
        //         $heji = $v;
        //     }else{
        //         $list[] = $v;
        //     }
        // }
        // array_push($list['list'],$list['heji']);
        // // dump($list);
        // /* 查库结束 */ 
        // // dump($list);
        $arr = $this->getInfo($qishu,$sid);// 获取当前期数和校区
        // $kecheng = M("kecheng")->order("paixu asc,id asc")->select();
        // $this->assign("kecheng",$kecheng);
        $this->assign("list",$list);
        $this->assign('arr',$arr);
        $this->adminDisplay();
    }

    //续费率
    public function xfl_xq(){
        $qishu = $_GET['qishu'];
        $sid = $_GET['sid'];
        $xfl_id =$this->getQishuId($qishu,$sid,37);
        $list['data1'] = M('xfl')->where("suoshudd='$xfl_id' and type=1")->order('xuhao')->select();
        $list['data2'] = M('xfl')->where("suoshudd='$xfl_id' and type=2")->order('xuhao')->select();
        $list['data3'] = M('xfl')->where("suoshudd='$xfl_id' and type=3")->order('xuhao,xiaoji desc,id')->select();
        $arr = $this->getInfo($qishu,$sid);// 获取当前期数和校区
        $this->assign("list",$list);
        $this->assign('arr',$arr);
        $this->adminDisplay();
    }
    //转化率
    public function zhl_xq(){
        $qishu = $_GET['qishu'];
        $sid = $_GET['sid'];
        $zhl_id =$this->getQishuId($qishu,$sid,38);
        $list['data1'] = M('zhl')->where("suoshudd='$zhl_id' and type=1")->order('xuhao')->select();
        $list['data2'] = M('zhl')->where("suoshudd='$zhl_id' and type=2")->order('xuhao')->select();
        $list['data3'] = M('zhl')->where("suoshudd='$zhl_id' and type=3")->order('xuhao,xiaoji desc,id')->select();
        $arr = $this->getInfo($qishu,$sid);// 获取当前期数和校区
        $this->assign("list",$list);
        $this->assign('arr',$arr);
        $this->adminDisplay();
    }

    

    //判断开始时间和结束时间有没有传过来没有就取最新的
    public function seTime($start_time='',$end_time='',$tid=''){
        $sid = session('sid');
        if (!$start_time || !$end_time){
            //期数不选默认选最近的
            $qishu = M('qishu_history')->where(array('sid'=>array('in',$sid),'tid'=>$tid))->order('daorusj')->getField('qishu');
            if (!$qishu){
                $this->adminDisplay();exit;
            }
            $start_time = substr($qishu,0,4).'-'.substr($qishu,4,2);
            $end_time = $start_time;
        }
        $data['start_time'] = $start_time;
        $data['end_time'] = $end_time;
        return $data;
    }

    //市场业绩表
    public function scyjb(){
        //获取时间段 没有就取最近的
        $start_time = I('start_time');
        $end_time = I('end_time');
        $data_time = $this->seTime($start_time,$end_time,8);
        $start_time = $data_time['start_time'];
        $end_time = $data_time['end_time'];

        $sid = session('sid');
        /***************************获取两个时间段之间的月份***************************/
        $qishu = $this->getMonths($start_tim,$end_time);
        /**************************************************************************/

        //获取与当前登录账号所属的学校的所有的学校名字
        $school = M('school as ss')
                    ->join('stjy_qishu_history as qh on qh.sid=ss.id')
                    ->where(array('ss.id'=>array('in',$sid)))
                    ->getField('qh.id,ss.name');

        //获取所有学校的中文名字
        foreach($school as $vv){
            if (!in_array($vv,$school_name)){
                $school_name[] = $vv;
            }
        }

        $school_name = implode(',',$school_name);

        //获取与期数校区相关的所有期数id
        $map['sid'] = array('in',$sid);
        $map['qishu'] = array('in',$qishu);
        $map['tid'] = 8;
        $qishu_arr = M('qishu_history')->where($map)->getField('id,qishu');
        //获取订单id数组
        foreach($qishu_arr as $k=>$v){
            $qishu_id[] = $k;
        }
        if ($qishu_id){
            //查询市场业绩表
            $where['suoshudd'] = array('in',$qishu_id);
            $data = M('scyjb')->where($where)->order('id')->select();
            foreach($data as &$val){
                $val['nianfen'] = substr($qishu_arr[ $val['suoshudd'] ],0,4).'年';
                $val['yuefen'] = substr($qishu_arr[ $val['suoshudd'] ],4,2).'月';
                $val['fenxiao'] = $school[ $val['suoshudd'] ];
                $val['fujiaxx'] = json_decode($val['fujiaxx'],'true');
                foreach($val['fujiaxx'] as $k=>$v){
                    $val[$k] = $v;
                }
                unset($val['fujiaxx']);
            }
            $scyjb = new \Admin\Action\CountScyjAction();
            $list = $scyjb->heji($data);
        }
        $this->assign('start_time',$start_time);
        $this->assign('end_time',$end_time);
        $this->assign('school_name',$school_name);
        $this->assign("list",$list);
        $this->adminDisplay();
    }


	//市场占有率表详情
	public function sczylb_xq(){
        $qishu = $_GET['qishu'];
        $sid = $_GET['sid'];

        $qishu_id = $this->getQishuId($qishu,$sid,9);
        $list = M('sczylb')->where(array('suoshudd'=>$qishu_id))->select();
        $heji = array();
        foreach($list as $key=>$val){
            foreach($val as $k=>$v){
                $heji[ $k ] += $v;
            }
        }
        $heji['xuhao'] = '';
        $heji['gonglixx'] = '合计';
        array_push($list,$heji);
        $arr = $this->getInfo($qishu,$sid);// 获取当前期数和校区
        // $this->assign("data",$list['data']);
        // $this->assign("heji",$list['heji']);
        $this->assign("list",$list);
        $this->assign('arr',$arr);
        $this->adminDisplay();
	}

    //市场占有率表详情
    public function sczylb(){
        //获取时间段 没有就取最近的
        $start_time = I('start_time');
        $end_time = I('end_time');
        $data_time = $this->seTime($start_time,$end_time,9);
        $start_time = $data_time['start_time'];
        $end_time = $data_time['end_time'];
        $sid = session('sid');
        /***************************获取两个时间段之间的月份***************************/
        $qishu = $this->getMonths($start_time,$end_time);
        /**************************************************************************/

        //获取与当前登录账号所属的学校的所有的学校名字
        $school = M('school as ss')
                    ->join('stjy_qishu_history as qh on qh.sid=ss.id')
                    ->where(array('ss.id'=>array('in',$sid)))
                    ->getField('qh.id,ss.name');

        //获取所有学校的中文名字
        foreach($school as $vv){
            if (!in_array($vv,$school_name)){
                $school_name[] = $vv;
            }
        }

        $school_name = implode(',',$school_name);

        //获取与期数校区相关的所有期数id
        $map['sid'] = array('in',$sid);
        $map['qishu'] = array('in',$qishu);
        $map['tid'] = 9;
        $qishu_arr = M('qishu_history')->where($map)->getField('id,qishu');
        //获取订单id数组
        foreach($qishu_arr as $k=>$v){
            $qishu_id[] = $k;
        }
        $heji = array();
        if ($qishu_id){
            //查询新增明细表
            $where['suoshudd'] = array('in',$qishu_id);
            $list = M('sczylb')->where($where)->order('id')->select();
            foreach($list as &$val){
                $val['nianfen'] = substr($qishu_arr[ $val['suoshudd'] ],0,4).'年';
                $val['yuefen'] = substr($qishu_arr[ $val['suoshudd'] ],4,2).'月';
                foreach($val as $k=>$v){
                    $heji[ $k ] += $v;
                }
            }
        }
        $heji['xuhao'] = '';
        $heji['nianfen'] = '';
        $heji['yuefen'] = '';
        $heji['gonglixx'] = '合计';
        array_push($list,$heji);

        $this->assign('start_time',$start_time);
        $this->assign('end_time',$end_time);
        $this->assign('school_name',$school_name);
        $this->assign("list",$list);
        $this->adminDisplay();
    }

    //老师标准收入
    public function lsbzsr(){
        //获取时间段 没有就取最近的
        $start_time = I('start_time');
        $end_time = I('end_time');
        $data_time = $this->seTime($start_time,$end_time,33);
        $start_time = $data_time['start_time'];
        $end_time = $data_time['end_time'];
        $sid = session('sid');
        /***************************获取两个时间段之间的月份***************************/
        $qishu = $this->getMonths($start_time,$end_time);
        /**************************************************************************/

        //获取与当前登录账号所属的学校的所有的学校名字
        $school = M('school as ss')
                    ->join('stjy_qishu_history as qh on qh.sid=ss.id')
                    ->where(array('ss.id'=>array('in',$sid)))
                    ->getField('qh.id,ss.name');

        //获取所有学校的中文名字
        foreach($school as $vv){
            if (!in_array($vv,$school_name)){
                $school_name[] = $vv;
            }
        }

        $school_name = implode(',',$school_name);

        //获取与期数校区相关的所有期数id
        $map['sid'] = array('in',$sid);
        $map['qishu'] = array('in',$qishu);
        $map['tid'] = 33;
        $qishu_arr = M('qishu_history')->where($map)->getField('id,qishu');
        //获取订单id数组
        foreach($qishu_arr as $k=>$v){
            $qishu_id[] = $k;
        }
        $heji = array();
        if ($qishu_id){
            //查询新增明细表
            $where['suoshudd'] = array('in',$qishu_id);
            $list = M('lsbzsr')->where($where)->order('id')->select();
            foreach($list as &$val){
                $val['nianfen'] = substr($qishu_arr[ $val['suoshudd'] ],0,4).'年';
                $heji['shoukexs'] += $val['shoukexs'];
                $heji['zongrencxs'] += $val['zongrencxs'];
                $heji['biaozhunsr'] += $val['biaozhunsr'];
            }
            $heji['laoshi'] = '小计';
            array_push($list,$heji);
        } 

        $this->assign('start_time',$start_time);
        $this->assign('end_time',$end_time);
        $this->assign('school_name',$school_name);
        $this->assign("list",$list);
        $this->adminDisplay();
    }

    //老师标准收入详情
    public function lsbzsr_xq(){
        $qishu = $_GET['qishu'];
        $sid = $_GET['sid'];

        /* 实时计算开始 */
        $data = new \Admin\Action\CountLsbzsrAction();
        $list = $data->getLsbzsrData($qishu,$sid);//获得统计数据
        
        $arr = $this->getInfo($qishu,$sid);// 获取当前期数和校区
        $this->assign('list',$list);
        $this->assign('arr',$arr);
        $this->adminDisplay();
    }


	//新增明细表详情
	public function xzmxb_xq(){
        $qishu = $_GET['qishu'];
        $sid = $_GET['sid'];

        /* 实时计算开始 */
         $data = new \Admin\Action\CountXzmxAction();
         $list = $data->getXzmxbData($qishu,$sid);//获得统计数据
        /* 实时计算结束 */

        /* 查库开始 */
//        $id = $this->getQishuId($qishu,$sid,10);
//        if(!empty($id)){
//            $data = M('xzmxb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$id)->order('xuhao')->select();
//            $this->assign('list',$data);
//        }
        
//         dump($list);die;
        /* 查库结束 */
        $arr = $this->getInfo($qishu,$sid);// 获取当前期数和校区
        $this->assign('list',$list);
        $this->assign('arr',$arr);
        $this->adminDisplay();
	}

    //新增明细表
    public function xzmxb(){
        //获取时间段 没有就取最近的
        $start_time = I('start_time');
        $end_time = I('end_time');
        $data_time = $this->seTime($start_time,$end_time,10);
        $start_time = $data_time['start_time'];
        $end_time = $data_time['end_time'];
        $sid = session('sid');
        /***************************获取两个时间段之间的月份***************************/
        $qishu = $this->getMonths($start_time,$end_time);
        /**************************************************************************/

        //获取与当前登录账号所属的学校的所有的学校名字
        $school = M('school as ss')
                    ->join('stjy_qishu_history as qh on qh.sid=ss.id')
                    ->where(array('ss.id'=>array('in',$sid)))
                    ->getField('qh.id,ss.name');

        //获取所有学校的中文名字
        foreach($school as $vv){
            if (!in_array($vv,$school_name)){
                $school_name[] = $vv;
            }
        }

        $school_name = implode(',',$school_name);

        //获取与期数校区相关的所有期数id
        $map['sid'] = array('in',$sid);
        $map['qishu'] = array('in',$qishu);
        $map['tid'] = 10;
        $qishu_arr = M('qishu_history')->where($map)->getField('id,qishu');
        //获取订单id数组
        foreach($qishu_arr as $k=>$v){
            $qishu_id[] = $k;
        }
        if ($qishu_id){
            //查询新增明细表
            $where['suoshudd'] = array('in',$qishu_id);
            $list = M('xzmxb')->where($where)->order('id')->select();
            foreach($list as &$val){
                $val['nianfen'] = substr($qishu_arr[ $val['suoshudd'] ],0,4).'年';
                $val['fenxiao'] = $school[ $val['suoshudd'] ];
            }
        }
        $this->assign('start_time',$start_time);
        $this->assign('end_time',$end_time);
        $this->assign('school_name',$school_name);
        $this->assign("list",$list);
        $this->adminDisplay();
    }

    //新增明细表
    public function jsmxb(){
        //获取时间段 没有就取最近的
        $start_time = I('start_time');
        $end_time = I('end_time');
        $data_time = $this->seTime($start_time,$end_time,11);
        $start_time = $data_time['start_time'];
        $end_time = $data_time['end_time'];
        $sid = session('sid');
        /***************************获取两个时间段之间的月份***************************/
        $qishu = $this->getMonths($start_time,$end_time);
        /**************************************************************************/

        //获取与当前登录账号所属的学校的所有的学校名字
        $school = M('school as ss')
                    ->join('stjy_qishu_history as qh on qh.sid=ss.id')
                    ->where(array('ss.id'=>array('in',$sid)))
                    ->getField('qh.id,ss.name');

        //获取所有学校的中文名字
        foreach($school as $vv){
            if (!in_array($vv,$school_name)){
                $school_name[] = $vv;
            }
        }

        $school_name = implode(',',$school_name);

        //获取与期数校区相关的所有期数id
        $map['sid'] = array('in',$sid);
        $map['qishu'] = array('in',$qishu);
        $map['tid'] = 11;
        $qishu_arr = M('qishu_history')->where($map)->getField('id,qishu');
        //获取订单id数组
        foreach($qishu_arr as $k=>$v){
            $qishu_id[] = $k;
        }
        if ($qishu_id){
            //查询新增明细表
            $where['suoshudd'] = array('in',$qishu_id);
            $list = M('jsmxb')->where($where)->order('id')->select();
            foreach($list as &$val){
                $val['nianfen'] = substr($qishu_arr[ $val['suoshudd'] ],0,4).'年';
                $val['fenxiao'] = $school[ $val['suoshudd'] ];
            }
        }
        $this->assign('start_time',$start_time);
        $this->assign('end_time',$end_time);
        $this->assign('school_name',$school_name);
        $this->assign("list",$list);
        $this->adminDisplay();
    }


	//减少明细表详情
	public function jsmxb_xq(){
        $qishu = $_GET['qishu'];
        $sid = $_GET['sid'];

        /* 实时计算开始 */
        $data = new \Admin\Action\CountJsmxAction();
        $list = $data->getJsmxbData($qishu,$sid);//获得统计数据
        /* 实时计算结束 */

        /* 查库开始 */
        // $id = $this->getQishuId($qishu,$sid,11);
        // if(!empty($id)){
        //     $data = M('jsmxb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$id)->order('xuhao')->select();
        //     $this->assign('list',$data);
        // }
        
        // dump($data);
        /* 查库结束 */
        $arr = $this->getInfo($qishu,$sid);// 获取当前期数和校区
        $this->assign('list',$list);
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

    //退费表
    public function tfb(){
        //获取时间段 没有就取最近的
        $start_time = I('start_time');
        $end_time = I('end_time');
        $data_time = $this->seTime($start_time,$end_time,13);
        $start_time = $data_time['start_time'];
        $end_time = $data_time['end_time'];
        $sid = session('sid');
        /***************************获取两个时间段之间的月份***************************/
        $qishu = $this->getMonths($start_tim,$end_time);
        /**************************************************************************/
        //获取与当前登录账号所属的学校的所有的学校名字
        $school = M('school as ss')
                    ->join('stjy_qishu_history as qh on qh.sid=ss.id')
                    ->where(array('ss.id'=>array('in',$sid)))
                    ->getField('qh.id,ss.name');

        //获取所有学校的中文名字
        foreach($school as $vv){
            if (!in_array($vv,$school_name)){
                $school_name[] = $vv;
            }
        }

        $school_name = implode(',',$school_name);

        //获取与期数校区相关的所有期数id
        $map['sid'] = array('in',$sid);
        $map['qishu'] = array('in',$qishu);
        $map['tid'] = 13;
        $qishu_arr = M('qishu_history')->where($map)->getField('id,qishu');
        //获取订单id数组
        foreach($qishu_arr as $k=>$v){
            $qishu_id[] = $k;
        }
        if ($qishu_id){
            //查询市场业绩表
            $where['suoshudd'] = array('in',$qishu_id);
            $list = M('tfb')->where($where)->order('id')->select();
            foreach($list as &$val){
                $val['nianfen'] = substr($qishu_arr[ $val['suoshudd'] ],0,4).'年';
            }
        }
        $this->assign('start_time',$start_time);
        $this->assign('end_time',$end_time);
        $this->assign('school_name',$school_name);
        $this->assign("list",$list);
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
        $list = $data->getYjData($qishu,'1');//获得统计数据
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

    //老师确认营业额
    public function lsqryye(){
        //获取时间段 没有就取最近的
        $start_time = I('start_time');
        $end_time = I('end_time');
        $data_time = $this->seTime($start_time,$end_time,29);
        $start_time = $data_time['start_time'];
        $end_time = $data_time['end_time'];
        $sid = session('sid');
        /***************************获取两个时间段之间的月份***************************/
        $qishu = $this->getMonths($start_tim,$end_time);
        /**************************************************************************/
        //获取与当前登录账号所属的学校的所有的学校名字
        $school = M('school as ss')
                    ->join('stjy_qishu_history as qh on qh.sid=ss.id')
                    ->where(array('ss.id'=>array('in',$sid)))
                    ->getField('qh.id,ss.name');

        //获取所有学校的中文名字
        foreach($school as $vv){
            if (!in_array($vv,$school_name)){
                $school_name[] = $vv;
            }
        }

        $school_name = implode(',',$school_name);

        //获取与期数校区相关的所有期数id
        $map['sid'] = array('in',$sid);
        $map['qishu'] = array('in',$qishu);
        $map['tid'] = 29;
        $qishu_arr = M('qishu_history')->where($map)->getField('id,qishu');
        //获取订单id数组
        foreach($qishu_arr as $k=>$v){
            $qishu_id[] = $k;
        }
        if ($qishu_id){
            //查询市场业绩表
            $where['suoshudd'] = array('in',$qishu_id);
            $list = M('lsqryye')->where($where)->order('id')->select();
            foreach($list as &$val){
                $val['nianfen'] = substr($qishu_arr[ $val['suoshudd'] ],0,4).'年';
            }
        }
        $this->assign('start_time',$start_time);
        $this->assign('end_time',$end_time);
        $this->assign('school_name',$school_name);
        $this->assign("list",$list);
        $this->adminDisplay();
    }

    //老师确认收入详情
    public function lsqrsr_xq(){
        $qishu = $_GET['qishu'];
        $sid = $_GET['sid'];

        /* 实时计算开始 */
        $data = new \Admin\Action\CountLsqrsrAction();
        $list = $data->getYjData($qishu,$sid);//获得统计数据
        /* 实时计算结束 */

        $this->assign('list',$list);
        
        // dump($data);
        $arr = $this->getInfo($qishu,$sid);// 获取当前期数和校区
        
        $this->assign('arr',$arr);
        $this->adminDisplay();
    }

    //老师确认收入
    public function lsqrsr(){
        //获取时间段 没有就取最近的
        $start_time = I('start_time');
        $end_time = I('end_time');
        $data_time = $this->seTime($start_time,$end_time,30);
        $start_time = $data_time['start_time'];
        $end_time = $data_time['end_time'];

        $sid = session('sid');
        /***************************获取两个时间段之间的月份***************************/
        $qishu = $this->getMonths($start_tim,$end_time);
        /**************************************************************************/

        //获取与当前登录账号所属的学校的所有的学校名字
        $school = M('school as ss')
                    ->join('stjy_qishu_history as qh on qh.sid=ss.id')
                    ->where(array('ss.id'=>array('in',$sid)))
                    ->getField('qh.id,ss.name');

        //获取所有学校的中文名字
        foreach($school as $vv){
            if (!in_array($vv,$school_name)){
                $school_name[] = $vv;
            }
        }

        $school_name = implode(',',$school_name);

        //获取与期数校区相关的所有期数id
        $map['sid'] = array('in',$sid);
        $map['qishu'] = array('in',$qishu);
        $map['tid'] = 30;
        $qishu_arr = M('qishu_history')->where($map)->getField('id,qishu');
        //获取订单id数组
        foreach($qishu_arr as $k=>$v){
            $qishu_id[] = $k;
        }
        if ($qishu_id){
            //查询市场业绩表
            $where['suoshudd'] = array('in',$qishu_id);
            $list = M('lsqrsr')->where($where)->order('id')->select();
            foreach($list as &$val){
                $val['nianfen'] = substr($qishu_arr[ $val['suoshudd'] ],0,4).'年';
            }
        }
        $this->assign('start_time',$start_time);
        $this->assign('end_time',$end_time);
        $this->assign('school_name',$school_name);
        $this->assign("list",$list);
        $this->adminDisplay();
    }

    //中心会员台账
    public function zxhytz_xq(){
        $qishu = $_GET['qishu'];
        $sid = $_GET['sid'];

        /* 实时计算开始 */
        $data = new \Admin\Action\CountZxhytzAction();
        $list = $data->getZxhytzData($qishu,$sid);//获得统计数据
        /* 实时计算结束 */

        $this->assign('list',$list);
        
        // dump($data);
        $arr = $this->getInfo($qishu,$sid);// 获取当前期数和校区
        
        $this->assign('arr',$arr);
        $this->adminDisplay();
    }

    //中心老带新台账
    public function zxhytz(){
        //获取时间段 没有就取最近的
        $start_time = I('start_time');
        $end_time = I('end_time');
        $data_time = $this->seTime($start_time,$end_time,31);
        $start_time = $data_time['start_time'];
        $end_time = $data_time['end_time'];

        $sid = session('sid');
        /***************************获取两个时间段之间的月份***************************/
        $qishu = $this->getMonths($start_tim,$end_time);
        /**************************************************************************/

        //获取与当前登录账号所属的学校的所有的学校名字
        $school = M('school as ss')
                    ->join('stjy_qishu_history as qh on qh.sid=ss.id')
                    ->where(array('ss.id'=>array('in',$sid)))
                    ->getField('qh.id,ss.name');

        //获取所有学校的中文名字
        foreach($school as $vv){
            if (!in_array($vv,$school_name)){
                $school_name[] = $vv;
            }
        }

        $school_name = implode(',',$school_name);

        //获取与期数校区相关的所有期数id
        $map['sid'] = array('in',$sid);
        $map['qishu'] = array('in',$qishu);
        $map['tid'] = 31;
        $qishu_arr = M('qishu_history')->where($map)->getField('id,qishu');
        //获取订单id数组
        foreach($qishu_arr as $k=>$v){
            $qishu_id[] = $k;
        }
        if ($qishu_id){
            //查询市场业绩表
            $where['suoshudd'] = array('in',$qishu_id);
            $list = M('zxhytz')->where($where)->order('id')->select();
        }
        $this->assign('start_time',$start_time);
        $this->assign('end_time',$end_time);
        $this->assign('school_name',$school_name);
        $this->assign("list",$list);
        $this->adminDisplay();
    }

    //老带新台账
    public function zxldxtz_xq(){
        $qishu = $_GET['qishu'];
        $sid = $_GET['sid'];

        /* 实时计算开始 */
        $data = new \Admin\Action\CountZxldxtzAction();
        $list = $data->getZxldxtzData($qishu,$sid);//获得统计数据
        /* 实时计算结束 */

        $this->assign('list',$list);
        
        // dump($data);
        $arr = $this->getInfo($qishu,$sid);// 获取当前期数和校区
        
        $this->assign('arr',$arr);
        $this->adminDisplay();
    }

    //中心老带新台账
    public function zxldxtz(){
        //获取时间段 没有就取最近的
        $start_time = I('start_time');
        $end_time = I('end_time');
        $data_time = $this->seTime($start_time,$end_time,32);
        $start_time = $data_time['start_time'];
        $end_time = $data_time['end_time'];

        $sid = session('sid');
        /***************************获取两个时间段之间的月份***************************/
        $qishu = $this->getMonths($start_tim,$end_time);
        /**************************************************************************/

        //获取与当前登录账号所属的学校的所有的学校名字
        $school = M('school as ss')
                    ->join('stjy_qishu_history as qh on qh.sid=ss.id')
                    ->where(array('ss.id'=>array('in',$sid)))
                    ->getField('qh.id,ss.name');

        //获取所有学校的中文名字
        foreach($school as $vv){
            if (!in_array($vv,$school_name)){
                $school_name[] = $vv;
            }
        }

        $school_name = implode(',',$school_name);

        //获取与期数校区相关的所有期数id
        $map['sid'] = array('in',$sid);
        $map['qishu'] = array('in',$qishu);
        $map['tid'] = 32;
        $qishu_arr = M('qishu_history')->where($map)->getField('id,qishu');
        //获取订单id数组
        foreach($qishu_arr as $k=>$v){
            $qishu_id[] = $k;
        }
        if ($qishu_id){
            //查询市场业绩表
            $where['suoshudd'] = array('in',$qishu_id);
            $list = M('zxldxtz')->where($where)->order('id')->select();
        }
        $this->assign('start_time',$start_time);
        $this->assign('end_time',$end_time);
        $this->assign('school_name',$school_name);
        $this->assign("list",$list);
        $this->adminDisplay();
    }

    //收入情况一览表
    public function shouruqkylb(){
        $sid = session('sid');
        $map['sj.status_xz'] = 2;
        $map['sj.sid'] = array('in',$sid);
        $list = M('sjzb as sj')
                ->join('stjy_school as ss on ss.id=sj.sid')
                ->field('sj.id,sj.qishu,sj.sid,sj.xingzheng,sj.time_xz,ss.name as school_name')
                ->where($map)
                ->select();
        foreach($list as &$val){
            $val['name'] = '收入情况一览表';
            $val['table_name'] = 'srqkylb';
        }
        $this->assign("list",$list);
        $this->adminDisplay('shouruqkylb');
    }

    //收入情况一览表详情
    public function srqkylb_xq(){
        $qishu = I('qishu');
        $sid = I('sid');
        $data = new \Admin\Action\CountSrqkylbAction();
        $info = $data->getSrqkylbData($qishu,$sid);
        $base = array();
        $base['riqi'] = substr($qishu,0,4).'年'.substr($qishu,4,2).'月';
        $base['school_name'] = M('school')->where(array('id'=>$sid))->getField('name');
        $this->assign("base",$base);
        $this->assign("info",$info);
        $this->adminDisplay();
    }


}
?>
