<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class WagesXzbAction extends WagesCommonAction{
	/**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $this->class = M('class')->order('id desc')->select();
        $data = array('info' => array('name' => '行政部工资表详情',
            'description' => '行政部工资表',
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
        );
        return $data;
    }

    //工资
    public function index(){
        $uid = session('uid');
        $role_id = M('role_user')->where("user_id=$uid")->getField('role_id');
        //期数
        $qishu = $_GET['qishu']?$_GET['qishu']:'201808';
        //学校id
        $sid = $_GET['sid']?$_GET['sid']:1;
        $suoshudd = $this->getQishuId($qishu,$sid,17);
        $yuefen = substr($qishu,4,2).'月';
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        $nian = substr($qishu,0,4);
        // $jibie = M('zxmc')->where(array('zhongxin'=>$school_name))->getField('jibie');
        $jibie = M('school')->where(array('id'=>$sid))->getField('quyulx');
        $chuqin_arr = $this->getChuqin($qishu,$sid);
        $fujia = array();//附加表
        $ts = 0;
        //根据级别取不同的阿米巴
        switch ($jibie){
            case "A类":
                $ambbz = M('ambbz')->getField('gangwei,alei danjia');
                $ts = 5;
                break;
            case "A-类":
                $ambbz = M('ambbz')->getField('gangwei,a_lei danjia');
                $ts = 4.5;
                break;
            case "B类":
                $ambbz = M('ambbz')->getField('gangwei,blei danjia');
                $ts = 4;
                break;
            case "C类":
                $ambbz = M('ambbz')->getField('gangwei,clei danjia');
                $ts = 3;
                break;
            case "D类":
                $ambbz = M('ambbz')->getField('gangwei,dlei danjia');
                $ts = 2;
                break;
            default:
                $ambbz = M('ambbz')->getField('gangwei,danjia');
                $ts = 5;
                break;
        }
        $heji = array();//合计
        $status = 0;
        if ($suoshudd){
            $list = M('xzbgz')->where("suoshudd='$suoshudd'")->order('id asc')->select();
            $status = $list['0']['status']?$list['0']['status']:0;
            $list_pz = M('xzbgz_pz')->where("qishu=$qishu and sid=$sid")->order('id asc')->select();
            $heji = $list[ count($list) - 1];
            unset($list[ count($list) - 1]);
            $fujia = M('fjb')->where("suoshudd='$suoshudd'")->getField('field,value');
        }else{
            //实时计算
            $list = M('rycb')->field('bumen,shenfenzhm,zhiwu as zhiwei,gangweilx,leixing as zaizhizt,xingming,ruzhirq as ruzhisj,gongjijgrbf as gongjij,shebaogrbf as gerensb')->where(array('xiaoqu'=>$school_name,'bumen'=>'行政部'))->select();
            foreach($list as $key=>&$val){
                $val['xuhao'] = $key+1;
                $val['yuefen'] = $yuefen;
                $val['fenxiao'] = $school_name;
                $val['gongzuonx'] = intval(( time() - strtotime($val['ruzhisj']) ) / (365 * 24 * 60 * 60));
                $val['yingchuqts'] = $chuqin_arr[$val['xingming']]['yingchuqts']?$chuqin_arr[$val['xingming']]['yingchuqts']:0;// 应出勤天数
                $val['shijicqts'] = $chuqin_arr[$val['xingming']]['chuqints']?$chuqin_arr[$val['xingming']]['chuqints']:0;// 实际出勤天数
                $val['jibengz'] = '';
                $val['zhengjianbl'] = '';
                $val['yuangongxc'] = '';
                $val['peixun'] = '';
                $val['biaogesjkz'] = '';
                $val['qita'] = '';
                $val['xiaoji'] = '';//小计

                $val['xuexiaomz'] = '';
                $val['zaidurs'] = '';
                $val['shoufeije'] = '';
                $val['zaizhiyy'] = '';
                $val['chukuts'] = '';

                $val['xueshengfwgl'] = '';
                $val['yuangongfwgl'] = '';
                $val['weishengaqgl'] = '';
                $val['yuangongzp'] = '';
                $val['chenggongzp'] = '';
                $val['shoufeifc'] = '';
                $val['zhengjianwh'] = '';
                $val['gongzhanggl'] = '';
                $val['ziliaowjbg'] = '';
                $val['qita2'] = '';
                $val['xiaoji2'] = '';
                $val['xueshengfwglcw'] = '';
                $val['yuangongfwglcw'] = '';
                $val['cangkuglcw'] = '';
                $val['shouruhdlrcw'] = '';
                $val['zhifushcw'] = '';
                $val['xitongwhcw'] = '';
                $val['fenxiaocjcwdjcw'] = '';
                $val['zichanglcw'] = '';
                $val['qita3'] = '';
                $val['xiaoji3'] = '';
                $val['suzhizjkj'] = '';

                $val['qitakf'] = '';
                $val['fudonghj'] = '';
                $val['yueduyffzj'] = '';
                $val['yuedusfzj'] = '';
            }
            $jysjb_id = $this->getQishuId($qishu,$sid,12);
            $fujia['jibie'] = $jibie;
            $fujia['xuexiaomz'] = M('school')->where(array('id'=>$sid))->getField('mianji');
            // $fujia['zaidurs'] = M('zcxsxqztb')->where(array('suoshudd'=>$jysjb_id,'nianji'=>'合计'))->getField('shijizbrs');
            $kxmxb_id = $this->getQishuId($qishu,$sid,5);
            $fujia['zaidurs'] = count(M('kxmxb_'.$nian)->where("suoshudd=$kxmxb_id")->group('xuehao')->field('xuehao')->select());
            $sjjlb_id = $this->getQishuId($qishu,$sid,4);
            $sjjlb_list = M('sjjlb_'.substr($qishu,0,4))->where("suoshudd = $sjjlb_id and shoukuanzh != '结转学费'  and shoukuanzh != '老带新返现' and shoukuanzh != ''")->field('jiaofeije,shoukuanzh')->select();
            foreach($sjjlb_list as $vo){
                if(strpos($vo['shoukuanzh'],'结转学费') ===false && strpos($vo['shoukuanzh'],'老带新返现') ===false && strpos($vo['shoukuanzh'],'退费转让') ===false){
                    $fujia['shoufeije'] += $vo['jiaofeije'];
                }
            }
            $ruzhi_istime = strtotime($qishu);
            //进出库明细
            $fujia['zaizhiyy'] = M('rycb')->where("xiaoqu = '".$school_name."' and UNIX_TIMESTAMP(`ruzhirq`) <= $ruzhi_istime")->count();
            $jc_list = M("wupinqd")->field("mingcheng")->where("leixing = '教材'")->select();
            $jc_arr = array();
            foreach ($jc_list as $tmp){
                $jc_arr[] = $tmp['mingcheng'];
            }
            $jc_id = $this->getQishuId($qishu,$sid,34);
            $ck = M('jckmx')->field('shuliang,leibie')->where(array("mingcheng"=>array('in',$jc_arr),"suoshudd"=>$jc_id))->select();
            foreach($ck as $va){
                if(!strpos($va['leibie'],'单买')){
                    if(strpos($vl['leibie'],'98') !==false){
                        $fujia['chukuts98'] += abs($va['shuliang']);
                    }else{
                        $fujia['chukuts'] += abs($va['shuliang']);
                    }
                }
            }
        }
        $fujia['chukuts98']  = $fujia['chukuts98'] ? $fujia['chukuts98'] : 0;
        $fujia['chukuts']  = $fujia['chukuts'] ? $fujia['chukuts'] : 0;
        $role = 0;
        $status_zt = $status;
        switch ($status)
        {
            case 0:
                $role = 3;
                break;
            case 1:
                $role = 10;
                break;
            case 2:
                $role = 11;
                break;
            case 3:
                $role = 12;
                break;
            case 4:
                $role = 13;
                break;
            case 5:
                $role = 14;
                break;
            case 6:
                $role = 16;
                break;
            case 99:
                $role = 17;
                break;
        }
        //重定义status判断是否可以进行修改
        $status = 0;
        if($role == $role_id || $role_id==1){
            $status = 1;
        }
        $fujia['danjia98'] = $ts;
        $role_name = M('role')->where(array('id'=>$role))->getField('name');
        $this->assign('role_id',$role_id);
        $this->assign('role_name',$role_name);
        $this->assign('suoshudd',$suoshudd);
        $this->assign('status',$status);
        $this->assign('status_zt',$status_zt);
        $this->assign('ambbz',$ambbz);
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
        $suoshudd = $this->getQishuId($qishu,$sid,17);
        if (!$suoshudd){
            $suoshudd = $this->insertQishuHistory(17,$qishu,$sid);
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
        M('xzbgz')->where("suoshudd='$suoshudd'")->delete();
        M('xzbgz_pz')->where("qishu=$qishu and sid=$sid")->delete();
        $list = array();
        $field = M('')->query("SELECT COLUMN_NAME from information_schema.COLUMNS where table_name = 'stjy_xzbgz' and table_schema ='stjy' and COLUMN_NAME != 'id' and COLUMN_NAME != 'suoshudd' and COLUMN_NAME != 'daorusj' and COLUMN_NAME != 'status'");
        $field2 = $field;
        foreach($data as $key=>$val){
            $j=0;
            if ($val['0'] == '合计'){
                for($i=0;$i<14;$i++){
                    unset($field[$i]);
                }
                $list[ $key ]['xingming'] = '合计';
                $j=1;
            }
            foreach($field as $kk=>$vv){
                $list[ $key ][ $vv['column_name'] ] = $val[$j];
                $j++;
            }
            $list[$key]['suoshudd'] = $suoshudd;
            if ($list[$key]['xingming']){
                $list[$key]['status'] = $_POST['status'];
                M('xzbgz')->add($list[$key]);
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
                M('xzbgz_pz')->add($list[$key]);
            }
        }
        $this->ajaxReturn(1);
    }

}

?>