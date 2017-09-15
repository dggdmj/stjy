<?php
namespace Admin\Action;
use Think\Action;
use Org\Util\Rbac;
class CommonAction extends Action {

    // -------------------汉语转拼音代码开始-------------------
    /**
     * 拼音字符转换图
     * @var array
     */
    /**
    * PHP 汉字转拼音
    * @author Jerryli(hzjerry@gmail.com)
    * @version V0.20140715
    * @package SPFW.core.lib.final
    * @global SEA_PHP_FW_VAR_ENV
    * @example
    *  echo CUtf8_PY::encode('阿里巴巴科技有限公司'); //编码为拼音首字母
    *  echo CUtf8_PY::encode('阿里巴巴科技有限公司', 'all'); //编码为全拼音
    */

    // 优化了传统的拼音转换处理类的算法，专门针对UTF-8字符集进行处理。
    // 如果你使用GBK或GB2312字符集，只需要去掉iconv函数，直接赋值，不需要转换就行。
    // 不多说了，直接上代码，完全开源你拿去直接用。如果你觉得有用，使用时请帮忙保留作者的信息。
    private static $_aMaps = array(
        'a'=>-20319,'ai'=>-20317,'an'=>-20304,'ang'=>-20295,'ao'=>-20292,
        'ba'=>-20283,'bai'=>-20265,'ban'=>-20257,'bang'=>-20242,'bao'=>-20230,'bei'=>-20051,'ben'=>-20036,'beng'=>-20032,'bi'=>-20026,'bian'=>-20002,'biao'=>-19990,'bie'=>-19986,'bin'=>-19982,'bing'=>-19976,'bo'=>-19805,'bu'=>-19784,
        'ca'=>-19775,'cai'=>-19774,'can'=>-19763,'cang'=>-19756,'cao'=>-19751,'ce'=>-19746,'ceng'=>-19741,'cha'=>-19739,'chai'=>-19728,'chan'=>-19725,'chang'=>-19715,'chao'=>-19540,'che'=>-19531,'chen'=>-19525,'cheng'=>-19515,'chi'=>-19500,'chong'=>-19484,'chou'=>-19479,'chu'=>-19467,'chuai'=>-19289,'chuan'=>-19288,'chuang'=>-19281,'chui'=>-19275,'chun'=>-19270,'chuo'=>-19263,'ci'=>-19261,'cong'=>-19249,'cou'=>-19243,'cu'=>-19242,'cuan'=>-19238,'cui'=>-19235,'cun'=>-19227,'cuo'=>-19224,
        'da'=>-19218,'dai'=>-19212,'dan'=>-19038,'dang'=>-19023,'dao'=>-19018,'de'=>-19006,'deng'=>-19003,'di'=>-18996,'dian'=>-18977,'diao'=>-18961,'die'=>-18952,'ding'=>-18783,'diu'=>-18774,'dong'=>-18773,'dou'=>-18763,'du'=>-18756,'duan'=>-18741,'dui'=>-18735,'dun'=>-18731,'duo'=>-18722,
        'e'=>-18710,'en'=>-18697,'er'=>-18696,
        'fa'=>-18526,'fan'=>-18518,'fang'=>-18501,'fei'=>-18490,'fen'=>-18478,'feng'=>-18463,'fo'=>-18448,'fou'=>-18447,'fu'=>-18446,
        'ga'=>-18239,'gai'=>-18237,'gan'=>-18231,'gang'=>-18220,'gao'=>-18211,'ge'=>-18201,'gei'=>-18184,'gen'=>-18183,'geng'=>-18181,'gong'=>-18012,'gou'=>-17997,'gu'=>-17988,'gua'=>-17970,'guai'=>-17964,'guan'=>-17961,'guang'=>-17950,'gui'=>-17947,'gun'=>-17931,'guo'=>-17928,
        'ha'=>-17922,'hai'=>-17759,'han'=>-17752,'hang'=>-17733,'hao'=>-17730,'he'=>-17721,'hei'=>-17703,'hen'=>-17701,'heng'=>-17697,'hong'=>-17692,'hou'=>-17683,'hu'=>-17676,'hua'=>-17496,'huai'=>-17487,'huan'=>-17482,'huang'=>-17468,'hui'=>-17454,'hun'=>-17433,'huo'=>-17427,
        'ji'=>-17417,'jia'=>-17202,'jian'=>-17185,'jiang'=>-16983,'jiao'=>-16970,'jie'=>-16942,'jin'=>-16915,'jing'=>-16733,'jiong'=>-16708,'jiu'=>-16706,'ju'=>-16689,'juan'=>-16664,'jue'=>-16657,'jun'=>-16647,
        'ka'=>-16474,'kai'=>-16470,'kan'=>-16465,'kang'=>-16459,'kao'=>-16452,'ke'=>-16448,'ken'=>-16433,'keng'=>-16429,'kong'=>-16427,'kou'=>-16423,'ku'=>-16419,'kua'=>-16412,'kuai'=>-16407,'kuan'=>-16403,'kuang'=>-16401,'kui'=>-16393,'kun'=>-16220,'kuo'=>-16216,
        'la'=>-16212,'lai'=>-16205,'lan'=>-16202,'lang'=>-16187,'lao'=>-16180,'le'=>-16171,'lei'=>-16169,'leng'=>-16158,'li'=>-16155,'lia'=>-15959,'lian'=>-15958,'liang'=>-15944,'liao'=>-15933,'lie'=>-15920,'lin'=>-15915,'ling'=>-15903,'liu'=>-15889,'long'=>-15878,'lou'=>-15707,'lu'=>-15701,'lv'=>-15681,'luan'=>-15667,'lue'=>-15661,'lun'=>-15659,'luo'=>-15652,
        'ma'=>-15640,'mai'=>-15631,'man'=>-15625,'mang'=>-15454,'mao'=>-15448,'me'=>-15436,'mei'=>-15435,'men'=>-15419,'meng'=>-15416,'mi'=>-15408,'mian'=>-15394,'miao'=>-15385,'mie'=>-15377,'min'=>-15375,'ming'=>-15369,'miu'=>-15363,'mo'=>-15362,'mou'=>-15183,'mu'=>-15180,
        'na'=>-15165,'nai'=>-15158,'nan'=>-15153,'nang'=>-15150,'nao'=>-15149,'ne'=>-15144,'nei'=>-15143,'nen'=>-15141,'neng'=>-15140,'ni'=>-15139,'nian'=>-15128,'niang'=>-15121,'niao'=>-15119,'nie'=>-15117,'nin'=>-15110,'ning'=>-15109,'niu'=>-14941,'nong'=>-14937,'nu'=>-14933,'nv'=>-14930,'nuan'=>-14929,'nue'=>-14928,'nuo'=>-14926,
        'o'=>-14922,'ou'=>-14921,
        'pa'=>-14914,'pai'=>-14908,'pan'=>-14902,'pang'=>-14894,'pao'=>-14889,'pei'=>-14882,'pen'=>-14873,'peng'=>-14871,'pi'=>-14857,'pian'=>-14678,'piao'=>-14674,'pie'=>-14670,'pin'=>-14668,'ping'=>-14663,'po'=>-14654,'pu'=>-14645,
        'qi'=>-14630,'qia'=>-14594,'qian'=>-14429,'qiang'=>-14407,'qiao'=>-14399,'qie'=>-14384,'qin'=>-14379,'qing'=>-14368,'qiong'=>-14355,'qiu'=>-14353,'qu'=>-14345,'quan'=>-14170,'que'=>-14159,'qun'=>-14151,
        'ran'=>-14149,'rang'=>-14145,'rao'=>-14140,'re'=>-14137,'ren'=>-14135,'reng'=>-14125,'ri'=>-14123,'rong'=>-14122,'rou'=>-14112,'ru'=>-14109,'ruan'=>-14099,'rui'=>-14097,'run'=>-14094,'ruo'=>-14092,
        'sa'=>-14090,'sai'=>-14087,'san'=>-14083,'sang'=>-13917,'sao'=>-13914,'se'=>-13910,'sen'=>-13907,'seng'=>-13906,'sha'=>-13905,'shai'=>-13896,'shan'=>-13894,'shang'=>-13878,'shao'=>-13870,'she'=>-13859,'shen'=>-13847,'sheng'=>-13831,'shi'=>-13658,'shou'=>-13611,'shu'=>-13601,'shua'=>-13406,'shuai'=>-13404,'shuan'=>-13400,'shuang'=>-13398,'shui'=>-13395,'shun'=>-13391,'shuo'=>-13387,'si'=>-13383,'song'=>-13367,'sou'=>-13359,'su'=>-13356,'suan'=>-13343,'sui'=>-13340,'sun'=>-13329,'suo'=>-13326,
        'ta'=>-13318,'tai'=>-13147,'tan'=>-13138,'tang'=>-13120,'tao'=>-13107,'te'=>-13096,'teng'=>-13095,'ti'=>-13091,'tian'=>-13076,'tiao'=>-13068,'tie'=>-13063,'ting'=>-13060,'tong'=>-12888,'tou'=>-12875,'tu'=>-12871,'tuan'=>-12860,'tui'=>-12858,'tun'=>-12852,'tuo'=>-12849,
        'wa'=>-12838,'wai'=>-12831,'wan'=>-12829,'wang'=>-12812,'wei'=>-12802,'wen'=>-12607,'weng'=>-12597,'wo'=>-12594,'wu'=>-12585,
        'xi'=>-12556,'xia'=>-12359,'xian'=>-12346,'xiang'=>-12320,'xiao'=>-12300,'xie'=>-12120,'xin'=>-12099,'xing'=>-12089,'xiong'=>-12074,'xiu'=>-12067,'xu'=>-12058,'xuan'=>-12039,'xue'=>-11867,'xun'=>-11861,
        'ya'=>-11847,'yan'=>-11831,'yang'=>-11798,'yao'=>-11781,'ye'=>-11604,'yi'=>-11589,'yin'=>-11536,'ying'=>-11358,'yo'=>-11340,'yong'=>-11339,'you'=>-11324,'yu'=>-11303,'yuan'=>-11097,'yue'=>-11077,'yun'=>-11067,
        'za'=>-11055,'zai'=>-11052,'zan'=>-11045,'zang'=>-11041,'zao'=>-11038,'ze'=>-11024,'zei'=>-11020,'zen'=>-11019,'zeng'=>-11018,'zha'=>-11014,'zhai'=>-10838,'zhan'=>-10832,'zhang'=>-10815,'zhao'=>-10800,'zhe'=>-10790,'zhen'=>-10780,'zheng'=>-10764,'zhi'=>-10587,'zhong'=>-10544,'zhou'=>-10533,'zhu'=>-10519,'zhua'=>-10331,'zhuai'=>-10329,'zhuan'=>-10328,'zhuang'=>-10322,'zhui'=>-10315,'zhun'=>-10309,'zhuo'=>-10307,'zi'=>-10296,'zong'=>-10281,'zou'=>-10274,'zu'=>-10270,'zuan'=>-10262,'zui'=>-10260,'zun'=>-10256,'zuo'=>-10254
    );

