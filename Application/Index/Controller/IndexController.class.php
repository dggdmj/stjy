<?php
namespace Index\Controller;
use Think\Controller;
class IndexController extends Controller {
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

    //获取最新的工资
    public function getLast(){
        $phone = $_GET['phone'];
        $qishu = $_GET['qishu'];
        if($phone){
            $info = M('rycb')->field('shenfenzhm,xingming')->where(array('lianxidh'=>$phone))->find();
            $this->assign('xingming',$info['xingming']);
            $this->assign('phone',$phone);
            if($info){
                $code = $info['shenfenzhm'];
                if(!$qishu){
                    $qishu = M('qishu_history as qh')
                        ->join('LEFT JOIN stjy_xzbgz as xz on xz.suoshudd=qh.id')
                        ->join('LEFT JOIN stjy_scbgz as sc on sc.suoshudd=qh.id')
                        ->join('LEFT JOIN stjy_jxbgz as jx on jx.suoshudd=qh.id')
                        ->join('LEFT JOIN stjy_zjgz as zj on zj.suoshudd=qh.id')
                        ->where("xz.shenfenzhm='$code' or sc.shenfenzhm='$code' or jx.shenfenzhm='$code' or zj.shenfenzhm='$code'")
                        ->group('qh.qishu')
                        ->order('qh.id desc')
                        ->getField('qishu');
                }
                $this->assign('qishu',$qishu);
                if($qishu){
                     //市场部工资
                    $scb_wage  = M('scbgz as sc')->join('LEFT JOIN stjy_qishu_history as qh on qh.id=sc.suoshudd')->where("sc.shenfenzhm='$code' and qh.qishu='$qishu'")->getField('sc.id');
                    if($scb_wage){
                        $info = M('scbgz')->field('yingfagzhj,gongjij,gerensb,gerensds')->where(array('id'=>$scb_wage))->find();
                        $info['zongji'] = $info['yingfagzhj'] - $info['gongjij'] - $info['gerensb'] - $info['gerensds'];
                        $this->display('wages');exit;
                    }
                    //行政部工资
                    $xzb_wage  = M('xzbgz as sc')->join('LEFT JOIN stjy_qishu_history as qh on qh.id=sc.suoshudd')->where("sc.shenfenzhm='$code'")->getField('sc.id');
                    if($xzb_wage){
                        $info = M('xzbgz')->field('yueduyffzj as yingfagzhj,gongjij,gerensb,gerensds')->where(array('id'=>$xzb_wage))->find();
                        $info['zongji'] = $info['yingfagzhj'] - $info['gongjij'] - $info['gerensb'] - $info['gerensds'];
                        $this->assign('info',$info);
                        $this->display('wages');exit;
                    }

                    //教学部工资
                    $jxb_wage  = M('jxbgz as sc')->join('LEFT JOIN stjy_qishu_history as qh on qh.id=sc.suoshudd')->where("sc.shenfenzhm='$code' and qh.qishu='$qishu'")->getField('sc.id');
                    if($jxb_wage){
                        $info = M('jxbgz')->field('yueduyfzj as yingfagzhj,gongjij,gerensb,gerensds')->where(array('id'=>$xzb_wage))->find();
                        $info['zongji'] = $info['yingfagzhj'] - $info['gongjij'] - $info['gerensb'] - $info['gerensds'];
                        $this->assign('info',$info);
                        $this->display('wages');exit;
                    }
                    //总监工资
                    $zj_wage  = M('zjgz as sc')->join('LEFT JOIN stjy_qishu_history as qh on qh.id=sc.suoshudd')->where("sc.shenfenzhm='$code' and qh.qishu='$qishu'")->getField('sc.id');
                    if($zj_wage){
                        $info = M('zjgz')->field('yingfagzhj,gongjij,gerensb,gerensds')->where(array('id'=>$xzb_wage))->find();
                        $info['zongji'] = $info['yingfagzhj'] - $info['gongjij'] - $info['gerensb'] - $info['gerensds'];
                        $this->assign('info',$info);
                        $this->display('wages');exit;
                    }
                }
            }
        }

        $this->display('wages');
    }

