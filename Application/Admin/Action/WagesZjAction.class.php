<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class WagesZjAction extends WagesCommonAction{
	/**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $this->class = M('class')->order('id desc')->select();
        $data = array('info' => array('name' => '总监工资表详情',
            'description' => '总监工资表',
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

    //工资
    public function index(){
        $uid = session('uid');
        $role_id = M('role_user')->where("user_id=$uid")->getField('role_id');
        //期数
        $qishu = $_GET['qishu']?$_GET['qishu']:'201808';
        $firstday = substr($qishu,0,4)."-".substr($qishu,4,2)."-01";
        $lastday = date('Y-m-d', strtotime("$firstday +1 month -1 day"));
        //学校id
        $sid = $_GET['sid']?$_GET['sid']:1;
        $suoshudd = $this->getQishuId($qishu,$sid,20);
        $yuefen = substr($qishu,4,2).'月';
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        $heji = array();//合计
        $fujia = array();//附加表
        $fujia_id = $this->getQishuId($qishu,$sid,39);
        $lrfp_id = $this->getQishuId($qishu,$sid,42);//利润分配表所属id
        $lrfp_id = $lrfp_id?$lrfp_id:61398;//测试数据，可以删除
        $zdxs_id = $this->getQishuId($qishu,$sid,43);
        $zdxs_id = $zdxs_id?$zdxs_id:61400;//测试数据，可以删除
        $tfb_id = $this->getQishuId($qishu,$sid,13);//退费表所属id
        $status = 0;
        if ($suoshudd){
            $list = M('zjgz')->where("suoshudd='$suoshudd'")->order('id')->select();
            $status = $list['0']['status']?$list['0']['status']:0;
            $list_pz = M('zjgz_pz')->where("qishu=$qishu and sid=$sid")->order('id')->select();
            $heji = $list[ count($list) - 1];
            unset($list[ count($list) - 1]);
            $fujia = M('fjb')->where("suoshudd='$fujia_id'")->getField('field,value');
        }else{
            //实时计算
            $list = M('rycb')->field('bumen,shenfenzhm,zhiwu as zhiwei,gangweilx,leixing as zaizhizt,xingming,ruzhirq')->where("xiaoqu='$school_name' and ( zhiwu like '%总监%' or zhiwu like '%校长%' ) ")->select();
            $fuzeren = array();
            foreach($list as $v){
                $fuzeren[] = $v['xingming'];
            }
            if($fuzeren){
                $zxf = M('zxf')->where(array('fuzeren'=>array('in',$fuzeren),'fenxiao'=>$school_name,'_logic'=>'or'))->field('benyuezcsr,neibuxfzr,neibuxfzc,zhichuxj,fuzeren,fenxiao')->select();
            }
            foreach($list as $key=>$val){
                if($val['zhiwei'] == '校长'){
                    $sc_list = M("school")->Field("id,kaiyekhrq,name")->where("xiaozhang = '".$val['xingming']."'")->find();
                    $school_kyrq = $sc_list['kaiyekhrq'];
                    if((strtotime($lastday) - strtotime($school_kyrq))/86400 < 195){
                        $iskyq = 1.8; //只有校长有，是否开业前6个月内1.8倍
                    }else{
                        $iskyq = 1;
                    }

                    //校长利润分成
                    $sc_name = $sc_list['name'];
                    $list[$key]['lirunfc'] = M("lrfp")->where("fenxiao = '".$sc_name."' and suoshudd = ".$lrfp_id)->getField("xiaozhangfc");
                    $list[$key]['zhouyinsdbkhfc'] = $this->getZhouyinshou($qishu,$sc_list['id']);   //管理校区当月收费金额
                }else{
                    $iskyq = 0;

                    //非校长利润分成
                    $sc_list = M("school")->Field("name")->where("xiaozhang = '".$val['xingming']."' or quyufz = '".$val['xingming']."' or quyuzj = '".$val['xingming']."'")->select();
                    $sc_arr = array();
                    foreach ($sc_list as $tmp){
                        $sc_arr[] = $tmp['name'];
                    }
                    $sc_str = "('".implode("','",$sc_arr)."')";
                    $list[$key]['lirunfc'] = M("lrfp")->where("fenxiao in $sc_str and suoshudd = ".$lrfp_id)->sum("quyuzj");

                    $list[$key]['zhouyinsdbkhfc'] = 0;
                }
                foreach($zxf as $vv){
                    if($vv['fuzeren'] == $val['xingming']){
                         $list[$key]['shouru'] += $vv['benyuezcsr'];
                         $list[$key]['shouru'] += $vv['neibuxfzr'];
                    }
                    if($vv['fenxiao'] == $school_name){
                         $list[$key]['zhichu'] += $vv['zhichuxj'];
                         $list[$key]['zhichu'] += $vv['neibuxfzc'];
                    }
                }

                $list[$key]['xuhao'] = $key+1;
                $list[$key]['yuefen'] = $yuefen;
                $list[$key]['fenxiao'] = $school_name;
                $list[$key]['xianjinje'] = $list[$key]['shouru'] - $list[$key]['zhichu'];
                $list[$key]['suzhijj'] = '-20';
                $list[$key]['shifkyq'] = $iskyq;    //只有校长有，是否开业前6个月内1.8倍
                $list[$key]['jingxianjlfc'] = '';

                $list[$key]['shangyuemzjzdxysl'] = '';
                $list[$key]['benyuemzjzdxysl'] = '';
                $list[$key]['benyuegmbh'] = '';

                //规模奖励分成
                $sc_list = M("school")->Field("name")->where("xiaozhang = '".$val['xingming']."' or quyufz = '".$val['xingming']."' or quyuzj = '".$val['xingming']."'")->select();
                $sc_arr = array();
                foreach ($sc_list as $tmp){
                    $sc_arr[] = $tmp['name'];
                }
                $sc_str = "('".implode("','",$sc_arr)."')";
                $list[$key]['guimojlfc'] = M("zdxs")->where("zhongxin in $sc_str and suoshudd = ".$zdxs_id)->sum("hesuanjl");

                $list[$key]['tuifeikhfc'] = $this->getTuifei($qishu,$sid,13,$val['xingming']);
                
            }
            $jysjb_id = $this->getQishuId($qishu,$sid,12);
            $fujia['jibie'] = M('zxmc')->where(array('zhongxin'=>$school_name))->getField('jibie');
            $fujia['xuexiaomz'] = M('school')->where(array('id'=>$sid))->getField('mianji');
            $fujia['zaidurs'] = M('xsrsbdb')->where(array('suoshudd'=>$jysjb_id,'xiangmu'=>'本月底在册学生人数'))->getField('renshu');
        }
//        $this->assign('ambbz',$ambbz);
        $role = 0;
        switch ($status)
        {
            case 0:
                $role = 13;
                break;
            case 1:
                $role = 15;
                break;
            case 2:
                $role = 16;
                break;
            case 99:
                $role = 17;
                break;
        }
        $status_zt = $status;
        //重定义status判断是否可以进行修改
        $status = 0;
        if($role == $role_id || $role_id==1){
            $status = 1;
        }
        $role_name = M('role')->where(array('id'=>$role))->getField('name');
        $this->assign('role_id',$role_id);
        $this->assign('role_name',$role_name);
        $this->assign('suoshudd',$suoshudd);
        $this->assign('status',$status);
        $this->assign('status_zt',$status_zt);
        $this->assign('fujia',$fujia);
        $this->assign('heji',$heji);
        $this->assign('school_name',$school_name);
        $this->assign('nianyue',substr($qishu,0,4).'年'.substr($qishu,4,2).'月');
        $this->assign('qishu',$qishu);
        $this->assign('sid',$sid);
        $this->assign("list",$list);
        $this->assign("list_pz",$list_pz);
        $this->adminDisplay();
    }


    //保存数据
    public function saves(){
        $data = json_decode($_POST['jsons'],true);
        $pz_json = json_decode($_POST['pz_json'],true);
        $qishu = $_POST['qishu'];
        $sid = $_POST['sid'];
        $suoshudd = $this->getQishuId($qishu,$sid,20);
        if (!$suoshudd){
            $suoshudd = $this->insertQishuHistory(20,$qishu,$sid);
        }
        $fujia = $_POST;
         unset($fujia['sid'],$fujia['status'],$fujia['qishu'],$fujia['jsons'],$fujia['pz_json']);
        M('fjb')->where("suoshudd='$suoshudd'")->delete();
        foreach($fujia as $key=>$val){
            $tmp = array();
            $tmp['field'] = $key;
            $tmp['value'] = $val;
            $tmp['suoshudd'] = $suoshudd;
            M('fjb')->add($tmp);
        }
        M('zjgz')->where("suoshudd='$suoshudd'")->delete();
        M('zjgz_pz')->where("qishu=$qishu and sid=$sid")->delete();
        $list = array();
        $field = M('')->query("SELECT COLUMN_NAME from information_schema.COLUMNS where table_name = 'stjy_zjgz' and table_schema ='stjy' and COLUMN_NAME != 'id' and COLUMN_NAME != 'suoshudd' and COLUMN_NAME != 'daorusj' and COLUMN_NAME != 'status'");
        $field2 = $field;
        foreach($data as $key=>$val){
            $j=0;
            if ($val['0'] == '合计'){
                for($i=0;$i<13;$i++){
                    unset($field[$i]);
                }
                $list[ $key ]['fenxiao'] = '合计';
                $j=1;
            }
            foreach($field as $kk=>$vv){
                $list[ $key ][ $vv['column_name'] ] = $val[$j];
                $j++;
            }
            $list[$key]['suoshudd'] = $suoshudd;
            if ($list[$key]['fenxiao']){
                $list[$key]['status'] = $_POST['status'];
                M('zjgz')->add($list[$key]);
            }
        }
        $list = array();
        foreach($pz_json as $key=>$val){
            if($val){
                $j=0;
                foreach($field2 as $kk=>$vv){
                    $list[ $key ][ $vv['column_name'] ] = $val[$j];
                    $j++;
                }
                // $list[$key]['suoshudd'] = $suoshudd;
                $list[$key]['qishu'] = $qishu;
                $list[$key]['sid'] = $sid;
                M('zjgz_pz')->add($list[$key]);
            }
        }
        $this->ajaxReturn(1);
    }

}



?>