    /**
     * 将中文编码成拼音
     * @param string $utf8Data utf8字符集数据
     * @param string $sRetFormat 返回格式 [head:首字母|all:全拼音]
     * @return string
     */
    public static function encode($utf8Data, $sRetFormat='all'){
        $sGBK = iconv('UTF-8', 'GBK', $utf8Data);
        $aBuf = array();
        for ($i=0, $iLoop=strlen($sGBK); $i<$iLoop; $i++) {
            $iChr = ord($sGBK{$i});
            if ($iChr>160)
                $iChr = ($iChr<<8) + ord($sGBK{++$i}) - 65536;
            if ('head' === $sRetFormat)
                $aBuf[] = substr(self::zh2py($iChr),0,1);
            else
                $aBuf[] = self::zh2py($iChr);
        }
        // if ('head' === $sRetFormat)
        //     return implode('', $aBuf);
        // else
        //     return implode(' ', $aBuf);
        return implode('', $aBuf);
    }

    /**
     * 中文转换到拼音(每次处理一个字符)
     * @param number $iWORD 待处理字符双字节
     * @return string 拼音
     */
    private static function zh2py($iWORD) {
        if($iWORD>0 && $iWORD<160 ) {
            return chr($iWORD);
        } elseif ($iWORD<-20319||$iWORD>-10247) {
            return '';
        } else {
            foreach (self::$_aMaps as $py => $code) {
                if($code > $iWORD) break;
                $result = $py;
            }
            return $result;
        }
    }
    // -------------------汉语转拼音代码结束-------------------

	protected function _initialize() {
		/*
		if (!isset($_SESSION['uid']) || !isset($_SESSION['username'])) {
			$this->redirect('Admin/Login/index');
		}
		*/
		if(!isset($_SESSION[C('USER_AUTH_KEY')])) {
			$this->redirect('Login/index');
		}
		$notAuth=in_array(MODULE_NAME,explode(',',C('NOT_AUTH_MODULE')))||in_array(ACTION_NAME,explode(',',C('NOT_AUTH_ACTION')));
		if(C('USER_AUTH_ON')&&!$notAuth) {
			RBAC::AccessDecision()||$this->error('没有权限');
		}
		if(!(APP_NAME == 'admin' && CONTROLLER_NAME == 'Login')){
			//赋值当前菜单
	        if(method_exists($this,'_infoModule')){
	            $this->infoModule = $this->_infoModule();
	        }
    	}
	}

	/**
     * 后台模板显示 调用内置的模板引擎显示方法，
     * @access protected
     * @param string $tpl 指定要调用的模板文件
     * @return void
     */
    protected function adminDisplay($tpl = '') {
        //复制当前URL
        $this->assign('self',__SELF__);
        $common = $this->fetch('Index/common');
        $tplArray = get_method_array($tpl);
        $tpl = $tplArray['controller'] . '/' . $tplArray['action'];
        $html = $this->fetch($tpl);
        echo str_replace('<!--common-->', $html, $common);
    }

    /**
     * 图片上传
     * @access protected
     * @param string void
     * @return void
     */
    function uploads() {
        $config = array(
            'maxSize' => 3145728,    // 设置附件上传大小
            'exts' => array('jpg', 'gif', 'png', 'jpeg'),    // 设置附件上传类型
        );
        $upload = new \Think\Upload($config);// 实例化上传类

        // 上传文件
        $info   =   $upload->uploadOne($_FILES['file']);
        if(!$info) {	// 上传错误提示错误信息
            $return['status'] = 0;
            $return['info'] = $this->Error();
        }else{	// 上传成功
            //$this->success('站点配置成功！');
            $return['status'] = 1;
            $return['path'] = $info['savepath'].$info['savename'];
        }
        $this->ajaxReturn($return);
    }

