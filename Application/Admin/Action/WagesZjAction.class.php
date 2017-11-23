<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class WagesZjAction extends CommonAction{
	/**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $this->class = M('class')->order('id desc')->select();
        $data = array('info' => array('name' => '总监工资表详情',
            'description' => ' 总监工资表',
        ),
            'menu' => array(
                array('name' => '工资表总表',
                    'url' => url('Wages/index'),
                    'icon' => 'list',
                ),
                array('name' => '行政部工资表',
                    'url' => url('Wages/xzbgzb'),
                    'icon' => 'list',
                ),
                array('name' => '教学部工资表',
                    'url' => url('Wages/jxbgzb'),
                    'icon' => 'list',
                ),
                array('name' => '市场部工资表',
                    'url' => url('Wages/scbgzb'),
                    'icon' => 'list',
                ),
                array('name' => '总监工资表',
                    'url' => url('Wages/zjgzb'),
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

    public function index(){
        //期数
        $qishu = $_GET['qishu']?$_GET['qishu']:'201709';
        //学校id
        $sid = $_GET['sid']?$_GET['sid']:1;
        $action = $_GET['action']?$_GET['action']:'';
        $school = M("school")->where("id = $sid")->find();
        $jxb_list = M("zjgzb")->where("qishu = '".$qishu."' and sid = $sid and istijiao = 0")->select();
        $table = M("zjgzb")->query("select column_name as fieldname,column_comment as beizhu from Information_schema.columns WHERE table_Name='stjy_zjgzb'");
        //如果业绩表是修改操作，就从业绩表里取数，否则实时运算
        if($action == 'edit' && !empty($jxb_list)){
            $list = $jxb_list;
            dump($list);die;
        }else{
            //查找本校区教学部所有的人员
            $jxbry_list = M("renshi")->field("xingming")->where("sid = ".$sid." and bumen = '负责人'")->select();
            $list = array();
            foreach ($jxbry_list as $sk=>$sc){
                $list[$sk]['id']['value'] = $sk;  //序号
                $list[$sk]['xingming']['value'] = $sc['xingming'];   //姓名
                $list[$sk]['yuefen']['value'] = mb_substr($qishu,4).'月';   //月份
                $list[$sk]['fenxiao']['value'] = $school['name'];   //分校名称
                $user = M("renshi")->where("xingming = '".$sc['xingming']."' and sid = $sid")->find();  //在人事资料里取对应信息
                $list[$sk]['bumen']['value'] = $user['bumen'];   //部门名称
                $list[$sk]['erjibm']['value'] = $user['bumen2'];   //二级部门
                $list[$sk]['gangweijb']['value'] = $user['gangweilx'];   //岗位类型
                $list[$sk]['zhiwei']['value'] = $user['zhiwu'];   //岗位类型
                $list[$sk]['gongzuonx']['value'] = empty($user["ruzhirq"])?'0':floor((time()-strtotime($user['ruzhirq']))/(365*86400))."年";  //工作年限
                $list[$sk]['ruzhisj']['value'] = $user["ruzhirq"];  //入职日期
                $list[$sk]['yingchuqingts']['value'] = date('t', strtotime($qishu."01")); //应出勤天数:返回当期月份的天数
                $list[$sk]['shijichuqints']['value'] = "<input class='input do_enter' type='text' name='shijichuqints' value='0'>";  //实际出勤天数
                $list[$sk]['peixunshijb']['value'] = "<input class='input do_enter' type='text' name='shijichuqints' value='0'>";  //培训师级别
                $list[$sk]['xiaozhanggrjrt']['value'] = "<input class='input do_enter' type='text' name='xiaozhanggrjrt' value='0'>";  //校长个人净人头
                $list[$sk]['xiaozhanggrxsyye']['value'] = "<input class='input do_enter' type='text' name='xiaozhanggrxsyye' value='0'>";  //校长个人新生营业额
                $list[$sk]['xiaozhanggr69q']['value'] = "<input class='input do_enter' type='text' name='xiaozhanggr69q' value='0'>";  //校长个人69期
                $list[$sk]['tuanduirs']['value'] = "<input class='input do_enter' type='text' name='tuanduirs' value='0'>";  //团队人数
                $list[$sk]['xinguwenbdrt']['value'] = "<input class='input do_enter' type='text' name='xinguwenbdrt' value='0'>";  //新顾问保底人头
                $list[$sk]['tuanduipjjrt']['value'] = "<input class='input do_enter' type='text' name='tuanduipjjrt' value='0'>";  //团队平均净人头
                $list[$sk]['jingrentou']['value'] = "<input class='input do_enter' type='text' name='jingrentou' value='0'>";  //净人头
                $list[$sk]['yingyee']['value'] = "<input class='input do_enter' type='text' name='yingyee' value='0'>";  //营业额
                $list[$sk]['lingxiukcgnx']['value'] = "<input class='input do_enter' type='text' name='lingxiukcgnx' value='0'>";  //领袖课程国内线
                $list[$sk]['lingxiukcgwx']['value'] = "<input class='input do_enter' type='text' name='lingxiukcgwx' value='0'>";  //领袖课程国外线
                $list[$sk]['xinshengpswb']['value'] = "<input class='input do_enter' type='text' name='xinshengpswb' value='0'>";  //新生平时晚班
                $list[$sk]['laoshengx48zjysyye']['value'] = "<input class='input do_enter' type='text' name='laoshengx48zjysyye' value='0'>";  //老生续48周及以上营业额
                $list[$sk]['laoshengxdy48zyye']['value'] = "<input class='input do_enter' type='text' name='laoshengxdy48zyye' value='0'>";  //老生续低于48周营业额
                $list[$sk]['yuedujjx']['value'] = "<input class='input do_enter' type='text' name='yuedujjx' value='0'>";  //月度警戒线
                $list[$sk]['yuedujlx']['value'] = "<input class='input do_enter' type='text' name='yuedujlx' value='0'>";  //月度奖励线
                $list[$sk]['jibengz']['value'] = "<input class='input do_enter' type='text' name='jibengz' value='0'>";  //基本工资
                $list[$sk]['gangweigz']['value'] = "<input class='input do_enter' type='text' name='gangweigz' value='0'>";  //岗位工资
                $list[$sk]['gongzuoliang']['value'] = "<input class='input do_enter' type='text' name='gongzuoliang' value='0'>";  //工作量
                $list[$sk]['gangweijxgz']['value'] = "<input class='input do_enter' type='text' name='gangweijxgz' value='0'>";  //岗位绩效工资
                $list[$sk]['jixiaojj']['value'] = "<input class='input do_enter' type='text' name='jixiaojj' value='0'>";  //绩效奖金
                $list[$sk]['scfy']['value'] = "<input class='input do_enter' type='text' name='scfy' value='0'>";  //市场费用
                $list[$sk]['kaoqin']['value'] = "<input class='input do_enter' type='text' name='kaoqin' value='0'>";  //考勤
                $list[$sk]['kecikh']['value'] = "<input class='input do_enter' type='text' name='kecikh' value='0'>";  //课次考核
                $list[$sk]['yingshoukh']['value'] = "<input class='input do_enter' type='text' name='yingshoukh' value='0'>";  //营收考核
                $list[$sk]['huiyuanjxkh']['value'] = "<input class='input do_enter' type='text' name='huiyuanjxkh' value='0'>";  //金牌+会员绩效考核
                $list[$sk]['lirunkh']['value'] = "<input class='input do_enter' type='text' name='lirunkh' value='0'>";  //利润考核
                $list[$sk]['koufajl']['value'] = "<input class='input do_enter' type='text' name='koufajl' value='0'>";  //扣罚/奖励
                $list[$sk]['canfeibt']['value'] = "<input class='input do_enter' type='text' name='canfeibt' value='0'>";  //餐费补贴
                $list[$sk]['zhufangbt']['value'] = "<input class='input do_enter' type='text' name='zhufangbt' value='0'>";  //住房补贴
                $list[$sk]['qitabt']['value'] = "<input class='input do_enter' type='text' name='qitabt' value='0'>";  //话费/出差/培训补贴
                $list[$sk]['lizhibc']['value'] = "<input class='input do_enter' type='text' name='lizhibc' value='0'>";  //离职补偿


                $list[$sk]['liushijtfjxjs']['value'] = $this->getTuifei($qishu,$sid,13,$sc['xingming']);  //流失及退费绩效结算
                $gerejce = M("gjjmxb")->where("qishu = '".$qishu."' and zhengjianhao = '".$user['shenfenzhm']."'")->getField("gerenjce");
                $list[$sk]['gongjijin']['value'] = $gerejce?$gerejce:0;  //公积金
                $geresbe = M("sbmxb")->where("qishu = '".$qishu."' and shenfenzhm = '".$user['shenfenzhm']."'")->getField("gerenhj");
                $list[$sk]['gerensb']['value'] = $geresbe?$geresbe:0;  //个人社保
                $list[$sk]['yuedusfjbgz']['value'] = 1895;  //月度实发基本工资
                $list[$sk]['yuedusfjx']['value'] = "<input class='input do_enter' type='text' name='yuedusfjx' value='0'>";  //月度实发绩效
                $list[$sk]['beizhu']['value'] = "<input class='input do_enter' type='text' name='beizhu' value=''>";  //备注

            }
        }
        $this->assign("qishu",$qishu);
        $this->assign("sid",$sid);
        $this->assign("table",$table);
        $this->assign("list",$list);
        $this->adminDisplay();
    }

    //计算绩效奖金
    public function getJxjj($data,$kecheng_arr){
        //去掉大于等于5%的
        $data = json_decode($data);
        if(empty($data)){
            return 0;
        }
        $total = 0;
        //提取比例
        $ticheng_arr = array();
        foreach ($kecheng_arr as $k => $v){
            //去掉5%以下的点位
            if($v >= 5){
                continue;
            }
            if(!in_array($v,$ticheng_arr)){
                $ticheng_arr[] = $v;
            }
        }
        rsort($ticheng_arr);    //按提成额度降序排列
        $new_ticheng_arr = array();
        foreach ($ticheng_arr as $k => $v){
            $new_ticheng_arr[$k]['dianwei'] = $v;
            $new_ticheng_arr[$k]['value'] = 0;
        }
        $total = 0;
        //找出各个提成比例的业绩累计
        foreach ($data as $k => $v){
            if(!empty($v)){
                $dianwei = $kecheng_arr[$k];
                foreach ($new_ticheng_arr as $m => $n){
                    if($n['dianwei'] == $dianwei){
                        $new_ticheng_arr[$m]['value'] += $v;
                    }
                }
            }
        }
        foreach ($new_ticheng_arr as $k=>$v){
            $total += $v['dianwei']*$v['value']/100;
        }
//        dump($total);
        return $total;
    }

    //计算学习卡结算
    public function getXxkjs($data,$jrt,$edu,$kecheng_arr,$huiyuanldxyye){
        //合并相同比例的业绩，大于等于5%的
        $data = json_decode($data);
        if(empty($data)){
            return 0;
        }
        $ticheng_arr = array();
        //提取比例
        foreach ($kecheng_arr as $k => $v){
            //去掉5%以下的点位
            if($v < 5){
                continue;
            }
            if(!in_array($v,$ticheng_arr)){
                $ticheng_arr[] = $v;
            }
        }
        rsort($ticheng_arr);    //按提成额度降序排列
        $new_ticheng_arr = array();
        $new_ticheng_arr_add = array();
        foreach ($ticheng_arr as $k => $v){
            $new_ticheng_arr[$k]['dianwei'] = $v;
            $new_ticheng_arr[$k]['value'] = 0;
            $new_ticheng_arr_add[$k]['dianwei'] = $v;
            $new_ticheng_arr_add[$k]['value'] = 0;
        }
        //找出各个提成比例的业绩累计
        foreach ($data as $k => $v){
            if(!empty($v)){
                $dianwei = $kecheng_arr[$k];
                foreach ($new_ticheng_arr as $m => $n){
                    if($n['dianwei'] == $dianwei){
                        $new_ticheng_arr[$m]['value'] += $v;
                    }
                }
            }
        }
        //计算各阶段比例的和值
        foreach ($new_ticheng_arr_add as $k=>$v){
            foreach ($new_ticheng_arr as $m => $n){
                if($v['dianwei'] <= $n['dianwei']){
                    $new_ticheng_arr_add[$k]['value'] += $n['value'];
                }
            }
        }
        $total = 0;
        $count = count($new_ticheng_arr_add);
            //计算所在的级数
        $jishu = -1;
        for($i = $count-1;$i>=0;$i--){
            if($edu > $new_ticheng_arr_add[$i]['value']){
                $jishu = $i;
                break;
            }
        }
        //计算各自的业绩额度
        if($jishu == -1){
            //如果小于最底额度累计
            foreach ($new_ticheng_arr as $m=>$n){
                if($m == 0){
                    $total += $edu*$new_ticheng_arr[0]['dianwei'];
                    $total += ($n['value'] - $edu)*$n['dianwei']*0.6;
                }
                $total += $n['value']*$n['dianwei']*0.6;
            }
        }elseif($jishu == ($count-1)){
            //如果大于最高额度累计
            foreach ($new_ticheng_arr as $m=>$n){
                $total += $n['value']*$n['dianwei'];
            }
        }else{
            //根据所在的位置判断算法
            foreach ($new_ticheng_arr as $m=>$n){
                if($m <= $jishu){
                    $total += $n['value']*$n['dianwei'];
                }
                if($m == $jishu+1){
                    $total += ($edu - $new_ticheng_arr_add[$jishu]['value'])*$n['dianwei'];
                    $total += ($new_ticheng_arr_add[($jishu+1)]['value'] - $edu)*$n['dianwei']*0.6;
                }
                if($m >= $jishu+2){
                    $total += $n['value']*$n['dianwei']*0.6;
                }
            }
        }
        $total = $total/100;
        //扣减老带新业绩
        $total = $total - $huiyuanldxyye*0.02;
        //根据净人头数返回不同的比例
        if($jrt < 2){
            $total = $total*0.85;
        }
//        dump($total);
        return $total;
    }

    function object2array($object) {
        if (is_object($object)) {
            foreach ($object as $key => $value) {
                $array[$key] = $value;
            }
        }
        else {
            $array = $object;
        }
        return $array;
    }


    //获得退费金额
    function getTuifei($qishu,$sid,$tid = 13,$name){
        $suoshudingdan = M("qishu_history")->where("tid = 13 and sid = $sid and qishu = $qishu")->getField("id");
        $tuifei1 = M("tfb")->where("suoshudd = $suoshudingdan and jingdulsxm = '".$name."'")->sum("jingdulsykje");
        $tuifei2 = M("tfb")->where("suoshudd = $suoshudingdan and fandulsxm = '".$name."'")->sum("fandulsykje");
        $tuifei3 = M("tfb")->where("suoshudd = $suoshudingdan and jiaoxuezzxm = '".$name."'")->sum("jiaoxuezzykje");
        $tuifei4 = M("tfb")->where("suoshudd = $suoshudingdan and jiaowuzrxm = '".$name."'")->sum("jiaowuzrykje");
        $tuifei5 = M("tfb")->where("suoshudd = $suoshudingdan and jiaoxuefxzxm = '".$name."'")->sum("jiaoxuefxzykje");
        $tuifei6 = M("tfb")->where("suoshudd = $suoshudingdan and zhaoshengzrxm = '".$name."'")->sum("zhaoshengzrykje");
        $tuifei7 = M("tfb")->where("suoshudd = $suoshudingdan and zhaoshengfxzxm = '".$name."'")->sum("zhaoshengfxzykje");
        $tuifei8 = M("tfb")->where("suoshudd = $suoshudingdan and dianzhangzjxm = '".$name."'")->sum("dianzhangzjykje");
        $tuifei9 = M("tfb")->where("suoshudd = $suoshudingdan and quyuzjxm = '".$name."'")->sum("quyuzjykje");

        $tuifei_total = (int)$tuifei1 + (int)$tuifei2 + (int)$tuifei3 + (int)$tuifei4 + (int)$tuifei5 + (int)$tuifei6 + (int)$tuifei7 + (int)$tuifei8 + (int)$tuifei9;

        return $tuifei_total;
    }

    public function save(){
        $qishu = $_POST["qishu"];
        $sid = $_POST["sid"];
        $res = M("zjgzb")->where("qishu ='".$qishu."' and sid = $sid")->delete();

        $obj = json_decode($_POST['arr']);
        $n = count($obj);
        $data = array();
        foreach ($obj as $k => $v){
            $data[$k]['qishu'] = $qishu;
            $data[$k]['sid'] = $sid;
            foreach ($v as $m => $n){
                if($m == 'id')
                    continue;
                $data[$k][$m] = $n;
            }
        }
        $res = M("zjgzb")->addAll($data);
        if($res){
            $this->ajaxReturn(true);
        }else{
            $this->ajaxReturn(false);
        }
    }
}



?>





