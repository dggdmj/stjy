<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class WagesAction extends CommonAction{
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
                    'url' => url('Wages/scbgzbx'),
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

    //工资表总表
    public function index(){
        echo "这是总表";
    }

    //行政部工资表
    public function xzbgzb(){
        echo "行政部工资表";
    }

    public function jxbgzb(){
        echo "教学部工资表";
    }

    public function scbgzb_xq(){
        //期数
        $qishu = $_GET['qishu']?$_GET['qishu']:'201707';
        //学校id
        $sid = $_GET['sid']?$_GET['sid']:6;
        $scholl = M("school")->where("id = $sid")->find();
        $scb_list = M("scbgzb")->where("qishu = '".$qishu."' and sid = $sid and istijiao = 1")->select();
        $table = M("scbgzb")->query("select column_name as fieldname,column_comment as beizhu from Information_schema.columns WHERE table_Name='stjy_scbgzb'");
        //如果业绩表已经提交了，就从业绩表里取数，否则实时运算
        if(!empty($scb_list)){
            $list = $scb_list;
        }else{
            //取当期的市场业绩表信息
            $suoshudingdan = M("qishu_history")->where("tid = 8 and sid = $sid")->getField("id");
            $scyj = M("scyjb")->where("suoshudd = $suoshudingdan")->select();
            $list = array();
            foreach ($scyj as $sk=>$sc){
                $list[$sk]['xingming']['value'] = $sc['xingming'];   //姓名
                $list[$sk]['yuefen']['value'] = mb_substr($qishu,4).'月';   //月份
                $list[$sk]['fenxiao']['value'] = $scholl['name'];   //分校名称
                $user = M("renshi")->where("xingming = '".$sc['xingming']."' and sid = $sid")->find();  //在人事资料里取对应信息
                $list[$sk]['bumen']['value'] = $user["bumen"];   //部门
                $list[$sk]['erjibm']['value'] = $user["bumen2"];   //二级部门
                $list[$sk]['gangweijb']['value'] = '';   //岗位级别
                $list[$sk]['zhiwei']['value'] = $user["zhiwu"];  //职位
                $list[$sk]['gangweilx']['value'] = $user["gangweilx"];  //岗位类型
                $list[$sk]['zaizhizt']['value'] = $user["leixing"];  //在职状态
                $list[$sk]['gongzuonx']['value'] = empty($user["ruzhirq"])?'0':floor((time()-strtotime($user['ruzhirq']))/(365*86400))."年";  //工作年限
                $list[$sk]['ruzhisj']['value'] = $user["ruzhirq"];  //入职日期
            }
        }

        $kecheng = M("kecheng")->order("paixu")->select();
        $this->assign("kecheng",$kecheng);
        $this->assign("table",$table);
        $this->assign("list",$list);
        $this->adminDisplay();
    }

    //总监工资表
    public function zjgzb(){
        echo "总监工资表";
    }
}



?>






