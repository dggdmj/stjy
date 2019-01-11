<?php
namespace Index\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
        $this->display();
    }

    public function wages(){
        $this->display();
    }

    //市场校区业绩展示
    public function scyjb(){
    	$qishu = '201810';
    	$sid = '15';
    	$suoshudd = M('qishu_history')->where("tid=8 and qishu=$qishu and sid=$sid")->getField('id');
    	$school_name = M('school')->where(array('id'=>$sid))->getField('name');
    	$list = M('scyjb as yj')->join('LEFT JOIN stjy_rycb as ry on yj.xingming=ry.xingming')->field('yj.xingming,ry.bumen,yj.jingrentou,yj.hejiyye')->where(array('yj.suoshudd'=>$suoshudd,"ry.xiaoqu='$school_name'"))->order('yj.id')->select();
    	$this->assign('list',$list);
    	$this->assign('school_name',$school_name);
    	$this->display();
    }

    //教学部老师标准收入
    public function lsbzsr(){
    	$qishu = '201810';
    	$sid = '15';
    	$suoshudd = M('qishu_history')->where("tid=33 and qishu=$qishu and sid=$sid")->getField('id');
    	$school_name = M('school')->where(array('id'=>$sid))->getField('name');
    	$list = M('lsbzsr')->field('laoshi,banxing,shoukexs,zongrencxs,biaozhunsr')->where(array('suoshudd'=>$suoshudd))->order('id')->select();
    	$this->assign('list',$list);
    	$this->assign('school_name',$school_name);
    	$this->display();
    }

    //续费率
    public function xfl(){
    	$qishu = '201810';
    	$sid = '15';
    	$suoshudd = M('qishu_history')->where("tid=38 and qishu=$qishu and sid=$sid")->getField('id');
    	$school_name = M('school')->where(array('id'=>$sid))->getField('name');
    	$list['data1'] = M('zhl')->where("suoshudd='$suoshudd' and type=1")->order('xuhao')->select();
        $list['data2'] = M('zhl')->where("suoshudd='$suoshudd' and type=2")->order('xuhao')->select();
        $list['data3'] = M('zhl')->where("suoshudd='$suoshudd' and type=3")->order('xuhao,xiaoji desc,id')->select();
        $this->assign("list",$list);
    	$this->assign('school_name',$school_name);
        $this->display();
    }

    //经营数据表
    public function jysjb(){
    	$qishu = '201810';
    	$ny = substr($qishu,0,4).'年'.substr($qishu,4,2).'月';
    	$sid = '15';
    	$suoshudd = M('qishu_history')->where("tid=12 and qishu=$qishu and sid=$sid")->getField('id');
    	$school = M('school')->field('name,mianji,classnum')->where(array('id'=>$sid))->find();

        $data_fxkkb = M('fxkkb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$suoshudd)->order('id asc')->select();
        $data_zcxsxqztb = M('zcxsxqztb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$suoshudd)->order('id asc')->select();
        $data_bjzysjb = M('bjzysjb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$suoshudd)->order('id asc')->select();
        $data_gbxzdrstjb = M('gbxzdrstjb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$suoshudd)->order('id asc')->select();
        $data_xsrsbd = M('xsrsbdb')->field('id,suoshudd,daorusj,xuhao',true)->where('suoshudd ='.$suoshudd)->order('xuhao asc')->select();    
        $jysj = M("jysj")->where("suoshudd = '".$suoshudd."'")->find();   

        $zcxsxqztb = array();
        foreach($data_zcxsxqztb as $v){
            if($v['nianji'] == '幼儿园'){
                $zcxsxqztb['1'] = $v;
            }
            if($v['nianji'] == '一年级'){
                $zcxsxqztb['2'] = $v;
            }
            if($v['nianji'] == '二年级'){
                $zcxsxqztb['3'] = $v;
            }
            if($v['nianji'] == '三年级'){
                $zcxsxqztb['4'] = $v;
            }
            if($v['nianji'] == '四年级'){
                $zcxsxqztb['5'] = $v;
            }
            if($v['nianji'] == '五年级'){
                $zcxsxqztb['6'] = $v;
            }
            if($v['nianji'] == '六年级'){
                $zcxsxqztb['7'] = $v;
            }
            if($v['nianji'] == '初一'){
                $zcxsxqztb['8'] = $v;
            }
            if($v['nianji'] == '初二'){
                $zcxsxqztb['9'] = $v;
            }
            if($v['nianji'] == '初二以上'){
                $zcxsxqztb['10'] = $v;
            }
            if($v['nianji'] == '合计'){
                $zcxsxqztb['11'] = $v;
            }
        }
        ksort($zcxsxqztb);
        
        $this->assign('ny',$ny);
        $this->assign('jysj',$jysj);
        $this->assign('data1',$data_fxkkb);// 分校开课表
        $this->assign('data2',$zcxsxqztb);// 在册学生学期状态表(国际班课程)
        $this->assign('data3',$data_bjzysjb);// 班级重要数据
        $this->assign('data4',$data_gbxzdrstjb);// 各班型在读人数统计
        $this->assign('data5',$data_xsrsbd);// 学生人数变动
        $this->assign('school',$school);
        $this->display();
    }

    //根据手机号获取身份证号码
    public function getqishu(){
        $phone = $_GET['phone'];
        if($phone){
            $info = M('rycb')->field('shenfenzhm,xingming')->where(array('lianxidh'=>$phone))->find();
            $code = $info['shenfenzhm'];
            $list = M('qishu_history as qh')
                    ->join('LEFT JOIN stjy_xzbgz as xz on xz.suoshudd=qh.id')
                    ->join('LEFT JOIN stjy_scbgz as sc on sc.suoshudd=qh.id')
                    ->join('LEFT JOIN stjy_jxbgz as jx on jx.suoshudd=qh.id')
                    ->join('LEFT JOIN stjy_zjgz as zj on zj.suoshudd=qh.id')
                    ->field('qh.qishu')
                    ->where("xz.shenfenzhm='$code' or sc.shenfenzhm='$code' or jx.shenfenzhm='$code' or zj.shenfenzhm='$code'")
                    ->group('qh.qishu')
                    ->select();
            $this->assign('list',$list);
            $this->assign('phone',$phone);
            $this->assign('xingming',$xingming);
        }
        $this->display();
    }

    //根据手机号获取个人工资
    public function getWage(){
        $phone = $_GET['phone'];
        $qishu = $_GET['qishu'];
        $code = M('rycb')->where(array('lianxidh'=>$phone))->getField('shenfenzhm');
        //市场部工资
        $scb_wage  = M('scbgz as sc')->join('LEFT JOIN stjy_qishu_history as qh on qh.id=sc.suoshudd')->where("sc.shenfenzhm='$code' and qh.qishu='$qishu'")->getField('sc.id');
        if($scb_wage){
            $info = M('scbgz')->where(array('id'=>$scb_wage))->find();
            $this->assign('info',$info);
            $this->display('scbgz');exit;
        }
        //行政部工资
        $xzb_wage  = M('xzbgz as sc')->join('LEFT JOIN stjy_qishu_history as qh on qh.id=sc.suoshudd')->where("sc.shenfenzhm='$code'")->getField('sc.id');
        if($xzb_wage){
            $info = M('xzbgz')->where(array('id'=>$xzb_wage))->find();
            $this->assign('info',$info);
            $this->display('xzbgz');exit;
        }

        //教学部工资
        $jxb_wage  = M('jxbgz as sc')->join('LEFT JOIN stjy_qishu_history as qh on qh.id=sc.suoshudd')->where("sc.shenfenzhm='$code' and qh.qishu='$qishu'")->getField('sc.id');
        if($jxb_wage){
            $info = M('jxbgz')->where(array('id'=>$xzb_wage))->find();
            $this->assign('info',$info);
            $this->display('jxbgz');exit;
        }
        //总监工资
        $zj_wage  = M('zjgz as sc')->join('LEFT JOIN stjy_qishu_history as qh on qh.id=sc.suoshudd')->where("sc.shenfenzhm='$code' and qh.qishu='$qishu'")->getField('sc.id');
        if($zj_wage){
            $info = M('zjgz')->where(array('id'=>$xzb_wage))->find();
            $this->assign('info',$info);
            $this->display('zjgz');exit;
        }

        // $this->assign('scb_wage',$scb_wage);
        // $this->assign('xzb_wage',$xzb_wage);
        // $this->assign('jxb_wage',$jxb_wage);
        // $this->assign('zj_wage',$zj_wage);
        // $this->display();
    }

    //根据id获取行政部工资
    public function getXcbWage(){
        $id = $_GET['id'] ? $_GET['id'] : '500';
        $info = M('xzbgz')->where(array('id'=>$id))->find();
        $this->assign('info',$info);
        $this->display('xzbgz');
    }

    //根据id获取市场部的工资
    public function getScbWage(){
        $id = $_GET['id'];
        $info = M('scbgz')->where(array('id'=>$id))->find();

        $cplx = array();
        $chanpinlx = M('sjcplx')->field('xiangmu,tichengds,tichengdsfxxk,shifoucyedjs')->where("shifouqy='启用' and shifoutxyj='1' ")->select();
        //按提成点数从高到低排序
        $last_names = array_column($chanpinlx,'tichengds');
        array_multisort($last_names,SORT_DESC,$chanpinlx);

        foreach($chanpinlx as $key=>$vv){
            $vv['xiangmu'] = str_replace('(','（',$vv['xiangmu']);
            $vv['xiangmu'] = str_replace(')','）',$vv['xiangmu']);
            $chanpinlx[$key]['field'] = $this->encode($vv['xiangmu']);
            // $chanpinlx[$key]['tichengds'] = is_numeric($vv['tichengds']) ? ( $vv['tichengds'] * 100 ).'%' : $vv['tichengds'];
            if (!in_array($chanpinlx[$key]['tichengds'],$ticheng) && $chanpinlx[$key]['field'] != 'laoshengxufei'){
                $cplx[$key]['ticheng'] = $chanpinlx[$key]['tichengds'];
                $ticheng[] = $chanpinlx[$key]['tichengds'];
                $cplx[$key]['tichengfxxk'] = $vv['tichengdsfxxk'] ? $vv['tichengdsfxxk'] : number_format($vv['tichengds'] * 0.8,2);
                $cplx[$key]['tichengds'] = is_numeric($vv['tichengds']) ? ( $vv['tichengds'] * 100 ).'%' : $vv['tichengds'];
                $cplx[$key]['tichengdsfxxk'] = is_numeric($cplx[$key]['tichengfxxk']) ? ( $cplx[$key]['tichengfxxk'] * 100 ).'%' : $cplx[$key]['tichengfxxk'];
                $cplx[$key]['name'] = $vv['xiangmu'];
            }
        }
        $cplx = array_values($cplx);

        $this->assign('info',$info);
        $this->display();
    }

    //根据id获取教学部的工资
    public function getJxbWage(){
        $id = $_GET['id'];
        $info = M('jxbgz')->where(array('id'=>$id))->find();
        $this->assign('info',$info);
        $this->display();
    }

    //根据id获取教学部的工资
    public function getZjWage(){
        $id = $_GET['id'];
        $info = M('zjgz')->where(array('id'=>$id))->find();
        $this->assign('info',$info);
        $this->display();
    }
}