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
}