    // 获取班级编码对应的数据,如'K01' => array(),K01为班级编码前三位
    public function getBjbm(){
        $data = M('banjibianhao')->select();
        foreach($data as $v){
            $temp[strtolower($v['jingdujb'])] = $v;
        }
        return $temp;
    }

    // 获取表明与id对应的一维数组
    // $sign:1取拼音名,2取中文名
    // $array传需要获取表格名的数组,1,导入表;2生成表;3,附加表;4,工资表
    public function getTabelnames($sign=1,$array=array(1,3)){
        $map['type'] = array('in',$array);
        // 查询出所有导入表
        if($sign == 1){
            $tablenames = M('table_name')->field('id,table_name')->where($map)->select();
        }elseif($sign == 2){
            $tablenames = M('table_name')->field('id,name')->where($map)->select();
        }

        foreach($tablenames as $v){
            $id = $v['id'];
            if($sign == 1){
                $arr[$id] = $v['table_name'];
            }elseif($sign == 2){
                $arr[$id] = $v['name'];
            }
        }
        return $arr;
    }

    // 获取当前操作用户的用户id
    public function getUid(){
        $username = $_SESSION['username'];// 从session获取用户名
        $uid = M('admin')->where('username ="'.$username.'"')->getField('id');// 获取admin表的用户id
        return $uid;
    }

    // 获取当前操作用户的角色id
    public function getRid(){
        $uid = $this->getUid();// 获取admin表的用户id
        $rid = M('role_user')->where('user_id ='.$uid)->getField('role_id');// 获取角色id
        return $rid;
    }

    //返回数据表中以注释为键，字段名为值的数组,例如： ["姓名" => string(8) "xingming"]
    public function getComment($table_name){
        $temp = M($table_name)->query("SHOW FULL COLUMNS FROM stjy_".$table_name);
        foreach($temp as $v){
            $field[]=trim($v['field']);
            $comment[]=trim($v['comment']);
        }
        return array_combine($comment,$field);
    }

    // 获取当前期数和校区
    public function getInfo($qishu,$sid){
        $arr['year'] = substr($qishu,0,4);
        $arr['month'] = substr($qishu,4,2);
        $arr['school'] = M('school')->where('id ='.$sid)->getField('name');
        return $arr;
    }

    // 获取上一月或下一月
    // $sign默认为1,则得出上一个月,若想得出下一个月则设置为0
    public function getMonth($qishu,$sign=1){
        //切割出年份
        $tmp_year = substr($qishu,0,4);
        //切割出月份
        $tmp_mon = substr($qishu,4,2);

        if($tmp_mon == 12){
            $tmp_nextmonth = mktime(0,0,0,1,1,$tmp_year+1);
        }else{
            $tmp_nextmonth = mktime(0,0,0,$tmp_mon+1,1,$tmp_year);
        }
        if($tmp_mon == 1){
            $tmp_forwardmonth=mktime(0,0,0,12,1,$tmp_year-1);
        }else{
            $tmp_forwardmonth=mktime(0,0,0,$tmp_mon-1,1,$tmp_year);
        }

        if($sign==0){
            //得到当前月的下一个月
            return $fm_next_month=date("Ym",$tmp_nextmonth);
        }else{
            //得到当前月的上一个月
            return $fm_forward_month=date("Ym",$tmp_forwardmonth);
        }
    }

    // phpexcel正确读取日期时间函数
    function excelTime($date, $time = false) {
        if(function_exists('GregorianToJD')){
            if (is_numeric( $date )) {
                $jd = GregorianToJD( 1, 1, 1970 );
                $gregorian = JDToGregorian( $jd + intval ( $date ) - 25569 );
                $date = explode( '/', $gregorian );
                $date_str = str_pad( $date [2], 4, '0', STR_PAD_LEFT )
                ."-". str_pad( $date [0], 2, '0', STR_PAD_LEFT )
                ."-". str_pad( $date [1], 2, '0', STR_PAD_LEFT )
                . ($time ? " 00:00:00" : '');
                return $date_str;
            }
        }else{
            $date=$date>25568?$date+1:25569;
            /*There was a bug if Converting date before 1-1-1970 (tstamp 0)*/
            $ofs=(70 * 365 + 17+2) * 86400;
            $date = date("Y-m-d",($date * 86400) - $ofs).($time ? " 00:00:00" : '');
        }
        return $date;
    }

    // 查询本期班级学员信息表所有学员的学号
    public function getStu($qishu,$sid,$tid=3){
        $where['qishu'] = $qishu;
        $where['sid'] = $sid;
        $where['tid'] = $tid;
        $id = M('qishu_history')->where($where)->getField('id');
        $tbnames = $this->getTabelnames();
        if(!empty($id)){
            $stu = M($tbnames[$tid])->where('suoshudd ='.$id)->field('xuehao')->select();
            // dump($stu);
            foreach($stu as $v){
                $xueyuan[] = $v['xuehao'];
            }
            return $xueyuan;
        }else{
            return false;
        }

    }


    // 取得每个班级的统计结果
    public function getHeji($arr){
        $heji['youeryuan'] = 0;
        foreach($arr as $v){
            // if($v['nianji'] == '小班' or $v['nianji'] == '中班' or $v['nianji'] == '大班'){
            //     $heji['youeryuan'] += $v['count'];
            // }else{
            //     $heji[$this->encode($v['nianji'],'all')] = $v['count'];
            // }
            switch($v['nianji']){
                case '小班':
                case '中班':
                case '大班':
                    $heji['youeryuan'] += $v['count'];
                break;
                case '一年级':
                case '二年级':
                case '三年级':
                case '四年级':
                case '五年级':
                case '六年级':
                case '初一':
                case '初二':
                    $heji[$this->encode($v['nianji'],'all')] = $v['count'];
                break;
                // case '一年级':
                //     $heji['yinianji'] = $v['count'];
                // break;
                // case '二年级':
                //     $heji['ernianji'] = $v['count'];
                // break;
                // case '三年级':
                //     $heji['sannianji'] = $v['count'];
                // break;
                // case '四年级':
                //     $heji['sinianji'] = $v['count'];
                // break;
                // case '五年级':
                //     $heji['wunianji'] = $v['count'];
                // break;
                // case '六年级':
                //     $heji['liunianji'] = $v['count'];
                // break;
                // case '初一':
                //     $heji['chuyi'] = $v['count'];
                // break;
                // case '初二':
                //     $heji['chuer'] = $v['count'];
                // break;
                default:
                    $heji['chuerys'] += $v['count'];
                break;
            }
        }
        $heji['heji'] = 0;
        foreach($heji as $v){
            $heji['heji'] += $v;
        }
        return $heji;
    }

