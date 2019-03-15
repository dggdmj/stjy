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
        $uid = session('uid');
        $role_id = M('role_user')->where("user_id=$uid")->getField('role_id');
        //期数
        $qishu = $_GET['qishu']?$_GET['qishu']:'201808';
        $by_sj = date('Y-m-d',strtotime(substr($qishu,0,4).'-'.substr($qishu,4,2).'-01'.' +1 month -1 day'));
        //学校id
        $sid = $_GET['sid']?$_GET['sid']:1;
        $suoshudd = $this->getQishuId($qishu,$sid,18);
        $yuefen = (int)substr($qishu,4,2).'月';
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        $heji = array();//合计
        $lsqrsr_id = $this->getQishuId($qishu,$sid,30);
        $lsqryye_id = $this->getQishuId($qishu,$sid,29);
        $jysjb_id = $this->getQishuId($qishu,$sid,12);
        $lsqrsr = M('lsqrsr')->field('laoshi,banxing,zongrencxs,querensr')->where("suoshudd='$lsqrsr_id'")->select();
        $lsqryye = M('lsqryye')->field('laoshi,banxing,yingyee')->where("suoshudd='$lsqryye_id'")->select();
        $chuqin_arr = $this->getChuqin($qishu,$sid);
        $jichudata = $this->jichudata();    //基础数据
        //获取本月最后一天
        $lastday = strtotime(substr($qishu,0,4).'-'.substr($qishu,4,2).'-01'." +1 month -1 day");
        //获取老师续费率和续费率人头结算
        $lsxfl = $this->getLsxfl($qishu,$sid);
        //一对一补课
        $ydybkzzj_id = $this->getQishuId($qishu,$sid,45);
        if($ydybkzzj_id){
            $ydybkzzj = M('ydybkzztz')->field('yuefen,laoshixm,jianglibz')->where("suoshudd=$ydybkzzj_id")->select();
        }
        $jwjltz_id = $this->getQishuId($qishu,$sid,46);
        if($jwjltz_id){
            $jwjltz = M('jwjltz')->field('yuefen,jingduls,jianglije')->where("suoshudd=$jwjltz_id")->select();
        }
        //获取基础数据
        $base = $this->jichudata();
        $status = 0;
        if ($suoshudd){
            $list = M('jxbgz')->where("suoshudd='$suoshudd'")->order('id')->select();
            $status = $list['0']['status']?$list['0']['status']:0;
            $list_pz = M('jxbgz_pz')->where("qishu=$qishu and sid=$sid")->order('id asc')->select();
            $heji = $list[ count($list) - 1];
            unset($list[ count($list) - 1]);
            $fujia = M('fjb')->where("suoshudd='$suoshudd'")->getField('field,value');
            $this->assign('type',array('type'=>1));
        }
        $role = 0;
        switch ($status)
        {
            case 0:
                $role = 9;
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
        $this->assign('ambbz',$ambbz);
        $this->assign('by_sj',$by_sj);
        $this->assign('fujia',$fujia);
        $this->assign('heji',$heji);
        $this->assign('school_name',$school_name);
        $this->assign('nianyue',substr($qishu,0,4).'年'.substr($qishu,4,2).'月');
        $this->assign('qishu',$qishu);
        $this->assign('sid',$sid);
        $this->assign("list",$list);
        $this->assign("list_pz",$list_pz);
        $this->assign('lastday',$lastday);
        $this->adminDisplay();
    }

    //根据身份证获取数据
    public function getInfo(){
        $result = array();
        $qishu = I('qishu','201901');
        $quyu = I('quyu','广州');
        $sid = I('sid','14');
        $lsqrsr_id = $this->getQishuId($qishu,$sid,30);
        $scyjb_id = $this->getQishuId($qishu,$sid,8);
        $lsqryye_id = $this->getQishuId($qishu,$sid,29);
        $yuefen = (int)substr($qishu,4,2).'月';
        $result = array();
        $xingming = I('xingming','高雅利');
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        $nian = substr($qishu,0,4);
        $rycb = M('rycb')->field('bumen,xiaoqu,xingming,shenfenzhm,zhiwu,gangweilx,leixing,ruzhirq,erjibm,diyixlbysj')->where(array('xingming'=>$xingming,'xiqou'=>$school_name))->find();
        if(!$rycb){
            $this->ajaxreturn(array());
        }
        $result['yuefen'] = $yuefen;
        $result['fenxiao'] = $rycb['xiaoqu'];
        $result['bumen'] = $rycb['bumen'];
        $result['xingming'] = $rycb['xingming'];
        $result['shenfenzhm'] = $rycb['shenfenzhm'];
        $result['zhiwei'] = $rycb['zhiwu'];
        $result['gangweilx'] = $rycb['gangweilx'];
        $result['zaizhizt'] = $rycb['leixing'];
        $result['ruzhisj'] = $rycb['ruzhirq'];
        $result['erjibm'] = $rycb['erjibm'];
        $result['diyixlbysj'] = $rycb['diyixlbysj'];
        $result['xuelihyyz8zjnx'] = '';
        $result['rushutqnxzd'] = round(( strtotime($result['ruzhisj']) - strtotime($result['diyixlbysj']) ) / 3600 / 24 / 365 * 0.8,1);
        $result['gongzuonx'] = '';
        $result['biyegznx'] = '';
        $result['yingchuqts'] = '';
        $result['shijichuqints'] = '';
        $result['nianxianjcamb'] = '';
        $result['shoufeikcdbxss'] = '';
        $result['qizhongjddbxss'] = '';
        $result['xiaoshis'] = '';
        $result['amibtzbl'] = '';
        //获取老师续费率和续费率人头结算
        $lsxfl = $this->getLsxfl($qishu,$sid);
        foreach($lsxfl as $vs){
            if($vs['xingming'] == $result['xingming']){
                $result['xiaoxuezh'] = $vs['xx_zonghexfl'];
                $result['chuzhongzh'] = $vs['cz_zonghexfl'];
                $result['xufeilrtkffc'] = $vs['zongkoufa'];
            }
            if($result['zhiwei'] == '教务主任' || $result['zhiwei'] == '教学组长'){
                // $result['tuanduixflrtkhfc'] += $vs['zongkoufa'];
                $result['jidukhrt'] += $vs['zongkoufa'];//补逻辑  季度考核人头
            }
        }
        $result['xiaoxuezh'] = $vs['xx_zonghexfl'] ?  $vs['xx_zonghexfl'] : '60%';
        $result['chuzhongzh'] = $vs['cz_zonghexfl'] ? $vs['cz_zonghexfl'] : '50%';

        //标准收入提成比
        $result['xiaoxue'] = '';
        $result['chuzhong'] = '';

        $result['wanchenggs'] = '';
        $result['alibtzbl2'] = '';
        $result['defen'] = '';
        $result['alibtzbl3'] = '';
        $result['xiaoxue2'] = '';
        $result['chuzhong2'] = '';
        $result['xiaoxueskrcxs'] = M('lsqrsr')->where(array('suoshudd'=>$lsqrsr_id,'xingming'=>$result['xingming'],'banxing'=>'小学部'))->getField('zongrencxs');
        $result['chuzhongskrcxs'] = M('lsqrsr')->where(array('suoshudd'=>$lsqrsr_id,'xingming'=>$result['xingming'],'banxing'=>'初中部'))->getField('zongrencxs');
        $result['rencixspjdj'] = '';
        $result['amibqrsr'] = '';
        $result['amibfc'] = '';
        $ydybkzzj_id = $this->getQishuId($qishu,$sid,45);
        //一对一
        if($ydybkzzj_id){
            $ydybkzzj = M('ydybkzztz')->field('yuefen,laoshixm,jianglibz')->where("suoshudd=$ydybkzzj_id")->select();
            foreach($ydybkzzj as $vx){
                if ($vx['laoshixm'] == $result['xingming'] && $vx['yuefen'] == $yuefen){
                    $result['yiduiybkzzjlfc'] += $vx['jianglibz'];
                }
            }
        }else{
            $result['yiduiybkzzjlfc'] = '';//一对一
        }
        //教务奖励台账
        $jwjltz_id = $this->getQishuId($qishu,$sid,46);
        if($jwjltz_id){
            $jwjltz = M('jwjltz')->field('yuefen,jingduls,jianglije')->where("suoshudd=$jwjltz_id")->select();
            foreach($jwjltz as $vx){
                if ($vx['jingduls'] == $result['xingming'] && $vx['yuefen'] == $yuefen){
                    $result['jiaowujlfc'] += $vx['jianglije'];
                }
            }
        }else{
            $result['jiaowujlfc'] = '';//教务奖励台账
        }
        $zjyye = $this->getYyetcjszj($qishu,$sid);
        $msyye = $this->getYyetcjsms($qishu,$sid);
        foreach($zjyye['data'] as $val){
            if($val['laoshi'] == $result['xingming']){
                $result['zhengjiaxsxfyyefc'] = $val['ticheng'];
            }
        }
        foreach($msyye['data'] as $val){
            if($val['laoshi'] == $result['xingming']){
                $result['miaoshazhyyejsfc'] = $val['ticheng'];
            }
        }
        if($result['zhiwei'] == '教学组长' || $result['zhiwei'] == '教务主任'){
            $result['xufeiyye'] = round($zjyye['tchj'],2);//补逻辑  续费营业额
        }
        $result['bumenambpjfc'] = '';//对逻辑
        if($result['zhiwei'] == '教务主任'){
            $jxzr = $this->getJxzrData('',$qishu,$sid);
            $scyjb = M('scyjb')->field('hejiyye')->where("suoshudd='$scyjb_id'")->select();
            foreach($scyjb as $val){
                $hejiyye += $val['hejiyye'];
            }
            $result['baohel'] = $jxzr['baohelv'];
            $result['baohelkhfc'] = $jxzr['bhlkhfc'];
            $result['benyueysje'] = $hejiyye;
            $result['shangyuemzjzds'] = $jxzr['symzjzds'];
            $result['yuemozjzds'] = $jxzr['ymzjzds'];
            $result['zhengjiazdgmbh'] = $jxzr['zhengjiazdgmbh'];
            $result['yuemozjzdsjlfc'] = $jxzr['yuemozjzdsjlfc'];
        }
        $result['xinshengwjbb'] = '';
        $result['xufeilvrtkf'] = '';
        $this->ajaxreturn($result);
    }

    //市场部提交
    public function saves(){
        $data = json_decode($_POST['jsons']);
        $pz_json = json_decode($_POST['pz_json'],true); 
        $qishu = $_POST['qishu'];
        $sid = $_POST['sid'];
        $suoshudd = $this->getQishuId($qishu,$sid,18);
        if (!$suoshudd){
            $suoshudd = $this->insertQishuHistory(18,$qishu,$sid);
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
        M('jxbgz')->where("suoshudd='$suoshudd'")->delete();
        M('jxbgz_pz')->where("qishu=$qishu and sid=$sid")->delete();
        $list = array();
        $field = M('')->query("SELECT COLUMN_NAME from information_schema.COLUMNS where table_name = 'stjy_jxbgz' and table_schema ='stjy' and COLUMN_NAME != 'id' and COLUMN_NAME != 'suoshudd' and COLUMN_NAME != 'daorusj' and COLUMN_NAME != 'status'");
        $field2 = $field;
        foreach($data as $key=>$val){
            $j=0;
            if ($val['0'] == '合计'){
                for($i=0;$i<32;$i++){
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
                $res = M('jxbgz')->add($list[$key]);
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
                M('jxbgz_pz')->add($list[$key]);
            }
        }
        $this->ajaxReturn(1);
        // $this->success('保存成功');
    }

    //根据区域获取单价
    public function getDanjia(){
        $quyu = $_POST['quyu'];
        $tdambfc = M('jcxxb')->order('id')->select();
        $data['status'] = 'true';
        $data['danjia'] = 0;
        foreach($tdambfc as $val){
            if ($val['quyu'] == $quyu){
                $data['danjia'] = $val['querendj'];
            }
        }
        $this->ajaxReturn($data);
    }

    //基础数据
    public function jichudata(){
        $data = array();
        $data['nianxiandata'] = array(
            array('nianxian' => 0,"bili"=>0),
            array('nianxian' => 0.5,"bili"=>0),
            array('nianxian' => 1,"bili"=>0),
            array('nianxian' => 2,"bili"=>0.002),
            array('nianxian' => 3,"bili"=>0.004),
            array('nianxian' => 4,"bili"=>0.008),
            array('nianxian' => 9,"bili"=>0.008),
        );

        $data['xxbzsrtcbdata'] = array(
            "0" => array('0-9'=>"0.2",'9-11'=>"0.21",'jd6'=>"0.25",'jd3-5'=>"0.24",'jd3'=>"0.22"),
            "60" => array('0-9'=>"0.24",'9-11'=>"0.24",'jd6'=>"0.28",'jd3-5'=>"0.27",'jd3'=>"0.25"),
            "1000" => array('0-9'=>"",'9-11'=>"",'jd6'=>"",'jd3-5'=>"",'jd3'=>""),
        );

        $data['czbzsrtcbdata'] = array(
            "0" => array('0-9'=>"0.2",'9-11'=>"0.21",'jd6'=>"0.25",'jd3-5'=>"0.24",'jd3'=>"0.22"),
            "50" => array('0-9'=>"0.24",'9-11'=>"0.24",'jd6'=>"0.28",'jd3-5'=>"0.27",'jd3'=>"0.25"),
            "1000" => array('0-9'=>"",'9-11'=>"",'jd6'=>"",'jd3-5'=>"",'jd3'=>""),
        );

        //技能评分
        $data['jinengpf'] = array(
            "0" => '-0.05',
            "60" => '-0.03',
            "70" => '0',
            "80" => '0.03',
            "90" => '0.05',
            "100" => '-0.05',
        );

        //团队收入提成比
        $data['tdsrtcb'] = array(
            "0" => array("zhuren"=>"0.01","zuzhang"=>"0.011"),
            "1" => array("zhuren"=>"0.013","zuzhang"=>"0.015"),
            "2" => array("zhuren"=>"0.017","zuzhang"=>"0.019"),
            "3" => array("zhuren"=>"0.018","zuzhang"=>"0.021"),
            "4" => array("zhuren"=>"0.02","zuzhang"=>"0.023"),
            "5" => array("zhuren"=>"0.021","zuzhang"=>"0.025")
        );

        //团队阿米巴分成
        $data['tdambfc'] = M('jcxxb')->order('id')->select();
        //饱和率
        $data['ablbhl'] = M('bhl')->order('id')->select();
        return $data;
    }

    //获得小学标准收入提成比
    public function getXxbzsrtcb($r = '10',$s = '5.5',$xxzh = '55%',$biyegznx='3'){
        $r = $_POST['r'];
        $s = $_POST['s'];
        $xxzh = $_POST['xxzh'];
        $biyegznx = $_POST['biyegznx'];
        $xxzh = substr($xxzh,0,-1);
        $bzsrtcb = M('bzsrtcb')->order('id')->select();
        $result = array();
        $lanmu = $bzsrtcb[0];
        unset($bzsrtcb[0]);
        foreach($bzsrtcb as $val){
            $val['xvfeilv'] = substr($val['xvfeilv'],0,-1);
            $tmp = $xxzh.$val['xvfeilv'];
            $tmp = eval("return $tmp;");
            $tmp2 = $biyegznx.$val['biyegznx'];
            $tmp2 = eval("return $tmp2;");
            if($val['bumen'] == '小学' && $tmp && $tmp2){
                $result = $val;
            }
        }
        $res = '';
        $tp1 = $lanmu['dyy'];
        $tp2 = $lanmu['djgyy'];
        $tp3 = $lanmu['lgj'];
        $tp4 = $lanmu['ljd'];
        $tp5 = $lanmu['sgwjd'];
        $tp6 = $lanmu['syxjd'];
        if(eval("return $r$tp1;")){
            $res = $result['dyy'];
        }
        if(eval("return $r$tp2;")){
            $res = $result['jgy'];
        }
        if(eval("return $r$tp3;")){
            $res = $result['lgj'];
        }
        if(!$res){
            if(eval("return $r$tp4;")){
                $res = $result['ljd'];
            }
            if(eval("return $r$tp5;")){
                $res = $result['sgwjd'];
            }
            if(eval("return $r$tp6;")){
                $res = $result['syxjd'];
            }
        }
        $array= array(
            "status" => true,
            "data" => $res
        );
        $this->ajaxReturn($array);
    }

    //初中标准收入提成比
    public function getCzbzsrtcb($r = '13.3',$s = '10.5',$xxzh = '0.5',$biyegznx='3'){
        $r = $_POST['r'];
        $s = $_POST['s'];
        $xxzh = $_POST['xxzh'];
        $biyegznx = $_POST['biyegznx'];
        $xxzh = substr($xxzh,0,-1);
        $bzsrtcb = M('bzsrtcb')->order('id')->select();
        $result = array();
        $lanmu = $bzsrtcb[0];
        unset($bzsrtcb[0]);
        foreach($bzsrtcb as $val){
            $val['xvfeilv'] = substr($val['xvfeilv'],0,-1);
            $tmp = $xxzh.$val['xvfeilv'];
            $tmp = eval("return $tmp;");
            $tmp2 = $biyegznx.$val['biyegznx'];
            $tmp2 = eval("return $tmp2;");
            if($val['bumen'] == '初中' && $tmp && $tmp2){
                $result = $val;
            }
        }
        $res = '';
        $tp1 = $lanmu['dyy'];
        $tp2 = $lanmu['djgyy'];
        $tp3 = $lanmu['lgj'];
        $tp4 = $lanmu['ljd'];
        $tp5 = $lanmu['sgwjd'];
        $tp6 = $lanmu['syxjd'];
        if(eval("return $r$tp1;")){
            $res = $result['dyy'];
        }
        if(eval("return $r$tp2;")){
            $res = $result['jgy'];
        }
        if(eval("return $r$tp3;")){
            $res = $result['lgj'];
        }
        if(!$res){
            if(eval("return $r$tp4;")){
                $res = $result['ljd'];
            }
            if(eval("return $r$tp5;")){
                $res = $result['sgwjd'];
            }
            if(eval("return $r$tp6;")){
                $res = $result['syxjd'];
            }
        }
        $array= array(
            "status" => true,
            "data" => $res
        );
        $this->ajaxReturn($array);
    }

    //技能评分比例
    public function getJnpfbl($defen = 85){
        $defen = I('defen',85);
        $jcsj = M('jnpfamb')->order('id')->select();
        foreach ($jcsj as $k=>$v){
            $tmp = $defen.$v['dasaidf'];
            if(eval("return $tmp;")){
                $res = $v['amibtzbl'];
            }
        }
        $array= array(
            "status" => true,
            "data" => $res
        );
        $this->ajaxReturn($array);
    }

    //团队收入提成比
    public function getTdsrbl($nianxian = "0.3" , $zhiwei = "教务主任"){
        $nianxian = $_POST['nianxian'];
        $zhiwei = $_POST['zhiwei'];
        $jcsj = $this->jichudata();
        $data = $jcsj['tdsrtcb'];
        foreach ($data as $k=>$v){
            if($zhiwei == "教务主任"){
                $d = $v['zhuren'];
            }else{
                $d = $v['zuzhang'];
            }
        }
        $d = number_format($d,4);
        $this->ajaxReturn($d);
        // return $d;
    }

    //团队阿米巴分成
    public function getTdambfc($sname = "番禺喜盈中心",$zhiwei = "教务主任",$tdqrsr = "1000" , $tdsrtcb = "0.02"){
        $sname = $_POST['sname'];
        $zhiwei = $_POST['zhiwei'];
        $tdqrsr = $_POST['tdqrsr'];
        $tdsrtcb = $_POST['tdsrtcb'];
        $name = mb_substr($sname,0,2);
        $num = $tdqrsr * $tdsrtcb;
        $jcsj = $this->jichudata();
        $data = $jcsj['tdambfc'];
        $d = array();
        foreach ($data as $tmp){
            if(mb_strpos($tmp['quyu'],$name)){
                $d = $tmp;
                break;
            }
        }

        if(!$d)
            return array(
                "status" => false,
                "data" => "没有数据"
            );

        $n = 0;
        if($zhiwei == "教务主任"){
            if($num < $tmp['jiaowuzrfd']){
                $n = $num;
            }else {
                $n = $tmp['jiaowuzrfd'];
            }
        }else{
            if($num < $tmp['zuzhangfd']){
                $n = $num;
            }else {
                $n = $tmp['zuzhangfd'];
            }
        }

        $array = array(
            "status" => true,
            "data" => $n
        );
        $this->ajaxReturn($array);
    }

    //获得教学主任相关数据
    public function getJxzrData($bumenambpjzfc = 0,$qishu = '201901',$sid = "15",$quyu = '广州'){
        $tid = 12;  //经营数据表
        $data = array();
        $suoshudd = $this->getQishuId($qishu,$sid,$tid);
        $nianfen = substr($qishu,0,4);

        $d = $this->jichudata();
        $tdambfc = $d['tdambfc'];//团队阿米巴
        $bjzysjb_id = $this->getQishuId($qishu,$sid,12);

        //获得饱和率
        $bhl = M('bjzysjb')->where("suoshudd=$bjzysjb_id and bumen='总计'")->getField('banjibhl');
        $data['baohelv'] = $bhl?$bhl:0;//饱和率

        //饱和率考核分成
        // $sname = M("school")->where("id = $sid")->getField("name");
        // $name = mb_substr($sname,0,2);
        $leibie = '';
        $bhlkhfc = 0;
        foreach ($tdambfc as $tmp){
            if($tmp['quyu']==$quyu){
                $leibie = $tmp['jibie'];
                break;
            }
        }
        $bhl_set = M('bhl')->where(array('leibie'=>$leibie))->order('id')->select();
        foreach($bhl_set as $val){
            $tmp = $bhl.$val['qujian'];
            if(eval("return $tmp;")){
                $bhlkhfc = $val['shuzhi'];
            }
        }

        $data['bhlkhfc'] = $bhlkhfc;

        //上月末在读数
        $sy_qishu = date('Ym',strtotime(substr($qishu,0,4).'-'.substr($qishu,4,2).'-01 -1 month'));
        $sy_miaosha = $this->miaosha($sy_qishu,$sid);
        $sy_miaosha = $sy_miaosha ? $sy_miaosha : array('1');
        $sy_nian = substr($sy_qishu,0,4);
        $sy_xyxxb_id = $this->getQishuId($sy_qishu,$sid,1);
        $data['symzjzds'] = M('xyxxb_'.$sy_nian)->where(array('zhuangtai'=>'在读','suoshudd'=>$sy_xyxxb_id,'xuehao'=>array('not in',$sy_miaosha)))->count();
        //本月在读数
        $miaosha = $this->miaosha($qishu,$sid);
        $miaosha = $miaosha ? $miaosha : array('1');
        $nian = substr($qishu,0,4);
        $xyxxb_id = $this->getQishuId($qishu,$sid,1);
        $data['ymzjzds'] = M('xyxxb_'.$nian)->where(array('zhuangtai'=>'在读','suoshudd'=>$xyxxb_id,'xuehao'=>array('not in',$miaosha)))->count();
        $data['zhengjiazdgmbh'] = $data['ymzjzds'] - $data['symzjzds'];

        //正价奖励分成
        if($data['zhengjiazdgmbh'] >= 0){
            if($leibie == 'A类' || $leibie == 'A+类' || $leibie == 'A-类'){
                if($data['benyueysje'] >= 600000){
                    if($data['ymzjzds']<=300){
                        $data['yuemozjzdsjlfc'] = $data['zhengjiazdgmbh'] * 300;
                    }else if($data['symzjzds']>=300){
                        $data['yuemozjzdsjlfc'] = $data['zhengjiazdgmbh'] * 200;
                    }else{
                        $data['yuemozjzdsjlfc'] = ($data['ymzjzds']-300)*200+(300-$data['symzjzds'])*30;
                    }
                }else{
                    if($data['ymzjzds']<=300){
                        $data['yuemozjzdsjlfc'] = $data['zhengjiazdgmbh'] * 300 * 0.5;
                    }else if($data['symzjzds']>=300){
                        $data['yuemozjzdsjlfc'] = $data['zhengjiazdgmbh'] * 200 * 0.5;
                    }else{
                        $data['yuemozjzdsjlfc'] = ($data['ymzjzds']-300)*200*0.5+(300-$data['symzjzds'])*30*0.5;
                    }
                }
            }else if($leibie == 'B类'){
                if($data['benyueysje'] >= 600000){
                    if($data['ymzjzds']<=300){
                        $data['yuemozjzdsjlfc'] = $data['zhengjiazdgmbh'] * 300*0.8;
                    }else if($data['symzjzds']>=300){
                        $data['yuemozjzdsjlfc'] = $data['zhengjiazdgmbh'] * 200*0.8;
                    }else{
                        $data['yuemozjzdsjlfc'] = ($data['ymzjzds']-300)*200+(300-$data['symzjzds'])*30*0.8;
                    }
                }else{
                    if($data['ymzjzds']<=300){
                        $data['yuemozjzdsjlfc'] = $data['zhengjiazdgmbh'] * 300 * 0.5*0.8;
                    }else if($data['symzjzds']>=300){
                        $data['yuemozjzdsjlfc'] = $data['zhengjiazdgmbh'] * 200 * 0.5*0.8;
                    }else{
                        $data['yuemozjzdsjlfc'] = ($data['ymzjzds']-300)*200*0.5*0.8+(300-$data['symzjzds'])*30*0.5*0.8;
                    }
                }
            }else if($leibie == 'C类'){
                if($data['benyueysje'] >= 600000){
                    if($data['ymzjzds']<=500){
                        $data['yuemozjzdsjlfc'] = $data['zhengjiazdgmbh'] * 18;
                    }else if($data['symzjzds']>=500){
                        $data['yuemozjzdsjlfc'] = $data['zhengjiazdgmbh'] * 120;
                    }else{
                        $data['yuemozjzdsjlfc'] = ($data['ymzjzds']-500)*120+(500-$data['symzjzds'])*18;
                    }
                }else{
                    if($data['ymzjzds']<=500){
                        $data['yuemozjzdsjlfc'] = $data['zhengjiazdgmbh'] * 18 * 0.5;
                    }else if($data['symzjzds']>=500){
                        $data['yuemozjzdsjlfc'] = $data['zhengjiazdgmbh'] * 120 * 0.5;
                    }else{
                        $data['yuemozjzdsjlfc'] = ($data['ymzjzds']-500)*120*0.5+(500-$data['symzjzds'])*18*0.5;
                    }
                }
            }else if($leibie == 'D类'){
                if($data['benyueysje'] >= 600000){
                    if($data['ymzjzds']<=300){
                        $data['yuemozjzdsjlfc'] = $data['zhengjiazdgmbh'] * 8;
                    }else if($data['symzjzds']>=300){
                        $data['yuemozjzdsjlfc'] = $data['zhengjiazdgmbh'] * 54;
                    }else{
                        $data['yuemozjzdsjlfc'] = ($data['ymzjzds']-300)*54+(300-$data['symzjzds'])*8;
                    }
                }else{
                    if($data['ymzjzds']<=300){
                        $data['yuemozjzdsjlfc'] = $data['zhengjiazdgmbh'] * 8 *0.5;
                    }else if($data['symzjzds']>=300){
                        $data['yuemozjzdsjlfc'] = $data['zhengjiazdgmbh'] * 54*0.5;
                    }else{
                        $data['yuemozjzdsjlfc'] = ($data['ymzjzds']-300)*54*0.5+(300-$data['symzjzds'])*8*0.5;
                    }
                }
            }else{
                $data['yuemozjzdsjlfc'] = 0;
            }
        }else{
            if($leibie == 'A类' || $leibie == 'A+类' || $leibie == 'A-类'){
                if($data['symzjzds']<=300){
                    $data['yuemozjzdsjlfc'] = $data['zhengjiazdgmbh'] * 30;
                }else if($data['ymzjzds']>=300){
                    $data['yuemozjzdsjlfc'] = $data['zhengjiazdgmbh'] * 200;
                }else{
                    $data['yuemozjzdsjlfc'] = ($data['symzjzds']-300)*200+(300-$data['ymzjzds'])*30;
                }
            }else if($leibie == 'B类'){
                if($data['symzjzds']<=300){
                    $data['yuemozjzdsjlfc'] = $data['zhengjiazdgmbh'] * 30 * 0.8;
                }else if($data['ymzjzds']>=300){
                    $data['yuemozjzdsjlfc'] = $data['zhengjiazdgmbh'] * 200 * 0.8;
                }else{
                    $data['yuemozjzdsjlfc'] = ($data['symzjzds']-300)*200*0.8+(300-$data['ymzjzds'])*30*0.8;
                }
            }else if($leibie == 'C类'){
                if($data['symzjzds']<=500){
                    $data['yuemozjzdsjlfc'] = $data['zhengjiazdgmbh'] * 18;
                }else if($data['ymzjzds']>=500){
                    $data['yuemozjzdsjlfc'] = $data['zhengjiazdgmbh'] * 120;
                }else{
                    $data['yuemozjzdsjlfc'] = ($data['symzjzds']-500)*120+(500-$data['ymzjzds'])*18;
                }
            }else if($leibie == 'D类'){
                if($data['symzjzds']<=300){
                    $data['yuemozjzdsjlfc'] = $data['zhengjiazdgmbh'] * 8;
                }else if($data['ymzjzds']>=300){
                    $data['yuemozjzdsjlfc'] = $data['zhengjiazdgmbh'] * 54;
                }else{
                    $data['yuemozjzdsjlfc'] = ($data['symzjzds']-300)*54+(300-$data['ymzjzds'])*8;
                }
            }else{
                $data['yuemozjzdsjlfc'] = 0;
            }
        }
        return $data;
    }

    //秒杀详情 
    public function miaosha($qishu,$sid){
        if(substr($qishu,4,2) == '01'){
            $nian = substr($qishu,0,4) -1;
        }else{
            $nian = substr($qishu,0,4);
        }
        $xyfyyjb_id = $this->getQishuId($qishu,$sid,7);//学员费用预警表
        $list = M('xyfyyjb_'.$nian)->field('xuehao,xingming,kechengmc,shengyugmsl,shengyuzssl,feiyong')->where("suoshudd='$xyfyyjb_id'")->select();
        $miaosha = M('fxms')->field('shangkekc,danjia')->where("sid='$sid'")->find();
        $data = array();
        $xyfyyjb = array();
        foreach($list as $key=>$val){
            $xyfyyjb[$val['xuehao']]['zongshuliang'] += $val['shengyugmsl']+$val['shengyuzssl'];
            $xyfyyjb[$val['xuehao']]['zongfeiyong'] += $val['feiyong'];
        }
        foreach($list as $k=>$v){
            foreach($xyfyyjb as $key=>$val){
                if($v['xuehao'] == $key){
                    $val['danjia'] = round($val['zongfeiyong'] / $val['zongshuliang'],2);
                    $list[$k]['danjia'] = $val['danjia'];
                    if($val['zongshuliang'] <=$miaosha['shangkekc'] && $val['danjia'] <= $miaosha['danjia'] && $val['zongshuliang'] > 0){
                        $list[$k]['shifoums'] = '秒杀';
                        $list[$k]['zongfeiyong'] = $val['zongfeiyong'];
                        $list[$k]['zongshuliang'] = $val['zongshuliang'];
                        $data[] = $list[$k]['xuehao'];
                    }
                }
            }
        } 
        return $data;
    }


}
?>