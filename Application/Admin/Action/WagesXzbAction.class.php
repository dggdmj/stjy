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
        //期数
        $qishu = $_GET['qishu']?$_GET['qishu']:'201808';
        //学校id
        $sid = $_GET['sid']?$_GET['sid']:1;
        $suoshudd = $this->getQishuId($qishu,$sid,17);
        $yuefen = substr($qishu,4,2).'月';
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        $jibie = M('zxmc')->where(array('zhongxin'=>$school_name))->getField('jibie');

        $chuqin_arr = $this->getChuqin($qishu,$sid);

        //根据级别取不同的阿米巴
        switch ($jibie){
            case "A类":
                $ambbz = M('ambbz')->getField('gangwei,alei danjia');
                break;
            case "A-类":
                $ambbz = M('ambbz')->getField('gangwei,a_lei danjia');
                break;
            case "B类":
                $ambbz = M('ambbz')->getField('gangwei,blei danjia');
                break;
            case "C类":
                $ambbz = M('ambbz')->getField('gangwei,clei danjia');
                break;
            case "D类":
                $ambbz = M('ambbz')->getField('gangwei,dlei danjia');
                break;
            default:
                $ambbz = M('ambbz')->getField('gangwei,danjia');
                break;
        }
        $heji = array();//合计
        $fujia = array();//附加表

        if ($suoshudd){
            $list = M('xzbgz')->where("suoshudd='$suoshudd'")->order('id asc')->select();
            $heji = $list[ count($list) - 1];
            unset($list[ count($list) - 1]);
            $fujia = M('fjb')->where("suoshudd='$suoshudd'")->getField('field,value');
        }else{
            //实时计算
            $list = M('rycb')->field('bumen,shenfenzhm,zhiwu as zhiwei,gangweilx,leixing as zaizhizt,xingming,ruzhirq as ruzhisj')->where(array('xiaoqu'=>$school_name,'bumen'=>'行政部'))->select();
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
                $val['gongjij'] = '';
                $val['gerensb'] = '';
                $val['gerensds'] = '';
                $val['yuedusfzj'] = '';
            }
            $jysjb_id = $this->getQishuId($qishu,$sid,12);
            $fujia['jibie'] = $jibie;
            $fujia['xuexiaomz'] = M('school')->where(array('id'=>$sid))->getField('mianji');
            $fujia['zaidurs'] = M('zcxsxqztb')->where(array('suoshudd'=>$jysjb_id,'nianji'=>'合计'))->getField('shijizbrs');
            $sjjlb_id = $this->getQishuId($qishu,$sid,4);
            $fujia['shoufeije'] = M('sjjlb_'.substr($qishu,0,4))->where("suoshudd = $sjjlb_id and shoukuanzh != '结转学费'  and shoukuanzh != '老带新返现' and shoukuanzh != ''")->sum('jiaofeije');
            $ruzhi_istime = strtotime($qishu);
            $fujia['zaizhiry'] = M('rycb')->where("xiaoqu = '".$school_name."' and UNIX_TIMESTAMP(`ruzhirq`) <= $ruzhi_istime")->count();
            $jc_list = M("wupinqd")->field("mingcheng")->where("leixing = '教材'")->select();
            $jc_arr = array();
            foreach ($jc_list as $tmp){
                $jc_arr[] = $tmp['mingcheng'];
            }
            $jc_id = $this->getQishuId($qishu,$sid,34);
            $fujia['chukuts'] = abs(M('jckmx')->where(array("mingcheng"=>array('in',$jc_arr),"suoshudd"=>$jc_id))->sum('shuliang'));

        }
        $this->assign('ambbz',$ambbz);
        $this->assign('fujia',$fujia);
        $this->assign('heji',$heji);
        $this->assign('school_name',$school_name);
        $this->assign('nianyue',substr($qishu,0,4).'年'.substr($qishu,4,2).'月');
        $this->assign('qishu',$qishu);
        $this->assign('sid',$sid);
        $this->assign("list",$list);
        $this->adminDisplay();
    }

    //保存数据
    public function saves(){
        $data = json_decode($_POST['jsons']);
        $qishu = $_POST['qishu'];
        $sid = $_POST['sid'];
        $suoshudd = $this->getQishuId($qishu,$sid,17);
        if (!$suoshudd){
            $suoshudd = $this->insertQishuHistory(17,$qishu,$sid);
        }
        $fujia = $_POST;
        unset($fujia['sid'],$fujia['qishu'],$fujia['jsons']);
        M('fjb')->where("suoshudd='$suoshudd'")->delete();
        foreach($fujia as $key=>$val){
            $tmp = array();
            $tmp['field'] = $key;
            $tmp['value'] = $val;
            $tmp['suoshudd'] = $suoshudd;
            M('fjb')->add($tmp);
        }
        M('xzbgz')->where("suoshudd='$suoshudd'")->delete();
        $list = array();
        $field = M('')->query("SELECT COLUMN_NAME from information_schema.COLUMNS where table_name = 'stjy_xzbgz' and table_schema ='stjy' and COLUMN_NAME != 'id' and COLUMN_NAME != 'suoshudd' and COLUMN_NAME != 'daorusj'");
        foreach($data as $key=>$val){
            $j=0;
            if ($val['0'] == '合计'){
                for($i=0;$i<12;$i++){
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
                M('xzbgz')->add($list[$key]);
            }
        }
        $this->ajaxReturn(1);
    }

    public function index_bak(){
        //期数
        $qishu = $_GET['qishu']?$_GET['qishu']:'201709';
        //学校id
        $sid = $_GET['sid']?$_GET['sid']:1;
        $action = $_GET['action']?$_GET['action']:'';
        $school = M("school")->where("id = $sid")->find();
        $xzb_list = M("xzbgzb")->where("qishu = '".$qishu."' and sid = $sid and istijiao = 0")->select();
        $table = M("xzbgzb")->query("select column_name as fieldname,column_comment as beizhu from Information_schema.columns WHERE table_Name='stjy_xzbgzb'");
        $zcrs_ssdd = M("qishu_history")->where("tid = 12 and sid = $sid and qishu = $qishu")->getField("id");
        $renshu = M("zcxsxqztb")->where("suoshudd = $zcrs_ssdd and `nianji` = '合计'")->getField("shijizbrs");
        $renshu = $renshu?$renshu:0;
        $mianji = M("school")->where("id = $sid")->getField("mianji");
        $mianji = $mianji?$mianji:0;
        $qzyrs = M("renshi")->where("sid = $sid")->count();  //全职员工人数
        $qzyrs = $qzyrs?$qzyrs:0;  //全职员工人数
        $yuechu = strtotime($qishu);
        $yuedi = strtotime("+1 month",$qishu);
        $xinyuangongrzrs = M("renshi")->where("sid = $sid and UNIX_TIMESTAMP(ruzhirq) >= $yuechu and UNIX_TIMESTAMP(ruzhirq) < $yuedi")->count();  //新员工入职人数
        //如果业绩表是修改操作，就从业绩表里取数，否则实时运算
        if(!empty($xzb_list)){
            // dump($xzb_list);die;
            $temp = $xzb_list;
            $list = array();
            $extra = array('shijichuqints','peixunshijb','mianshixygrs','chukujcts','guanlizjs','gudingxc','jixiaojj','shichangfy','kaoqin','dianhuacc','jiabanfei','zengsongke','jidizskjx','koufajl','canfeibt','zhufangbt','qitabt','lizhibc','yuedusfjx','beizhu');
            $i = 1;
            foreach($temp as $k=>$v){
                foreach($v as $k2=>$v2){
                    if(in_array($k2,$extra)){
                        $list[$k][$k2]['value'] = "<input class='input do_enter' type='text' name='".$k2."' value='".$v2."'>";
                    }else{
                        if($k2 == 'kechengyeji'){
                            $list[$k]['kechengyj'] = $this->object2array(json_decode($v2));
                        }elseif($k2 == 'id'){
                            $list[$k][$k2]['value'] = $i;
                        }else{
                            $list[$k][$k2]['value'] = $v2;
                        }
                        
                    }
                }
                $i++;
            }
        }else{
            //查找本校区教学部所有的人员
            $xzbry_list = M("renshi")->field("xingming")->where("sid = ".$sid." and bumen = '行政部'")->select();
            $list = array();
            $i = 1;
            foreach ($xzbry_list as $sk=>$sc){
                $list[$sk]['id']['value'] = $i;  //序号
                $list[$sk]['xingming']['value'] = $sc['xingming'];   //姓名
                $list[$sk]['yuefen']['value'] = mb_substr($qishu,4).'月';   //月份
                $list[$sk]['fenxiao']['value'] = $school['name'];   //分校名称
                $user = M("renshi")->where("xingming = '".$sc['xingming']."' and sid = $sid")->find();  //在人事资料里取对应信息
                $list[$sk]['bumen']['value'] = $user['bumen'];   //部门名称
                $list[$sk]['erjibm']['value'] = $user['bumen2'];   //二级部门
                $list[$sk]['gangweijb']['value'] = $user['gangweilx'];   //岗位类型
                $list[$sk]['zhiwei']['value'] = $user['zhiwu'];   //职务
                if($user['gangweilx'] == 1){
                    $list[$sk]['gangweilx']['value'] = '全职';   //岗位类型
                }elseif($user['gangweilx'] == 2){
                    $list[$sk]['gangweilx']['value'] = '兼职';   //岗位类型
                }else{
                    $list[$sk]['gangweilx']['value'] = '兼职';   //岗位类型
                }
                $list[$sk]['zaizhizt']['value'] = $user['leixing'];   //在职状态
                $list[$sk]['gongzuonx']['value'] = empty($user["ruzhirq"])?'0':floor((time()-strtotime($user['ruzhirq']))/(365*86400))."年";  //工作年限
                $list[$sk]['ruzhisj']['value'] = $user["ruzhirq"];  //入职日期
                $list[$sk]['yingchuqingts']['value'] = date('t', strtotime($qishu."01")); //应出勤天数:返回当期月份的天数
                $list[$sk]['shijichuqints']['value'] = "<input class='input do_enter' type='text' name='shijichuqints' value='0'>";  //实际出勤天数
                $list[$sk]['peixunshijb']['value'] = "<input class='input do_enter' type='text' name='peixunshijb' value='0.3'>";  //培训师级别
                $list[$sk]['zaiduxyrs']['value'] = $renshu;  //在读学员人数
                $list[$sk]['zhehouzaiduxyrs']['value'] = 0;  //折后在读学员人数
                $list[$sk]['zaidursdj']['value'] = 10;  //在读人数单价
                $list[$sk]['quanzhiygrs']['value'] = $qzyrs;  //全职员工人数
                $list[$sk]['zhehouquanzhiygrs']['value'] = 0;  //折后全职员工人数
                $list[$sk]['yuangongambdj']['value'] = 50;  //员工阿米巴单价
                $list[$sk]['fenxiaomj']['value'] = $mianji;  //分校面积
                $list[$sk]['zhehoufenxiaomj']['value'] = 0;  //折后分校面积
                $list[$sk]['weishengaqambdj']['value'] = 0.5;  //卫生安全阿米巴单价
                $list[$sk]['mianshixygrs']['value'] = "<input class='input do_enter' type='text' name='mianshixygrs' value='0'>";  //面试新员工人数
                $list[$sk]['zhehoumianshixygrs']['value'] = 0;  //折后面试新员工人数
                $list[$sk]['zhaopinambdj']['value'] = 50;  //招聘阿米巴单价
                $list[$sk]['xinyuangongrzrs']['value'] = $xinyuangongrzrs;  //新员工入职人数
                $list[$sk]['zhehouxinyuangongrzrs']['value'] = 0;  //折后新员工入职人数
                $list[$sk]['ruzhirsambdj']['value'] = 200;  //入职人数阿米巴单价
                $list[$sk]['chukujcts']['value'] = "<input class='input do_enter' type='text' name='chukujcts' value='0'>";  //出库教材套数
                $list[$sk]['zhehouchukujcts']['value'] = 0;  //折后出库教材套数
                $list[$sk]['cangkuglambdj']['value'] = 15;  //仓库管理阿米巴单价
                $list[$sk]['benyuesfje']['value'] = 0;  //收费阿米巴单价
                $list[$sk]['shoufeiamb']['value'] = 0.002;  //收费阿米巴单价
                $list[$sk]['guanlizjs']['value'] = "<input class='input do_enter' type='text' name='guanlizjs' value='0'>";  //管理证件数
                $list[$sk]['zhehouguanlizjs']['value'] = 0;  //折后管理证件数
                $list[$sk]['zhengjianglambdj']['value'] = 200;  //证件管理阿米巴单价

                $list[$sk]['gudingxc']['value'] = "<input class='input do_enter' type='text' name='gudingxc' value='0'>";  //固定薪酬
                $list[$sk]['liushijtfjxjs']['value'] = $this->getTuifei($qishu,$sid,13,$sc['xingming']);  //流失及退费绩效结算
                $list[$sk]['jixiaojj']['value'] = "<input class='input do_enter' type='text' name='jixiaojj' value='0'>";  //绩效奖金
                $list[$sk]['shichangfy']['value'] = "<input class='input do_enter' type='text' name='shichangfy' value='0'>";  //市场费用
                $list[$sk]['kaoqin']['value'] = "<input class='input do_enter' type='text' name='kaoqin' value='0'>";  //考勤
                $list[$sk]['dianhuacc']['value'] = "<input class='input do_enter' type='text' name='dianhuacc' value='0'>";  //电话抽查
                $list[$sk]['jiabanfei']['value'] = "<input class='input do_enter' type='text' name='jiabanfei' value='0'>";  //加班费
                $list[$sk]['zengsongke']['value'] = "<input class='input do_enter' type='text' name='zengsongke' value='0'>";  //赠送课
                $list[$sk]['jidizskjx']['value'] = "<input class='input do_enter' type='text' name='jidizskjx' value='0'>";  //基地招生课绩效
                $list[$sk]['koufajl']['value'] = "<input class='input do_enter' type='text' name='koufajl' value='0'>";  //扣罚/奖励
                $list[$sk]['canfeibt']['value'] = "<input class='input do_enter' type='text' name='canfeibt' value='0'>";  //餐费补贴
                $list[$sk]['zhufangbt']['value'] = "<input class='input do_enter' type='text' name='zhufangbt' value='0'>";  //住房补贴
                $list[$sk]['qitabt']['value'] = "<input class='input do_enter' type='text' name='qitabt' value='0'>";  //话费/出差/培训补贴
                $list[$sk]['lizhibc']['value'] = "<input class='input do_enter' type='text' name='lizhibc' value='0'>";  //离职补偿

                $gerejce = M("gjjmxb")->where("qishu = '".$qishu."' and zhengjianhao = '".$user['shenfenzhm']."'")->getField("gerenjce");
                $list[$sk]['gongjijin']['value'] = $gerejce?$gerejce:0;  //公积金
                $geresbe = M("sbmxb")->where("qishu = '".$qishu."' and shenfenzhm = '".$user['shenfenzhm']."'")->getField("gerenhj");
                $list[$sk]['gerensb']['value'] = $geresbe?$geresbe:0;  //个人社保
                $list[$sk]['yuedusfjbgz']['value'] = 1895;  //月度实发基本工资
                $list[$sk]['yuedusfjx']['value'] = "<input class='input do_enter' type='text' name='yuedusfjx' value='0'>";  //月度实发绩效
                $list[$sk]['beizhu']['value'] = "<input class='input do_enter' type='text' name='beizhu' value=''>";  //备注
                $i++;
            }
        }
        $this->assign("qishu",$qishu);
        $this->assign("sid",$sid);
        $this->assign("table",$table);
        $this->assign("list",$list);
        $this->adminDisplay();
    }

    public function save(){
        $qishu = $_POST["qishu"];
        $sid = $_POST["sid"];
        $res = M("xzbgzb")->where("qishu ='".$qishu."' and sid = $sid")->delete();

        $obj = json_decode($_POST['arr']);
        $n = count($obj);
        $data = array();
        foreach ($obj as $k => $v){
            foreach ($v as $m => $n){
                if($m == 'id')
                    continue;
                $data[$k][$m] = $n;
            }
            $data[$k]['qishu'] = $qishu;
            $data[$k]['sid'] = $sid;
            $data[$k]['addtime'] = date('Y-m-d H:i:s',time());
        }
        $res = M("xzbgzb")->addAll($data);
        if($res){
            $this->ajaxReturn(true);
        }else{
            $this->ajaxReturn(false);
        }
    }
}

?>