    //根据手机号获取身份证号码
    public function getqishu(){
        $phone = $_GET['phone'];
        $i = 0;
        $tmp = '';
        $gongzi = 0;
        if($phone){ 
            $info = M('rycb')->field('shenfenzhm,xingming')->where(array('lianxidh'=>$phone))->find();
            if($info){
                $code = $info['shenfenzhm'];
                $list = M('qishu_history as qh')
                        ->join('LEFT JOIN stjy_xzbgz as xz on xz.suoshudd=qh.id')
                        ->join('LEFT JOIN stjy_scbgz as sc on sc.suoshudd=qh.id')
                        ->join('LEFT JOIN stjy_jxbgz as jx on jx.suoshudd=qh.id')
                        ->join('LEFT JOIN stjy_zjgz as zj on zj.suoshudd=qh.id')
                        ->field('qh.qishu,xz.yueduyffzj as yingfagzhj1,sc.yingfagzhj asyingfagzhj2,yueduyfzj as yingfagzhj3,zj.yingfagzhj as yingfagzhj4')
                        ->where("xz.shenfenzhm='$code' or sc.shenfenzhm='$code' or jx.shenfenzhm='$code' or zj.shenfenzhm='$code'")
                        ->order('qh.qishu desc')
                        ->group('qh.qishu')
                        ->select();
                $nian = substr($list['0']['qishu'],0,4);
                foreach($list as $key=>$val){
                    $list[$key]['gongzi'] = $val['yingfagzhj1'] + $val['yingfagzhj2'] + $val['yingfagzhj3'] + $val['yingfagzhj4'];
                    $tmp = substr($val['qishu'],0,4);
                    if($tmp == $nian){
                        $gongzi += $list[$key]['gongzi'];
                        $i += 1;
                    }
                }
                $pingjungz = number_format($gongzi / $i,2);
            }
            $this->assign('list',$list);
            $this->assign('nian',$nian);
            $this->assign('pingjungz',$pingjungz);
            $this->assign('phone',$phone);
            $this->assign('xingming',$info['xingming']);
        }
        $this->display();
    }

