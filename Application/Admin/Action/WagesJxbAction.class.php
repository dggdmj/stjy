<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class WagesJxbAction extends WagesCommonAction{
	/**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $this->class = M('class')->order('id desc')->select();
        $data = array('info' => array('name' => '教学部工资表详情',
            'description' => '教学部工资表',
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

    public function index(){
        //期数
        $qishu = $_GET['qishu']?$_GET['qishu']:'201709';
        //学校id
        $sid = $_GET['sid']?$_GET['sid']:1;
        $action = $_GET['action']?$_GET['action']:'';
        $school = M("school")->where("id = $sid")->find();
        $jxb_list = M("jxbgzb")->where("qishu = '".$qishu."' and sid = $sid and istijiao = 0")->select();
        $table = M("jxbgzb")->query("select column_name as fieldname,column_comment as beizhu from Information_schema.columns WHERE table_Name='stjy_jxbgzb'");
        //如果业绩表是修改操作，就从业绩表里取数，否则实时运算
        if(!empty($jxb_list)){
            // dump($jxb_list);die;
            $temp = $jxb_list;
            $list = array();
            $extra = array('shijichuqints','peixunshijb','gerensdxsgmrs','jiaoshisfkcxss','jingduskrcxs','fanduskrcxs','amibaqrsr','amitcbl','jingrentou','jinbanjsjrt','renwushu','yingyee','jinbanjsyye','zplzrs','banjipjrs','amibafc','gangweizb','gongzuoliang','xufeilvrtkf','gerenxsj','kaohegrxfl','kaohetdxf','gangweifc','jixiaojj','scfy','kaoqin','dianhuacc','jiabanfei','zengsongke','jidizskjx','koufajl','suzhijj','lizhibc','weijinbankhjx','shangkeksjx','jidizskjx','yuedusfjx','beizhu');
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
            $jxbry_list = M("renshi")->field("xingming")->where("sid = ".$sid." and bumen = '教学部'")->select();
            $list = array();
            $i = 1;
            foreach ($jxbry_list as $sk=>$sc){
                $list[$sk]['id']['value'] = $i;  //序号
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
                $list[$sk]['peixunshijb']['value'] = "<input class='input do_enter' type='text' name='peixunshijb' value='0'>";  //培训师级别
                $list[$sk]['gerensdxsgmrs']['value'] = "<input class='input do_enter' type='text' name='gerensdxsgmrs' value='0'>";  //个人所带学生规模人数
                $list[$sk]['jiaoshisfkcxss']['value'] = "<input class='input do_enter' type='text' name='jiaoshisfkcxss' value='0'>";  //教师收费课程小时数
                $list[$sk]['jingduskrcxs']['value'] = "<input class='input do_enter' type='text' name='jingduskrcxs' value='0'>";  //精读上课人次小时数
                $list[$sk]['fanduskrcxs']['value'] = "<input class='input do_enter' type='text' name='fanduskrcxs' value='0'>";  //泛读上课人次小时数
                $list[$sk]['fenxiaoqrsrrcxspjdj']['value'] = 53;  //分校确认收入人次小时平均单价
                $list[$sk]['amibaqrsr']['value'] = "<input class='input do_enter' type='text' name='amibaqrsr' value='0'>";  //阿米巴确认收入
                $list[$sk]['amitcbl']['value'] = "<input class='input do_enter' type='text' name='amitcbl' value='0'>";  //阿米巴提成比例
                $list[$sk]['jingrentou']['value'] = "<input class='input do_enter' type='text' name='jingrentou' value='0'>";  //净人头
                $list[$sk]['jinbanjsjrt']['value'] = "<input class='input do_enter' type='text' name='jinbanjsjrt' value='0'>";  //进班结算净人头
                $list[$sk]['renwushu']['value'] = "<input class='input do_enter' type='text' name='renwushu' value='0'>";  //任务数
                $list[$sk]['yingyee']['value'] = "<input class='input do_enter' type='text' name='yingyee' value='0'>";  //营业额
                $list[$sk]['jinbanjsyye']['value'] = "<input class='input do_enter' type='text' name='jinbanjsyye' value='0'>";  //进班结算营业额
                $list[$sk]['zplzrs']['value'] = "<input class='input do_enter' type='text' name='zplzrs' value='0'>";  //招聘、离职人数
                $list[$sk]['banjipjrs']['value'] = "<input class='input do_enter' type='text' name='banjipjrs' value='0'>";  //班级平均人数
                $list[$sk]['amibafc']['value'] = "<input class='input do_enter' type='text' name='amibafc' value='0'>";  //阿米巴分成
                $list[$sk]['gangweizb']['value'] = "<input class='input do_enter' type='text' name='gangweizb' value='0'>";  //岗位工资
                $list[$sk]['gongzuoliang']['value'] = "<input class='input do_enter' type='text' name='gongzuoliang' value='0'>";  //工作量
                $list[$sk]['xufeilvrtkf']['value'] = "<input class='input do_enter' type='text' name='xufeilvrtkf' value='0'>";  //续费人头扣罚
                $list[$sk]['gerenxsj']['value'] = "<input class='input do_enter' type='text' name='gerenxsj' value='0'>";  //个人新生奖
                $list[$sk]['kaohegrxfl']['value'] = "<input class='input do_enter' type='text' name='kaohegrxfl' value='0'>";  //考核个人续费率
                $list[$sk]['kaohetdxf']['value'] = "<input class='input do_enter' type='text' name='kaohetdxf' value='0'>";  //考核团队续费
                $list[$sk]['gangweifc']['value'] = "<input class='input do_enter' type='text' name='gangweifc' value='0'>";  //岗位分成
                $list[$sk]['jixiaojj']['value'] = "<input class='input do_enter' type='text' name='jixiaojj' value='0'>";  //绩效奖金
                $list[$sk]['scfy']['value'] = "<input class='input do_enter' type='text' name='scfy' value='0'>";  //市场费用
                $list[$sk]['kaoqin']['value'] = "<input class='input do_enter' type='text' name='kaoqin' value='0'>";  //考勤
                $list[$sk]['dianhuacc']['value'] = "<input class='input do_enter' type='text' name='dianhuacc' value='0'>";  //电话抽查
                $list[$sk]['jiabanfei']['value'] = "<input class='input do_enter' type='text' name='jiabanfei' value='0'>";  //加班费
                $list[$sk]['zengsongke']['value'] = "<input class='input do_enter' type='text' name='zengsongke' value='0'>";  //赠送课
                $list[$sk]['jidizskjx']['value'] = "<input class='input do_enter' type='text' name='jidizskjx' value='0'>";  //基地招生课绩效
                $list[$sk]['koufajl']['value'] = "<input class='input do_enter' type='text' name='koufajl' value='0'>";  //扣罚/奖励
                $list[$sk]['suzhijj']['value'] = "<input class='input do_enter' type='text' name='suzhijj' value='0'>";  //素质基金
                $list[$sk]['lizhibc']['value'] = "<input class='input do_enter' type='text' name='lizhibc' value='0'>";  //离职补偿


                $list[$sk]['liushijtfjxjs']['value'] = $this->getTuifei($qishu,$sid,13,$sc['xingming']);  //流失及退费绩效结算
                $list[$sk]['weijinbankhjx']['value'] = "<input class='input do_enter' type='text' name='weijinbankhjx' value='0'>";  //未进班考核绩效
                $list[$sk]['shangkeksjx']['value'] = "<input class='input do_enter' type='text' name='shangkeksjx' value='0'>";  //上课课时绩效
                $list[$sk]['jidizskjx']['value'] = "<input class='input do_enter' type='text' name='jidizskjx' value='0'>";  //基地招生课绩效
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
        $res = M("jxbgzb")->where("qishu ='".$qishu."' and sid = $sid")->delete();

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
        $res = M("jxbgzb")->addAll($data);
        if($res){
            $this->ajaxReturn(true);
        }else{
            $this->ajaxReturn(false);
        }
    }
}
?>