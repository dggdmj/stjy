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
        if ($suoshudd){
            $list = M('zjgz')->where("suoshudd='$suoshudd'")->order('id')->select();
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
                    $school_kyrq = M("school")->where("xiaozhang = '".$val['xingming']."'")->getField("kaiyekhrq"); //所任职的开业日期

                    if((strtotime($lastday) - strtotime($school_kyrq))/86400 < 195){
                        $iskyq = 1.8; //只有校长有，是否开业前6个月内1.8倍
                    }else{
                        $iskyq = 1;
                    }
                }else{
                    $iskyq = 0;
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
                $list[$key]['lirunfc'] = '';
                $list[$key]['shangyuemzjzdxysl'] = '';
                $list[$key]['benyuemzjzdxysl'] = '';
                $list[$key]['benyuegmbh'] = '';
                $list[$key]['guimojlfc'] = '';
                $list[$key]['tuifeikhfc'] = '';
                $list[$key]['zhouyinsdbkhfc'] = '';
                
            }
            $jysjb_id = $this->getQishuId($qishu,$sid,12);
            $fujia['jibie'] = M('zxmc')->where(array('zhongxin'=>$school_name))->getField('jibie');
            $fujia['xuexiaomz'] = M('school')->where(array('id'=>$sid))->getField('mianji');
            $fujia['zaidurs'] = M('xsrsbdb')->where(array('suoshudd'=>$jysjb_id,'xiangmu'=>'本月底在册学生人数'))->getField('renshu');
        }
//        $this->assign('ambbz',$ambbz);
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
        $suoshudd = $this->getQishuId($qishu,$sid,20);
        if (!$suoshudd){
            $suoshudd = $this->insertQishuHistory(20,$qishu,$sid);
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
        M('zjgz')->where("suoshudd='$suoshudd'")->delete();
        $list = array();
        $field = M('')->query("SELECT COLUMN_NAME from information_schema.COLUMNS where table_name = 'stjy_zjgz' and table_schema ='stjy' and COLUMN_NAME != 'id' and COLUMN_NAME != 'suoshudd' and COLUMN_NAME != 'daorusj'");
        foreach($data as $key=>$val){
            $j=0;
            if ($val['0'] == '合计'){
                for($i=0;$i<12;$i++){
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
                M('zjgz')->add($list[$key]);
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
        $zj_list = M("zjgzb")->where("qishu = '".$qishu."' and sid = $sid and istijiao = 0")->select();
        $table = M("zjgzb")->query("select column_name as fieldname,column_comment as beizhu from Information_schema.columns WHERE table_Name='stjy_zjgzb'");
        //如果业绩表是修改操作，就从业绩表里取数，否则实时运算
        if(!empty($zj_list)){
            // dump($zj_list);die;
            $temp = $zj_list;
            $list = array();
            $extra = array('shijichuqints','peixunshijb','xiaozhanggrjrt','xiaozhanggrxsyye','xiaozhanggr69q','tuanduirs','xinguwenbdrt','tuanduipjjrt','jingrentou','yingyee','lingxiukcgnx','lingxiukcgwx','xinshengpswb','laoshengx48zjysyye','laoshengxdy48zyye','yuedujjx','yuedujlx','jibengz','gangweigz','gongzuoliang','gangweijxgz','jixiaojj','scfy','kaoqin','kecikh','yingshoukh','huiyuanjxkh','lirunkh','koufajl','canfeibt','zhufangbt','qitabt','lizhibc','yuedusfjx','beizhu');
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
            $zjry_list = M("renshi")->field("xingming")->where("sid = ".$sid." and bumen = '负责人'")->select();
            $list = array();
            foreach ($zjry_list as $sk=>$sc){
                $list[$sk]['id']['value'] = $sk;  //序号
                $list[$sk]['xingming']['value'] = $sc['xingming'];   //姓名
                $list[$sk]['yuefen']['value'] = mb_substr($qishu,4).'月';   //月份
                $list[$sk]['fenxiao']['value'] = $school['name'];   //分校名称
                $user = M("renshi")->where("xingming = '".$sc['xingming']."' and sid = $sid")->find();  //在人事资料里取对应信息
                if($user['gangweilx'] == 1){
                    $list[$sk]['gangweilx']['value'] = '全职';   //岗位类型
                }elseif($user['gangweilx'] == 2){
                    $list[$sk]['gangweilx']['value'] = '兼职';   //岗位类型
                }else{
                    $list[$sk]['gangweilx']['value'] = '兼职';   //岗位类型
                }
                $list[$sk]['zaizhizt']['value'] = $user['leixing'];   //在职状态
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

    public function save(){
        $qishu = $_POST["qishu"];
        $sid = $_POST["sid"];
        $res = M("zjgzb")->where("qishu ='".$qishu."' and sid = $sid")->delete();

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
        $res = M("zjgzb")->addAll($data);
        if($res){
            $this->ajaxReturn(true);
        }else{
            $this->ajaxReturn(false);
        }
    }
}



?>