    //根据手机号获取个人工资
    public function getWage(){
        $phone = $_GET['phone'];
        $qishu = $_GET['qishu'];
        $info = M('rycb')->field('shenfenzhm,xingming')->where(array('lianxidh'=>$phone))->find();
        $code = $info['shenfenzhm'];
        $this->assign('xingming',$info['xingming']);
        //市场部工资
        $scb_wage  = M('scbgz as sc')->join('LEFT JOIN stjy_qishu_history as qh on qh.id=sc.suoshudd')->where("sc.shenfenzhm='$code' and qh.qishu='$qishu'")->getField('sc.id');
        if($scb_wage){
            $info = M('scbgz')->where(array('id'=>$scb_wage))->find();
            $qishu_history = M('qishu_history')->field('qishu,sid')->where(array('id'=>$info['suoshudd']))->find();
            if($qishu_history){
                $scyjb_id = M('qishu_history')->where(array('qishu'=>$qishu_history['qishu'],'sid'=>$qishu_history['sid'],'tid'=>8))->getField('id');
                $scyjb = M('scyjb')->field('json')->where(array('suoshudd'=>$scyjb_id,'xingming'=>$info['xingming']))->find();
                $scyjb['json'] = json_decode($scyjb['json'],true);
                foreach($scyjb['json'] as $key=>$val){
                    $scyjb[$key] = $val;
                }
            }
            $cplx = array();
            $chanpinlx = M('sjcplx')->field('xiangmu,tichengds,tichengdsfxxk,shifoucyedjs')->where("shifouqy='启用' and shifoutxyj='1' ")->select();

            //按提成点数从高到低排序
            $last_names = array_column($chanpinlx,'tichengds');
            array_multisort($last_names,SORT_DESC,$chanpinlx);

            foreach($chanpinlx as $key=>$vv){
                $vv['xiangmu'] = str_replace('(','（',$vv['xiangmu']);
                $vv['xiangmu'] = str_replace(')','）',$vv['xiangmu']);
                $chanpinlx[$key]['field'] = $this->encode($vv['xiangmu']);
                $chanpinlx[$key]['tichengds'] = is_numeric($vv['tichengds']) ? ( $vv['tichengds'] * 100 ).'%' : $vv['tichengds'];
                if (!in_array($chanpinlx[$key]['tichengds'],$ticheng) && $chanpinlx[$key]['field'] != 'laoshengxufei'){
                    $cplx[$key]['ticheng'] = $chanpinlx[$key]['tichengds'];
                    $ticheng[] = $chanpinlx[$key]['tichengds'];
                    $cplx[$key]['tichengfxxk'] = $vv['tichengdsfxxk'] ? $vv['tichengdsfxxk'] : number_format($vv['tichengds'] * 0.8,2);
                    $cplx[$key]['tichengds'] = is_numeric($vv['tichengds']) ? ( $vv['tichengds'] * 100 ).'%' : $vv['tichengds'];
                    $cplx[$key]['tichengdsfxxk'] = is_numeric($cplx[$key]['tichengfxxk']) ? ( $cplx[$key]['tichengfxxk'] * 100 ).'%' : $cplx[$key]['tichengfxxk'];
                    $cplx[$key]['name'] = $vv['xiangmu'];
                }
            }
            foreach($chanpinlx as $kk=>$vv){
                $tmp = str_replace('.','',$vv['tichengds']);
                $temps = $this->encode($vv['xiangmu']);
                if ($temps != 'laoshengxufei'){
                    $data['field'.$tmp] += $scyjb[$temps];
                }
            }
            
            $cplx = array_values($cplx);
            $data = array_values($data);

            $this->assign('info',$info);
            $this->assign('cplx',$cplx);
            $this->assign('data',$data);
            $this->display('scbgz');
        }
        //行政部工资
        $xzb_wage  = M('xzbgz as sc')->join('LEFT JOIN stjy_qishu_history as qh on qh.id=sc.suoshudd')->where("sc.shenfenzhm='$code'")->getField('sc.id');
        if($xzb_wage){
            $info = M('xzbgz')->where(array('id'=>$xzb_wage))->find();
            $this->assign('info',$info);
            $this->display('xzbgz');exit;
        }

        //教学部工资
        $jxb_wage  = M('jxbgz as sc')->join('LEFT JOIN stjy_qishu_history as qh on qh.id=sc.suoshudd')->where("sc.shenfenzhm='$code' and qh.qishu='$qishu'")->getField('sc.id');
        if($jxb_wage){
            $info = M('jxbgz')->where(array('id'=>$xzb_wage))->find();
            $this->assign('info',$info);
            $this->display('jxbgz');exit;
        }
        //总监工资
        $zj_wage  = M('zjgz as sc')->join('LEFT JOIN stjy_qishu_history as qh on qh.id=sc.suoshudd')->where("sc.shenfenzhm='$code' and qh.qishu='$qishu'")->getField('sc.id');
        if($zj_wage){
            $info = M('zjgz')->where(array('id'=>$xzb_wage))->find();
            $this->assign('info',$info);
            $this->display('zjgz');exit;
        }

        // $this->assign('scb_wage',$scb_wage);
        // $this->assign('xzb_wage',$xzb_wage);
        // $this->assign('jxb_wage',$jxb_wage);
        // $this->assign('zj_wage',$zj_wage);
        // $this->display();
    }

