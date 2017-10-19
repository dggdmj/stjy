<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class WagesScbAction extends CommonAction{
	/**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $this->class = M('class')->order('id desc')->select();
        $data = array('info' => array('name' => '工资表总表',
            'description' => ' 查看数据总表',
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
        $school = M("school")->where("id = $sid")->find();
        $scb_list = M("scbgzb")->where("qishu = '".$qishu."' and sid = $sid and istijiao = 1")->select();
        $table = M("scbgzb")->query("select column_name as fieldname,column_comment as beizhu from Information_schema.columns WHERE table_Name='stjy_scbgzb'");
        //查询出课程列表
        $kecheng = M("kecheng")->order("paixu")->select();
        //如果业绩表已经提交了，就从业绩表里取数，否则实时运算
        if(!empty($scb_list)){
            $list = $scb_list;
        }else{
            //取当期的市场业绩表信息
            $suoshudingdan = M("qishu_history")->where("tid = 8 and sid = $sid")->getField("id");
            $scyj = M("scyjb")->where("suoshudd = $suoshudingdan")->select();
            $list = array();
            foreach ($scyj as $sk=>$sc){
                if($sc['xingming'] == "合计"){
                    continue;
                }
                $list[$sk]['id']['value'] = $sk;  //序号
                $list[$sk]['xingming']['value'] = $sc['xingming'];   //姓名
                $list[$sk]['yuefen']['value'] = mb_substr($qishu,4).'月';   //月份
                $list[$sk]['fenxiao']['value'] = $school['name'];   //分校名称
                $user = M("renshi")->where("xingming = '".$sc['xingming']."' and sid = $sid")->find();  //在人事资料里取对应信息
                $list[$sk]['bumen']['value'] = $user["bumen"];   //部门
                $list[$sk]['erjibm']['value'] = $user["bumen2"];   //二级部门
                $list[$sk]['gangweijb']['value'] = '';   //岗位级别
                $list[$sk]['zhiwei']['value'] = $user["zhiwu"];  //职位
                $list[$sk]['gangweilx']['value'] = $user["gangweilx"];  //岗位类型
                $list[$sk]['zaizhizt']['value'] = $user["leixing"];  //在职状态
                $list[$sk]['gongzuonx']['value'] = empty($user["ruzhirq"])?'0':floor((time()-strtotime($user['ruzhirq']))/(365*86400))."年";  //工作年限
                $list[$sk]['ruzhisj']['value'] = $user["ruzhirq"];  //入职日期
                $list[$sk]['yingchuqingts']['value'] = date('t', strtotime($qishu."01"));;  //应出勤天数:返回当期月份的天数
                $list[$sk]['shijichuqints']['value'] = "<input class='input do_enter' type='text' name='shijichuqingts' value=''>";  //应出勤天数
                $list[$sk]['yuedujingjx']['value'] = $school["ydjjx"];  //月度警戒线
                $list[$sk]['yueduchaorts']['value'] = $school["ydcrtx"];  //月度超人头数
                $list[$sk]['yueduchaocrts']['value'] = $school["ydccrtx"];  //月度超超人头数
                $list[$sk]['edu']['value'] = 0+M("xxkedb")->where("suoshudd = ".$suoshudingdan." and xingming = '".$sc['xingming']."'")->getField("edu");  //查询出当前期数，此人的学习卡额度信息
                $list[$sk]['rentoushu']['value'] = 0+$sc["rentoushu"];  //人头数
                $list[$sk]['jingrentou']['value'] = 0+$sc["jingrentou"];  //净人头数
                //按照课程拼接业绩
                $list[$sk]['kechengyj'] = $this->object2array(json_decode($sc['kechengyj']));
                $list[$sk]['hejiyye']['value'] = 0+$sc["hejiyye"];  //合计营业额
                $list[$sk]['huiyuanldxyye']['value'] = 0+$sc["huiyuanldxyye"];  //会员老带新营业额
                $list[$sk]['canzhaobdx']['value'] = "<input class='input do_enter' type='text' name='canzhaobdx' value=''>";  //参考保底线
                $list[$sk]['xuexikajs']['value'] = '待开发';  //学习卡结算
                $list[$sk]['jixiaojj']['value'] = '待开发';  //绩效奖金
                $list[$sk]['xiaozhangtdtc']['value'] = 0;  //校长团队提成
                $list[$sk]['tuanduiwd']['value'] = "<input class='input do_enter' type='text' name='tuanduiwd' value=''>";  //团队稳定
                $list[$sk]['dituijrtjx']['value'] = "<input class='input do_enter' type='text' name='dituijrtjx' value=''>";  //地推净人头绩效
                $list[$sk]['weixinjx']['value'] = "<input class='input do_enter' type='text' name='weixinjx' value=''>";;  //微信绩效
                $list[$sk]['jiazhanghuixcbjl']['value'] = "<input class='input do_enter' type='text' name='jiazhanghuixcbjl' value=''>";;  //家长会报名现场奖励
                $list[$sk]['liushijtfjxjs']['value'] = "<input class='input do_enter' type='text' name='liushijtfjxjs' value=''>";;  //流失及退费绩效结算
                $list[$sk]['shangkeksjx']['value'] = "<input class='input do_enter' type='text' name='shangkeksjx' value=''>";;  //上课课时绩效
                $list[$sk]['jidizskjx']['value'] = "<input class='input do_enter' type='text' name='jidizskjx' value=''>";;  //基地招生课绩效


            }
        }
//        var_dump($kecheng);
        $this->assign("kecheng",$kecheng);
        $this->assign("table",$table);
        $this->assign("list",$list);
        $this->adminDisplay();
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
}



?>