    // -------------------总表操作开始-------------------
    // 生成业绩表
    public function create(){
        $tablenames = $this->getTabelnames(1,[1,3,4]);// 获取序号和表明对应的一维数组
        $field = implode(',',$tablenames);// 组成筛选条件
        $data = M('sjzb')->field($field)->where($_GET)->find();// 获取表格导入情况

        // 查询学校是否需要上传社保明细表和公积金明细表
        $data2 = M('school')->field('isshebao,isgongjijin')->where('id = '.$_GET['sid'])->find();
        // dump($data2);die;
        if($data2['isshebao'] == 1){
            $shebao = 2;
        }else{
            $shebao = 0;
        }
        if($data2['isgongjijin'] == 1){
            $gongjijin = 2;
        }else{
            $gongjijin = 0;
        }
        $need = 16 + $shebao + $gongjijin;
        // 若所有表格导入再进行操作
        $count = 0;
        $i = 1;
        // 计算出所有上传表格的状态,表格上传状态为2,若所有表格上传,即是2*7=14,所有$count=14是左右表格都上传的状态
        foreach($data as $v){
           $count += $v;
           $i++;
        }
        if($count == $need){
            $temp['time_xz'] = date('Y-m-d H:i:s');
            $temp['status_xz'] = 2;
            $temp['status_xzjl'] = 1;
            $temp['xingzheng'] = M('admin')->where('username ="'.$_SESSION['username'].'"')->getField('nicename');
            M('sjzb')->where($_GET)->save($temp);// 更新数据总表

            // 将生成表数据写入数据库并让表格可以下载
            // $uid = $this->getUid();// 获取生成表格的行政uid
            $qishu = $_GET['qishu'];
            $sid = $_GET['sid'];

            // 生成数据入库
            $this->AlltoDb($qishu,$sid);

            $arr['status'] = true;
            $arr['info'] = '操作成功';
            $this->ajaxReturn($arr);
        }else{
            // $this->error('请导入所有表格后再通知财务');
            $arr['status'] = false;
            $arr['info'] = '请导入所有表格后再通知财务';
            $this->ajaxReturn($arr);
        }
    }

    // 取消生成业绩表
    public function rollBack(){
        $temp['time_xz'] = date('Y-m-d H:i:s');
        $temp['status_xz'] = 4;
        $temp['status_xzjl'] = null;
        $temp['xingzheng'] = M('admin')->where('username ="'.$_SESSION['username'].'"')->getField('nicename');
        M('sjzb')->where($_GET)->save($temp);// 更新数据总表

        $qishu = $_GET['qishu'];
        $sid = $_GET['sid'];

        // 删除生成数据
        $this->delAllScData($qishu,$sid);

        $arr['status'] = true;
        $arr['info'] = '操作成功';
        $this->ajaxReturn($arr);
    }

    // 退回操作
    public function back(){
        $rid = $this->getRid();
        $qishu = $_GET['qishu'];
        $sid = $_GET['sid'];
        switch($rid){
            case 3:
                $temp['time_xzjl'] = date('Y-m-d H:i:s');
                $temp['status_xz'] = 3;// 行政状态变成被退回
                $temp['status_xzjl'] = 3;// 行政经理状态变成退回
                $temp['xingzhengjl'] = M('admin')->where('username ="'.$_SESSION['username'].'"')->getField('nicename');
                // 删除生成数据
                $this->delAllScData($qishu,$sid);
            break;
            case 4:
                $temp['time_cw'] = date('Y-m-d H:i:s');
                $temp['status_xzjl'] = 4;// 行政经理状态变成被退回
                $temp['status_cw'] = 3;// 财务状态变成退回
                $temp['caiwu'] = M('admin')->where('username ="'.$_SESSION['username'].'"')->getField('nicename');// 获取财务昵称
            break;
        }
        M('sjzb')->where($_GET)->save($temp);// 更新数据总表
        $arr['status'] = true;
        $arr['info'] = '操作成功';
        $this->ajaxReturn($arr);
    }

    // 通过审核操作
    public function checked(){
        $rid = $this->getRid();
        switch($rid){
            case 3:
                $temp['time_xzjl'] = date('Y-m-d H:i:s');
                $temp['status_xzjl'] = 2;
                $temp['status_cw'] = 1;
                $temp['xingzhengjl'] = M('admin')->where('username ="'.$_SESSION['username'].'"')->getField('nicename');
            break;
            case 4:
                $temp['time_cw'] = date('Y-m-d H:i:s');
                $temp['status_cw'] = 2;
                $temp['status_fzr'] = 1;
                $temp['caiwu'] = M('admin')->where('username ="'.$_SESSION['username'].'"')->getField('nicename');
                // 还需要将生成表数据写入数据库并让表格可以下载
                // 如果数据有误,负责人退回之后删除写入数据库的数据
            break;
        }
        M('sjzb')->where($_GET)->save($temp);// 更新数据总表
        $arr['status'] = true;
        $arr['info'] = '操作成功';
        // 还需要将生成表数据写入数据库并让表格可以下载
        $this->ajaxReturn($arr);
    }

    // 取消通过审核操作
    public function cancel(){
        $rid = $this->getRid();
        switch($rid){
            case 3:
                $temp['time_xzjl'] = date('Y-m-d H:i:s');
                $temp['status_xzjl'] = 5;
                $temp['status_cw'] = null;
                $temp['xingzhengjl'] = M('admin')->where('username ="'.$_SESSION['username'].'"')->getField('nicename');
            break;
            case 4:
                $temp['time_cw'] = date('Y-m-d H:i:s');
                $temp['status_cw'] = 5;
                $temp['status_fzr'] = null;
                $temp['caiwu'] = M('admin')->where('username ="'.$_SESSION['username'].'"')->getField('nicename');
            break;
        }
        M('sjzb')->where($_GET)->save($temp);// 更新数据总表
        $arr['status'] = true;
        $arr['info'] = '操作成功';
        $this->ajaxReturn($arr);
    }

    // 下载导入表格
    public function download(){
        $data = M('qishu_history')->join('stjy_table_name ON stjy_qishu_history.tid=stjy_table_name.id')->join('stjy_school ON stjy_qishu_history.sid=stjy_school.id')->field('stjy_qishu_history.*,stjy_school.name as school_name,stjy_table_name.name')->where($_GET)->find();
        $file_url = $data['filename'];

        if(!isset($file_url)||trim($file_url)==''){
            return '500';
        }
        if(!file_exists($file_url)){ //检查文件是否存在
            return '404';
        }
        $filename = $data['qishu'].'-'.$data['school_name'].'-'.$data['name'];
        $arr = explode('.',$file_url);
        $file_type = $arr[count($arr)-1];
        $file=fopen($file_url,'r'); //打开文件
        //输入文件标签
        header("Content-type: application/octet-stream");
        header("Accept-Ranges: bytes");
        header("Accept-Length: ".filesize($file_url));
        header("Content-Disposition: attachment; filename=".$filename.'.'.$file_type);
        //输出文件内容
        echo fread($file,filesize($file_url));
        fclose($file);
    }