    //根据id获取行政部工资
    public function getXcbWage(){
        $id = $_GET['id'] ? $_GET['id'] : '500';
        $info = M('xzbgz')->where(array('id'=>$id))->find();
        $this->assign('info',$info);
        $this->display('xzbgz');
    }

    //根据id获取市场部的工资
    public function getScbWage(){
        $id = $_GET['id'] ? $_GET['id'] : 348;

        $info = M('scbgz')->where(array('id'=>$id))->find();
        $qishu_history = M('qishu_history')->field('qishu,sid')->where(array('id'=>$info['suoshudd']))->find();
        if($qishu_history){
            $scyjb_id = M('qishu_history')->where(array('qishu'=>$qishu_history['qishu'],'sid'=>$qishu_history['sid'],'tid'=>8))->getField('id');
            $scyjb = M('scyjb')->field('json')->where(array('suoshudd'=>$scyjb_id,'xingming'=>$info['xingming']))->find();
            $scyjb['json'] = json_decode($scyjb['json'],true);
            foreach($scyjb['json'] as $key=>$val){
                $scyjb[$key] = $val;
            }
        }
        $cplx = array();
        $chanpinlx = M('sjcplx')->field('xiangmu,tichengds,tichengdsfxxk,shifoucyedjs')->where("shifouqy='启用' and shifoutxyj='1' ")->select();

        //按提成点数从高到低排序
        $last_names = array_column($chanpinlx,'tichengds');
        array_multisort($last_names,SORT_DESC,$chanpinlx);

        foreach($chanpinlx as $key=>$vv){
            $vv['xiangmu'] = str_replace('(','（',$vv['xiangmu']);
            $vv['xiangmu'] = str_replace(')','）',$vv['xiangmu']);
            $chanpinlx[$key]['field'] = $this->encode($vv['xiangmu']);
            $chanpinlx[$key]['tichengds'] = is_numeric($vv['tichengds']) ? ( $vv['tichengds'] * 100 ).'%' : $vv['tichengds'];
            if (!in_array($chanpinlx[$key]['tichengds'],$ticheng) && $chanpinlx[$key]['field'] != 'laoshengxufei'){
                $cplx[$key]['ticheng'] = $chanpinlx[$key]['tichengds'];
                $ticheng[] = $chanpinlx[$key]['tichengds'];
                $cplx[$key]['tichengfxxk'] = $vv['tichengdsfxxk'] ? $vv['tichengdsfxxk'] : number_format($vv['tichengds'] * 0.8,2);
                $cplx[$key]['tichengds'] = is_numeric($vv['tichengds']) ? ( $vv['tichengds'] * 100 ).'%' : $vv['tichengds'];
                $cplx[$key]['tichengdsfxxk'] = is_numeric($cplx[$key]['tichengfxxk']) ? ( $cplx[$key]['tichengfxxk'] * 100 ).'%' : $cplx[$key]['tichengfxxk'];
                $cplx[$key]['name'] = $vv['xiangmu'];
            }
        }
        foreach($chanpinlx as $kk=>$vv){
            $tmp = str_replace('.','',$vv['tichengds']);
            $temps = $this->encode($vv['xiangmu']);
            if ($temps != 'laoshengxufei'){
                $data['field'.$tmp] += $scyjb[$temps];
            }
        }
        
        $cplx = array_values($cplx);
        $data = array_values($data);

        $this->assign('info',$info);
        $this->assign('cplx',$cplx);
        $this->assign('data',$data);
        $this->display('scbgz');
    }

    //根据id获取教学部的工资
    public function getJxbWage(){
        $id = $_GET['id'];
        $info = M('jxbgz')->where(array('id'=>$id))->find();
        $this->assign('info',$info);
        $this->display();
    }

    //根据id获取教学部的工资
    public function getZjWage(){
        $id = $_GET['id'];
        $info = M('zjgz')->where(array('id'=>$id))->find();
        $this->assign('info',$info);
        $this->display();
    }
}