    // 下载生成表格
    public function downloadScb(){
        $tid = $_GET['tid'];
        $qishu = $_GET['qishu'];
        $sid = $_GET['sid'];

        $id = M('qishu_history')->where($_GET)->getField('id');

        $tbnames = $this->getTabelnames(1,[2]);
        $tbnames_cn = $this->getTabelnames(2,[2]);
        // dump($tbnames);
        // 获取字段
        // $ziduan = $this->getComment($tbnames[$tid]);
        // unset($ziduan['id']);
        // 获取数据

        // dump($data);
        // dump($ziduan);
        $filename = $tbnames_cn[$tid];
        $info = $this->getInfo($qishu,$sid);
        // dump($info);
        switch($tid){
            case 8:
                $start_row = 5;
                $data = M($tbnames[$tid])->field('xuhao,xingming,zhiwei,ruzhirq,edu,rentoushu,jingrentou,guojibanye1,guojibanye3,guojibanye5,guojibanxx1,guojibanxx2,guojibanxx5,xinshengyxhy,guojilxkc,yiqims,maisanse,laoshengcsyxhy,xinshengyxmfd,laoshengxf,xinshenggjb,yinianzbgjb,xinshengpswb,yinianzbpswb,hejiyye,huiyuanldxyye,qianming')->where('suoshudd ='.$id)->order('xuhao')->select();
            break;
            case 9:
                $start_row = 6;
                $data = M($tbnames[$tid])->field('xuhao,gonglixx,youeryuan,yinianji,ernianji,sannianji,sinianji,wunianji,liunianji,chuyi,chuer,chuerys,heji,xuexiaogms,zhanyoulv')->where('suoshudd ='.$id)->order('xuhao')->select();
            break;
            case 10:
                $start_row = 2;
                $data = M($tbnames[$tid])->field('xuhao,yuefen,fenxiao,xinzenglx,xuehao,xingming,suoshubm,banjibh,jingduls,fanduls,kaibanrq,jiebanrq,shengyukc,yucunxfje,lianxidh,zhaoshenggw,zhaoshengly,jiuduxx,jiuduxxnj')->where('suoshudd ='.$id)->order('xuhao')->select();
            break;
            case 11:
                $start_row = 2;
                $data = M($tbnames[$tid])->field('xuhao,yuefen,fenxiao,jianshaolx,xuehao,xingming,suoshubm,banjibh,jingduls,fanduls,kaibanrq,jiebanrq,liushitfyy,tingduxqjkc,shengyukc,yucunxfje,lianxidh,yujifdsj,zhaoshenggw,zhaoshengly,jiuduxx,jiuduxxnj')->where('suoshudd ='.$id)->order('xuhao')->select();
            break;
            case 12:

                vendor("PHPExcel.PHPExcel");// 引入phpexcel插件
                $template = __ROOT__.'Public/template/template_jysj.xlsx';          //使用模板

                $objPHPExcel = \PHPExcel_IOFactory::load($template);     //加载excel文件,设置模板

                $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);  //设置保存版本格式

                //接下来就是写数据到表格里面去
                $objActSheet = $objPHPExcel->getActiveSheet();
                $objActSheet->setCellValue('A1',$info['year'].'年'.$info['month'].'月'.$info['school'].'教学部经营数据汇总表');          //使用模板
                $school_data = M('school')->where('name ="'.$info['school'].'"')->find();
                $objActSheet->setCellValue('C4',$school_data['mianji']);
                $objActSheet->setCellValue('C5',$school_data['classnum']);
                $data1 = M('fxkkb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$id)->select();

                $i = 9;// 行从5开始

                foreach ($data1 as $row) {
                    $j = 1;// 行从0开始,即从A开始
                    foreach($row as $v){
                        // 写入数值
                        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($j).$i,$v);
                        $j++;
                    }
                    $i++;
                }

                $data2 = M('zcxsxqztb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$id)->select();

                $i = 26;// 行从26开始

                foreach ($data2 as $row) {
                    $j = 1;
                    foreach($row as $v){
                        // 写入数值
                        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($j).$i,$v);
                        $j++;
                    }
                    $i++;
                }

                $data3 = M('bjzysjb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$id)->select();

                $i = 52;// 行从52开始

                foreach ($data3 as $row) {
                    $j = 1;
                    foreach($row as $v){
                        // 写入数值
                        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($j).$i,$v);
                        $j++;
                    }
                    $i++;
                }

                $data4 = M('gbxzdrstjb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$id)->select();

                $i = 61;// 行从62开始

                foreach ($data4 as $row) {
                    $j = 1;
                    foreach($row as $v){
                        // 写入数值
                        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($j).$i,$v);
                        $j++;
                    }
                    $i++;
                }


                // 2.接下来当然是下载这个表格了，在浏览器输出就好了
                header("Pragma: public");
                header("Expires: 0");
                header("Cache-Control:must-revalidate, post-check=0, pre-check=0");
                header("Content-Type:application/force-download");
                header("Content-Type:application/vnd.ms-execl");
                header("Content-Type:application/octet-stream");
                header("Content-Type:application/download");;
                header('Content-Disposition:attachment;filename="'.$filename.'.xlsx"');
                header("Content-Transfer-Encoding:binary");
                $objWriter->save('php://output');
                die;
            break;
        }
        $this->exportExcel($tid,$start_row,$data,$filename,$info);
    }

    // 下载汇总表
    public function downloadHzb(){
        vendor("PHPExcel.PHPExcel");// 引入phpexcel插件
        $template = __ROOT__.'Public/template/template_hz.xlsx';
        $objPHPExcel = \PHPExcel_IOFactory::load($template);     //加载excel文件,设置模板
        $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);  //设置保存版本格式

        // --------------------接下来就是写数据到表格里面去--------------------

        // $objActSheet = $objPHPExcel->getActiveSheet();
        // $objPHPExcel->setActiveSheetIndex(0); //设置第一个工作表为活动工作表
        // $objActSheet = $objPHPExcel->getActiveSheet();
        // $objPHPExcel->getActiveSheet()->setTitle('1-学员信息表'); //设置工作表名称
        // $_GET['tid'] = 1;
        // $this->doData($objPHPExcel,$_GET,2);

        $info = $this->getInfo($_GET['qishu'],$_GET['sid']);
        $HzbName = $info['year'].'年'.$info['month'].'月'.$info['school'].'汇总表';
        // 导入表数据写到模板
        for($i=0;$i<7;$i++){
            $objPHPExcel->setActiveSheetIndex($i);
            $_GET['tid'] = $i+1;
            $this->doData($objPHPExcel,$_GET,2);
        }

        // 市场业绩
        $objPHPExcel->setActiveSheetIndex(7);
        $_GET['tid'] = 8;
        $this->doData($objPHPExcel,$_GET,5);
        $objPHPExcel->getActiveSheet()->setCellValue('A1',$info['year'].'年'.$info['month'].'月'.$info['school'].'市场部顾问个人明细表');

        // 市场占有率
        $objPHPExcel->setActiveSheetIndex(8);
        $_GET['tid'] = 9;
        $this->doData($objPHPExcel,$_GET,7);
        $objPHPExcel->getActiveSheet()->setCellValue('A1',$info['year'].'年'.$info['month'].'月'.$info['school'].'市场占有率统计表');

        // 新增明细
        $objPHPExcel->setActiveSheetIndex(9);
        $_GET['tid'] = 10;
        $this->doData($objPHPExcel,$_GET,2);

        // 减少明细
        $objPHPExcel->setActiveSheetIndex(10);
        $_GET['tid'] = 11;
        $this->doData($objPHPExcel,$_GET,2);

        // 经营数据
        $objPHPExcel->setActiveSheetIndex(11);
        $objActSheet = $objPHPExcel->getActiveSheet();
        $objActSheet->setCellValue('A1',$info['year'].'年'.$info['month'].'月'.$info['school'].'教学部经营数据汇总表');          //使用模板
        $school_data = M('school')->where('name ="'.$info['school'].'"')->find();
        $objActSheet->setCellValue('C4',$school_data['mianji']);
        $objActSheet->setCellValue('C5',$school_data['classnum']);
        $where['tid'] = 12;
        $where['qishu'] = $_GET['qishu'];
        $where['sid'] = $_GET['sid'];
        $id = M('qishu_history')->where($where)->getField('id');

        $data1 = M('fxkkb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$id)->select();

        $i = 9;// 行从5开始

        foreach ($data1 as $row) {
            $j = 1;// 行从0开始,即从A开始
            foreach($row as $v){
                // 写入数值
                $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($j).$i,$v);
                $j++;
            }
            $i++;
        }

        $data2 = M('zcxsxqztb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$id)->select();

        $i = 26;// 行从26开始

        foreach ($data2 as $row) {
            $j = 1;
            foreach($row as $v){
                // 写入数值
                $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($j).$i,$v);
                $j++;
            }
            $i++;
        }

        $data3 = M('bjzysjb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$id)->select();

        $i = 52;// 行从52开始

        foreach ($data3 as $row) {
            $j = 1;
            foreach($row as $v){
                // 写入数值
                $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($j).$i,$v);
                $j++;
            }
            $i++;
        }

        $data4 = M('gbxzdrstjb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$id)->select();

        $i = 61;// 行从62开始

        foreach ($data4 as $row) {
            $j = 1;
            foreach($row as $v){
                // 写入数值
                $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($j).$i,$v);
                $j++;
            }
            $i++;
        }

        // 接下来当然是下载这个表格了，在浏览器输出就好了
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control:must-revalidate, post-check=0, pre-check=0");
        header("Content-Type:application/force-download");
        header("Content-Type:application/vnd.ms-execl");
        header("Content-Type:application/octet-stream");
        header("Content-Type:application/download");;
        header('Content-Disposition:attachment;filename="'.$HzbName.'.xlsx"');
        header("Content-Transfer-Encoding:binary");
        $objWriter->save('php://output');
    }

    public function doData($objPHPExcel,$where,$start_row){
        $tbnames = $this->getTabelnames(1,[1,2,3,4]);
        $id = M('qishu_history')->where($where)->getField('id');
        if(in_array($where['tid'],[8,9,10,11])){
            $data = M($tbnames[$where['tid']])->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$id)->order('xuhao asc')->select();
        }else{
            $data = M($tbnames[$where['tid']])->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$id)->select();
        }

        $i = $start_row;// 行从5开始

        foreach ($data as $row) {
            $j = 0;// 行从0开始,即从A开始
            foreach($row as $v){
                // 写入数值
                $objPHPExcel->getActiveSheet()->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($j).$i,$v);
                // 水平垂直居中
                // $objPHPExcel->getActiveSheet()->getStyle(\PHPExcel_Cell::stringFromColumnIndex($j).$i)->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER)->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
                // $objActSheet->getStyle(\PHPExcel_Cell::stringFromColumnIndex($j).$i)->getBorders()->getTop()->setBorderStyle(\PHPExcel_Style_Border::BORDER_THIN)->getColor()->setARGB('FFFF0000');
                // $objActSheet->getStyle(\PHPExcel_Cell::stringFromColumnIndex($j).$i)->getFill()->setFillType(\PHPExcel_Style_Fill::FILL_SOLID)->getStartColor()->setARGB('FF00FF00');// 设置单元格背景颜色为绿色
                $j++;
            }
            $i++;
        }
    }

    // $list,$filename,$indexKey=array()
    public function exportExcel($tid,$start_row,$list,$filename,$info=array()){
        vendor("PHPExcel.PHPExcel");// 引入phpexcel插件

        //$objPHPExcel = new PHPExcel();                        //初始化PHPExcel(),不使用模板
        switch($tid){
            case 8:
                $template = __ROOT__.'Public/template/template_scyj.xlsx';          //使用模板
            break;
            case 9:
                $template = __ROOT__.'Public/template/template_sczyl.xlsx';          //使用模板
            break;
            case 10:
                $template = __ROOT__.'Public/template/template_xzmx.xlsx';          //使用模板
            break;
            case 11:
                $template = __ROOT__.'Public/template/template_jsmx.xlsx';          //使用模板
            break;
        }

        $objPHPExcel = \PHPExcel_IOFactory::load($template);     //加载excel文件,设置模板

        $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);  //设置保存版本格式

        //接下来就是写数据到表格里面去
        $objActSheet = $objPHPExcel->getActiveSheet();

        switch($tid){
            case 8:
                $objActSheet->setCellValue('A1',$info['year'].'年'.$info['month'].'月'.$info['school'].'市场部顾问个人明细表');          //使用模板
            break;
            case 9:
                $objActSheet->setCellValue('A1',$info['year'].'年'.$info['month'].'月'.$info['school'].'市场占有率统计表');          //使用模板
            break;
        }
        // $objActSheet->setCellValue('坐标','值');

        $i = $start_row;// 行从5开始

        foreach ($list as $row) {
            $j = 0;// 行从0开始,即从A开始
            foreach($row as $v){
                // 写入数值
                $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($j).$i,$v);
                // 水平垂直居中
                // $objActSheet->getStyle(\PHPExcel_Cell::stringFromColumnIndex($j).$i)->getAlignment()->setHorizontal(\PHPExcel_Style_Alignment::HORIZONTAL_CENTER)->setVertical(\PHPExcel_Style_Alignment::VERTICAL_CENTER);
                // $objActSheet->getStyle(\PHPExcel_Cell::stringFromColumnIndex($j).$i)->getBorders()->getTop()->setBorderStyle(\PHPExcel_Style_Border::BORDER_THIN)->getColor()->setARGB('FFFF0000');
                // $objActSheet->getStyle(\PHPExcel_Cell::stringFromColumnIndex($j).$i)->getFill()->setFillType(\PHPExcel_Style_Fill::FILL_SOLID)->getStartColor()->setARGB('FF00FF00');// 设置单元格背景颜色为绿色
                $j++;
            }
            $i++;
        }



        // 1.保存至本地Excel表格
        //$objWriter->save($filename.'.xls');

        // 2.接下来当然是下载这个表格了，在浏览器输出就好了
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control:must-revalidate, post-check=0, pre-check=0");
        header("Content-Type:application/force-download");
        header("Content-Type:application/vnd.ms-execl");
        header("Content-Type:application/octet-stream");
        header("Content-Type:application/download");;
        header('Content-Disposition:attachment;filename="'.$filename.'.xlsx"');
        header("Content-Transfer-Encoding:binary");
        $objWriter->save('php://output');
    }

    // -------------------总表操作结束-------------------

    // 市场业绩数据入库
    public function ScyjToDb($qishu,$sid){
        // ======================获取市场业绩数据开始======================
        $scyj = new \Admin\Action\CountScyjAction();
        $scyj_data = $scyj->getScyjbData($qishu,$sid);//获得统计数据
        // $scyj_temp['tid'] = 8;
        // $scyj_temp['uid'] = $this->getUid();// 获取生成表格的行政uid
        // $scyj_temp['qishu'] = $qishu;
        // $scyj_temp['sid'] = $sid;
        // $scyj_temp['filename'] = '';
        // $qishu_id = M("qishu_history")->add($scyj_temp);

        // unset($scyj_temp);
        $res = $this->isInQishuHistory(8,$qishu,$sid);
        if($res){
            return false;
        }
        $qishu_id = $this->insertQishuHistory(8,$qishu,$sid);

        $comment = $this->getComment('scyjb');// 获取市场业绩表字段和备注对应的数组
        $taocan = array('新生幼儿国际班1年','新生幼儿国际班3年','新生幼儿国际班5年','新生小学国际班1年','新生小学国际班2年','新生小学国际班5年','新生游学会员','国际领袖课程','1期秒杀','买三送二','老生创始游学会员','新生游学免费读','老生续费','新生国际班','1年追补国际班','新生平时晚班','1年追补平时晚班');

        // -----------------------------用于测试查看数据开始-----------------------------
        // $i = 0;
        // foreach($scyj_data as $k=>$v){
        //     $scyj_temp[$i]['xingming'] = $k;
        //     $scyj_temp[$i]['suoshudd'] = $qishu_id;
        //     foreach($v as $key=>$val){
        //         if(in_array($key,$taocan)){
        //             $scyj_temp[$i][$comment[$key]] = $val;
        //         }elseif($key == 'xxked'){
        //             $scyj_temp[$i]['edu'] = $val;
        //         }elseif($key == 'total'){
        //             $scyj_temp[$i]['hejiyye'] = $val;
        //         }elseif($key == 'rentou'){
        //             $scyj_temp[$i]['rentoushu'] = $val;
        //         }elseif($key == 'jrt'){
        //             $scyj_temp[$i]['jingrentou'] = $val;
        //         }else{
        //             $scyj_temp[$i][$key] = $val;
        //         }
        //     }
        //     M('scyjb')->add($scyj_temp);
        //     $i++;
        // }
        // -----------------------------用于测试查看数据结束-----------------------------

        foreach($scyj_data as $k=>$v){
            $scyj_temp['xingming'] = $k;
            $scyj_temp['suoshudd'] = $qishu_id;
            // $scyj_temp['daorusj'] = date('Y-m-d H:i:s');
            foreach($v as $key=>$val){
                if(in_array($key,$taocan)){
                    $scyj_temp[$comment[$key]] = $val;
                }elseif($key == 'xxked'){
                    $scyj_temp['edu'] = $val;
                }elseif($key == 'total'){
                    $scyj_temp['hejiyye'] = $val;
                }elseif($key == 'rentou'){
                    $scyj_temp['rentoushu'] = $val;
                }elseif($key == 'jrt'){
                    $scyj_temp['jingrentou'] = $val;
                }else{
                    $scyj_temp[$key] = $val;
                }
            }
            M('scyjb')->add($scyj_temp);
            unset($scyj_temp);
        }
        return true;
        // ======================获取市场业绩数据结束======================
    }

    // 市场占有率数据入库
    public function SczylToDb($qishu,$sid){
        $data = new \Admin\Action\CountSczylAction();
        $list = $data->getSczylbData($qishu,$sid);//获得统计数据

        // $temp['tid'] = 9;
        // $temp['uid'] = $this->getUid();// 获取生成表格的行政uid
        // $temp['qishu'] = $qishu;
        // $temp['sid'] = $sid;
        // $temp['filename'] = '';
        // $qishu_id = M("qishu_history")->add($temp);

        // unset($temp);
        $res = $this->isInQishuHistory(9,$qishu,$sid);
        if($res){
            return false;
        }
        $qishu_id = $this->insertQishuHistory(9,$qishu,$sid);

        $list['heji']['gonglixx'] = "合计";
        $list['data'][0] = $list['heji'];
        $new_list = $list['data'];
        ksort($new_list);
        // dump($new_list);
        $i = 0;
        foreach($new_list as $k=>$v){
            $list_data[$k] = $v;
            $list_data[$i]['xuhao'] = $k;
            $i++;
        }

        foreach($list_data as $val){
            foreach($val as $k=>$v){
                $temp[$k] = $v;
            }
            $temp['suoshudd'] = $qishu_id;
            M('sczylb')->add($temp);
            unset($temp);
        }
        return true;
    }

    // 新增明细数据入库
    public function XzmxToDb($qishu,$sid){
        $data = new \Admin\Action\CountXzmxAction();
        $list = $data->getXzmxbData($qishu,$sid);//获得统计数据

        $res = $this->isInQishuHistory(10,$qishu,$sid);
        if($res){
            return false;
        }

        // 插入qishu_history
        $qishu_id = $this->insertQishuHistory(10,$qishu,$sid);
        // 插入xzmxb
        foreach($list as $k=>$v){
            $temp['xuhao'] = $k+1;
            $temp['yuefen'] = substr($qishu,4,2).'月';
            $temp['fenxiao'] = $v['xiaoqu'];
            $temp['xuhao'] = $k+1;
            // $temp['xinzenglx'] = ;
            $temp['xuehao'] = $v['xuehao'];
            $temp['xingming'] = $v['xingming'];
            $temp['suoshubm'] = $v['suoshubm'];
            $temp['banjibh'] = $v['banji'];
            $temp['jingduls'] = $v['jingduls'];
            $temp['fanduls'] = $v['fanduls'];
            // $temp['kaibanrq'] = $v['kaibanrq'];
            // $temp['jiebanrq'] = $v['jiebanrq'];
            // $temp['liushitfyy'] = $v['liushitfyy'];
            // $temp['tingduxqjkc'] = $v['tingduxqjkc'];
            $temp['shengyukc'] = $v['shuliang'];
            $temp['yucunxfje'] = $v['feiyong'];
            $temp['lianxidh'] = $v['shoujihm'];
            // $temp['yujifdsj'] = $v['yujifdsj'];
            $temp['zhaoshenggw'] = $v['yejigsr'];
            $temp['zhaoshengly'] = $v['zhaoshengly'];
            $temp['jiuduxx'] = $v['gonglixx'];
            $temp['jiuduxxnj'] = $v['nianji'];
            $temp['suoshudd'] = $qishu_id;
            M('xzmxb')->add($temp);
            unset($temp);
        }

        return true;
    }

    // 减少明细数据入库
    public function JsmxToDb($qishu,$sid){
        $data = new \Admin\Action\CountJsmxAction();
        $list = $data->getJsmxbData($qishu,$sid);//获得统计数据

        $res = $this->isInQishuHistory(11,$qishu,$sid);
        if($res){
            return false;
        }

        // 插入qishu_history
        $qishu_id = $this->insertQishuHistory(11,$qishu,$sid);
        // 插入xzmxb
        foreach($list as $k=>$v){
            $temp['xuhao'] = $k+1;
            $temp['yuefen'] = substr($qishu,4,2).'月';
            $temp['fenxiao'] = $v['xiaoqu'];
            $temp['xuhao'] = $k+1;
            // $temp['jianshaolx'] = ;
            $temp['xuehao'] = $v['xuehao'];
            $temp['xingming'] = $v['xingming'];
            $temp['suoshubm'] = $v['suoshubm'];
            $temp['banjibh'] = $v['banji'];
            $temp['jingduls'] = $v['jingduls'];
            $temp['fanduls'] = $v['fanduls'];
            // $temp['kaibanrq'] = $v['kaibanrq'];
            // $temp['jiebanrq'] = $v['jiebanrq'];
            $temp['shengyukc'] = $v['shuliang'];
            $temp['yucunxfje'] = $v['feiyong'];
            $temp['lianxidh'] = $v['shoujihm'];
            $temp['zhaoshenggw'] = $v['yejigsr'];
            $temp['zhaoshengly'] = $v['zhaoshengly'];
            $temp['jiuduxx'] = $v['gonglixx'];
            $temp['jiuduxxnj'] = $v['nianji'];
            $temp['suoshudd'] = $qishu_id;
            M('jsmxb')->add($temp);
            unset($temp);
        }

        return true;
    }

    // 经营数据入库
    public function JysjToDb($qishu,$sid){
        $data = new \Admin\Action\CountJysjAction();
        $list = $data->getJysjbData($qishu,$sid);//获得统计数据

        $res = $this->isInQishuHistory(12,$qishu,$sid);
        if($res){
            return false;
        }

        // 插入qishu_history
        $qishu_id = $this->insertQishuHistory(12,$qishu,$sid);

        // 导入分校开课表数据
        foreach($list['kksd'] as $k=>$v){
            $temp['kaikesjd'] = $k;
            $temp['banjishu'] = $v;
            $temp['suoshudd'] = $qishu_id;
            M('fxkkb')->add($temp);
            unset($temp);
        }

        // 导入在册学生学期状态表数据
        foreach($list['zaice'] as $k1=>$v1){
            $temp['nianji'] = $k1;
            $temp['zongrenshu'] = $v1['zrs'];
            $temp['weijinban'] = $v1['weijinban'];
            // $temp['yubaoming'] = $v1['yubaoming'];
            // $temp['tingdukfx'] = $v1['ztingdukfxrs'];
            // $temp['tingdubkfx'] = $v1['ztingdubkfxrs'];
            $temp['shijizbrs'] = $v1['sjzbrs'];
            $temp['k01'] = $v1['K01'];
            $temp['k02'] = $v1['K02'];
            $temp['k03'] = $v1['K03'];
            $temp['k04'] = $v1['K04'];
            $temp['k05'] = $v1['K05'];
            $temp['k06'] = $v1['K06'];
            $temp['p01'] = $v1['P01'];
            $temp['p02'] = $v1['P02'];
            $temp['p03'] = $v1['P03'];
            $temp['p1a'] = $v1['P1A'];
            $temp['p1b'] = $v1['P1B'];
            $temp['p2a'] = $v1['P2A'];
            $temp['p2b'] = $v1['P2B'];
            $temp['p3a'] = $v1['P3A'];
            $temp['p3b'] = $v1['P3B'];
            $temp['p4a'] = $v1['P4A'];
            $temp['p4b'] = $v1['P4B'];
            $temp['p5a'] = $v1['P5A'];
            $temp['p5b'] = $v1['P5B'];
            $temp['p6a'] = $v1['P6A'];
            $temp['p6b'] = $v1['P6B'];
            $temp['j1a'] = $v1['J1A'];
            $temp['j1b'] = $v1['J1B'];
            $temp['j2a'] = $v1['J2A'];
            $temp['j2b'] = $v1['J2B'];
            $temp['j3a'] = $v1['J3A'];
            $temp['j3b'] = $v1['J3B'];
            $temp['yiduiyi'] = $v1['yiduiyi'];
            $temp['ns1'] = $v1['ns1'];
            $temp['suoshudd'] = $qishu_id;
            M('zcxsxqztb')->add($temp);
            unset($temp);
        }

        // 导入班级重要数据
        $list['bjbmsj'][] = array('bumen'=>'总计','dybjs'=>$list['bjbmsj']['dybjs_total'],'rszj'=>$list['bjbmsj']['rszj_total'],'baoguanglv'=>$list['bjbmsj']['baoguanglv_total']);

        foreach($list['bjbmsj'] as $k2=>$v2){
            if(is_numeric($k2)){
                $temp['bumen'] = $v2['bumen'];
                $temp['dangyuebjs'] = $v2['dybjs'];
                $temp['renshuzj'] = $v2['rszj'];
                $temp['banjibhl'] = $v2['baoguanglv'];
                $temp['suoshudd'] = $qishu_id;
            }

            M('bjzysjb')->add($temp);
            unset($temp);
        }

        // 导入各班型在读人数统计数据
        foreach($list['gbxzdrstj'] as $v3){
            $temp['bumen'] = $v3['bumen'];
            $temp['youerban'] = $v3['yeb'];
            $temp['xiaoxuezmbtb'] = $v3['xxzmb'];
            $temp['zhongxueban'] = $v3['zxb'];
            $temp['xiaoxueps1d5'] = $v3['xxps15ban'];
            $temp['xiaoxueps2'] = $v3['xxps20ban'];
            $temp['xiaoxueps2d5'] = $v3['xxps25ban'];
            $temp['xiaoxueps3'] = $v3['xxps30ban'];
            $temp['zhouriws'] = $v3['zrws'];
            $temp['zhouwuws'] = $v3['zwws'];
            $temp['zhouliuws'] = $v3['zlws'];
            $temp['yiduiyi'] = $v3['yiduiyi'];
            $temp['heji'] = $v3['heji'];
            $temp['suoshudd'] = $qishu_id;
            M('gbxzdrstjb')->add($temp);
            unset($temp);
        }

    }

    public function AlltoDb($qishu,$sid){
        // -----------------------生成数据入库开始-----------------------
        // 市场业绩数据写入数据库
        $res_scyj = $this->ScyjToDb($qishu,$sid);
        // 市场占有率数据写入数据库
        $res_sczyl = $this->SczylToDb($qishu,$sid);
        // 新增明细数据写入数据库
        $res_xzmx = $this->XzmxToDb($qishu,$sid);
        // 减少明细数据写入数据库
        $res_jsmx = $this->jsmxToDb($qishu,$sid);
        // 经营数据写入数据库
        $res_jsmx = $this->jysjToDb($qishu,$sid);
        // 退费数据写入数据库
        //
        // -----------------------生成数据入库结束-----------------------
    }

    public function delScData($qishu,$sid,$tid){
        $where['qishu'] = $qishu;
        $where['sid'] = $sid;
        $where['tid'] = $tid;
        $id = M('qishu_history')->where($where)->getField('id');// 取得suoshudd的值
        // dump($where);

        if($tid == 12){
            $res1 = M('fxkkb')->where('suoshudd ='.$id)->delete();
            $res2 = M('bjzysjb')->where('suoshudd ='.$id)->delete();
            $res3 = M('gbxzdrstjb')->where('suoshudd ='.$id)->delete();
            $res4 = M('zcxsxqztb')->where('suoshudd ='.$id)->delete();
            // if($res1 && $res2 && $res3 && $res4){
                M('qishu_history')->where($where)->delete();
            // }
            return ;

        }

        $tbnames = $this->getTabelnames(1,[2]);// 获取tid和表名一一对应的数据

        M($tbnames[$tid])->where('suoshudd ='.$id)->delete();// 删除对应表格里面的数据

        // if ($res) {
            M('qishu_history')->where($where)->delete();// 从qishu_history中删除
        // }

    }

    public function delAllScData($qishu,$sid){
        // -----------------------生成数据从库删除开始-----------------------
        // 删除市场业绩数据
        $res_scyj = $this->delScData($qishu,$sid,8);
        // 删除市场占有率数据
        $res_sczyl = $this->delScData($qishu,$sid,9);
        // 删除新增明细数据
        $res_xzmx = $this->delScData($qishu,$sid,10);
        // 删除减少明细数据
        $res_jsmx = $this->delScData($qishu,$sid,11);
        // 删除经营数据数据
        $res_jysj = $this->delScData($qishu,$sid,12);
        // 删除退费数据
        //
        // -----------------------生成数据从库删除结束-----------------------
    }

    // 生成表写入qishu_history
    public function insertQishuHistory($tid,$qishu,$sid){
        $tmp['tid'] = $tid;
        $tmp['uid'] = $this->getUid();// 获取生成表格的行政uid
        $tmp['qishu'] = $qishu;
        $tmp['sid'] = $sid;
        $tmp['filename'] = '';
        $qishu_id = M("qishu_history")->add($tmp);
        return $qishu_id;
    }

    // qishu_history是否有数据
    public function isInQishuHistory($tid,$qishu,$sid){
        $where['tid'] = $tid;
        $where['qishu'] = $qishu;
        $where['sid'] = $sid;
        $res = M('qishu_history')->where($where)->find();
        if(!empty($res)){
            return true;
        }else{
            return false;
        }
    }

    // 如果phpexcel中文输入有问题,使用下面这个函数
    // public function convertUTF8($str){
    //    if(empty($str)) return '';
    //    return  iconv('gb2312', 'utf-8', $str);
    // }
}
