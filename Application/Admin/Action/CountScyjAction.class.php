<?php
namespace Admin\Action;
use Think\Action;
class CountScyjAction extends CommonAction {
    /**
     * 获得统计数据
     *
     * @param  string $qishu       期数：201707
     * @param  string $sid         学校id：school  中的id
     * @return array
     */
    public function getScyjbData($qishu,$sid){1
        //按照期数和分校查询出结果，并以表名为键拼接成一个数组
        $Model = M();
        $tablelist = array();  //初始化要返回的数据
        $where['qishu'] = $qishu;// 获取期数
        $whewe['sid'] = $sid;// 获取学校id
        $where['tid'] = 4;// 从班级学员信息表获取信息,它的tid是3
        $suoshuid = M('qishu_history')->where($where)->getField('id');// 获取对应qishu_history的id
        //查询出所有数据
        $list = $Model->query("select * from stjy_sjjlb where suoshudd = $suoshuid and `yejigsr` != '' order by `xuehao` ");
//        dump($list);
        //1，遍历数组，如果业绩归属人是2个人的，增加两条记录，在重新拼接成新的数组
        $newlist = $this->getNewList($list);
        //2，遍历数组，按照业绩归属人的业绩归类统计
        $tablelist = $this->countList($newlist);
//        dump($tablelist);die;
        return $tablelist;
    }

    //遍历新数组，统计业绩归属人的业绩数据
    public function countList($list){
        $arr = array();     //用于存放业绩归属人的信息
        foreach ($list as $k=>$v){
            $beizhu = $v['data']['beizhu'];
            $xishu = $v['xishu'];

            $xxked = M("xxkedb")->where("xingming = '".$v['yejigsr']."'")->getField("edu");    //学习卡额度
            $arr[$v['yejigsr']]['xxked'] = $xxked?$xxked:0;
            $arr[$v['yejigsr']]['total'] = 0;



            //查看数组的键名中是否有业绩归属人的名字
            if(!array_key_exists($v['yejigsr'],$arr)){
                $arr[$v['yejigsr']]['name'] = $v['yejigsr'];    //业绩归属人的名字
                //如果此业绩归属人不在数组中，则新增此业绩归属人信息
                $arr[$v['yejigsr']]['rentou'] = (double)$this->getRentou($v);  //获得人头数
                $arr[$v['yejigsr']]['jrt'] = $xishu*(double)$this->getJingrentou($beizhu);  //通过备注获得净人头
                //计算备注产生的扩展数据
                $extend = $this->explodeBeizhu($v['data'],$xxked);
                if(!empty($extend)){
                    $arr[$v['yejigsr']][$extend['zzjslx']] = $xishu*(float)$extend['jsyj'];
                }
                //计算合计营业额
                $arr[$v['yejigsr']]['total'] += $xishu*(float)$extend['jsyj'];
            }else{
                //如果此业绩归属人在数组中，则累计此业绩归属人信息
                $arr[$v['yejigsr']]['rentou'] += (double)$this->getRentou($v);  //获得人头数
                $arr[$v['yejigsr']]['jrt'] += $xishu*(double)$this->getJingrentou($beizhu);  //通过备注获得净人头
                //计算备注产生的扩展数据
                $extend = $this->explodeBeizhu($v['data'],$xxked);
                if(!empty($extend)){
                    $arr[$v['yejigsr']][$extend['zzjslx']] += $xishu*(float)$extend['jsyj'];
                }
                //计算合计营业额
                $arr[$v['yejigsr']]['total'] += $xishu*(float)$extend['jsyj'];
            }
        }
        $i = 1;
        foreach ($arr as $k=>$v){
            $arr[$k]['xuhao'] = $i;
            $i++;
        }
//        dump($arr);
        return $arr;
    }

    //根据签单类型返回人头数
    public function explodeBeizhu($data,$xxked){
//        dump($data);
        if(empty($data['beizhu'])){
            return;
        }
        $zybz_count = count(explode("／",$data['beizhu']));
        if($zybz_count <= 1){
            return;
        }
        $arr = array();
        $arr['xinlao'] = mb_substr($data['beizhu'],0,2,"utf-8");   //获得是新生还是老生
        $arr['type'] = mb_substr($data['beizhu'],2,2,"utf-8");   //获得是收据类型
        $arr['nianji'] = mb_substr($data['beizhu'],4,2,"utf-8");   //年级，幼儿或小学
        $arr['jsfs'] = $xxked>0?'学习卡':'老结算';  //结算方式：学习卡、老结算
//        主要备注
        if($zybz_count>1){
            $zybz_arr = explode("／",$data['beizhu']);
            $arr['zybz'] = $zybz_arr[0];
            //根据备注分割
            $bz_arr = array();
            foreach ($zybz_arr as $v){
                //根据：继续分割数组  如：首次缴费日期：2017-07-03缴费
                $a = explode("：",$v);
                if(count($a)>1){
                    $bz_arr[$a[0]] = $a[1];
                }
            }
            $arr['scjfrq'] = str_replace("缴费","",$bz_arr['首次缴费日期']);  //首次缴费日期
        }else{
            $arr['zybz'] = '';
        }
        //如果主要备注是空，首次交费日期对应类型为空
        if(empty($arr['zybz'])){
            $arr['scjfrqdylx'] = '';   //首次交费日期对应类型：新生、1年追补、老生
        }else{
            //如果是新生，则首次交费类型是新生，否则继续判断
            if($arr["xinlao"] == '新生'){
                $arr['scjfrqdylx'] = '新生';
            }else{
                //首次缴费时间 比较 2016年7月1日，在此之前是老生
                if(strtotime($arr['scjfrq']) <= strtotime('2016-7-1')){
                    $arr['scjfrqdylx'] = '老生';
                }else{
                    $arr['scjfrqdylx'] = '1年追补';
                }
            }
        }
        //报读类型，根据主要备注截取最后四个字符
        if(!empty($arr['zybz'])){
            $arr['bdlx'] = mb_substr(trim($arr['zybz']),-4,4,"utf-8");
        }else{
            $arr['bdlx'] = '';
        }
        //交费金额
        $arr['jiaofeije'] = $data['jiaofeije'];
        //教材费
        preg_match_all("/（.*?）/",$data['beizhu'],$pre_arr);
        foreach ($pre_arr as $v){
            $v = str_replace("（",'',$v);
            $v = str_replace("）",'',$v);
            $p_arr = explode("：",$v);
            if($p_arr[0] == '教材费'){
                $arr['jiaocaifei'] = $p_arr[1];
            }
        }
        $arr['jiaocaifei'] = empty($arr['jiaocaifei'])?0:$arr['jiaocaifei'];
        //结算业绩计算
        //如果课程名称为空，并且备注中不含"预缴定金"，结算业绩等于交费金额
        if(empty($data['kechengmc']) && !empty(strstr($data["beizhu"],"预缴定金"))){
            $arr['jsyj'] = $arr["jiaofeije"];
        }else {
            //否则：结算业绩 = 交费金额 - 教材费
            $arr['jsyj'] = $arr["jiaofeije"] - $arr['jiaocaifei'];
        }
        //报读类型2，关联老结算类型,如果主要备注为空，报读类型为空
        if(empty($arr['zybz'])){
            $arr["old_bdlx"] = '';
        }else{
            $baodu = $this->baoduType();
            $arr["old_bdlx"] = $baodu[$arr['bdlx']]["老结算"];
        }
        //老结算的结算类型 = 首次缴费日期对应类型 + 老计算报读类型
        $arr["old_jslx"] = $arr['scjfrqdylx'].$arr['old_bdlx'];

        //返回备注中包含的类型
        $beizhu_type_arr = array("创始会员","国际领袖课程","国内领袖课程","1期秒杀","游学免费读","买三送二","2折秒杀");
        foreach ($beizhu_type_arr as $v){
            if(strpos($data['beizhu'],$v)){
                $arr["bhlx"] = $v;
            }
        }
        if(empty($arr["bhlx"])){
            $arr["bhlx"] = '';
        }
        //结算类型1
        if(empty($arr["zybz"])){
            $arr['jslx1'] = '';
        }else{
            if($arr['scjfrqdylx'] == "新生" || $arr['scjfrqdylx'] == "1年追补" ){
                $arr['jslx1'] = '新生';
            }else{
                $arr['jslx1'] = '老生';
            }
        }
        //报读类型2,学习卡报读类型
        if(empty($arr["zybz"])){
            $arr['xxk_bdlx'] = '';
        }else{
            $baodu = $this->baoduType();
            $arr["xxk_bdlx"] = $baodu[$arr['bdlx']]["学习卡"];
        }
        //学习卡结算类型
        if(empty($arr["zybz"])){
            $arr["xxk_jslx"] = '';
        }else{
            if($arr["bhlx"] == '1期秒杀' && $arr['xinlao'] == '新生'){
                $arr["xxk_jslx"] = '1期秒杀';
            }else{
                if($arr["bhlx"] == '1期秒杀' && $arr['scjfrqdylx'] == '1年追补'){
                    $arr["xxk_jslx"] = '1期秒杀';
                }else{
                    if($arr["bhlx"] == '游学免费读' && $arr['xinlao'] == '新生'){
                        $arr["xxk_jslx"] = '游学免费读';
                    }else{
                        if($arr["bhlx"] == '游学免费读' && $arr['scjfrqdylx'] == '1年追补'){
                            $arr["xxk_jslx"] = '游学免费读';
                        }else{
                            if($arr["bhlx"] == '买三送二' && $arr['xinlao'] == '新生'){
                                $arr["xxk_jslx"] = '买三送二';
                            }else{
                                if($arr["bhlx"] == '买三送二' && $arr['scjfrqdylx'] == '1年追补'){
                                    $arr["xxk_jslx"] = '买三送二';
                                }else{
                                    if($arr["bhlx"] == '2折秒杀' && $arr['xinlao'] == '新生'){
                                        $arr["xxk_jslx"] = '新生小学国际班1年';
                                    }else{
                                        if($arr["bhlx"] == '2折秒杀' && $arr['scjfrqdylx'] == '1年追补'){
                                            $arr["xxk_jslx"] = '新生小学国际班1年';
                                        }else{
                                            if($arr["bhlx"] == '国际领袖课程' || $arr["bhlx"] == '国内领袖课程'){
                                                $arr["xxk_jslx"] = $arr["bhlx"];
                                            }else{
                                                if($arr["bhlx"] == '创始会员' && $arr['jslx1'] == "老生" && $arr["xxk_bdlx"] == "游学会员"){
                                                    $arr["xxk_jslx"] = '老生创始会员游学会员';
                                                }else{
                                                    if($arr["xxk_bdlx"] == "国际班" && $arr['jslx1'] == "新生"){
                                                        $arr["xxk_jslx"] = $arr['jslx1'].$arr['nianji'].$arr['xxk_bdlx'];
                                                    }else{
                                                        $arr["xxk_jslx"] = $arr['jslx1'].$arr['xxk_bdlx'];
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        //最终结算类型,如果结算方式是学习卡，就是学习卡结算类型，如果是老结算，就是老结算类型
        if($arr['jsfs'] == '学习卡'){
            $arr['zzjslx'] = $arr['xxk_jslx'];
        }else{
            $arr['zzjslx'] = $arr['old_jslx'];
        }

//        dump($data['beizhu']);
//        dump($arr);
        return $arr;
    }

    //根据签单类型返回人头数
    public function getRentou($data){
        $arr = array("新增","转校");
        if(in_array($data['data']['qiandanlx'],$arr)){
            return 1;
        }else{
            return 0;
        }
    }

    //根据签单类型返回人头数
    public function baoduType(){
        $arr = array(
          '国际会员'=>array(
              '学习卡'=>'国际班',
              '老结算'=>'国际班'
          ),
          '国际学员'=>array(
              '学习卡'=>'国际班',
              '老结算'=>'国际班'
          ),
          '平时晚班'=>array(
              '学习卡'=>'国际班',
              '老结算'=>'平时晚班'
          ),
          '一对一'=>array(
              '学习卡'=>'国际班',
              '老结算'=>'国际班'
          ),
          '线上学员'=>array(
              '学习卡'=>'爱外教',
              '老结算'=>'国际班'
          ),
          '拼单会员'=>array(
              '学习卡'=>'国际班',
              '老结算'=>'国际班'
          ),
          '游学会员'=>array(
              '学习卡'=>'游学会员',
              '老结算'=>'国际班'
          ),
          '领袖课程'=>array(
              '学习卡'=>'领袖课程',
              '老结算'=>'国际班'
          ),
          '特色喜剧班'=>array(
              '学习卡'=>'国际班',
              '老结算'=>'国际班'
          ),
          '自然拼音版'=>array(
              '学习卡'=>'国际班',
              '老结算'=>'国际班'
          ),
          '返现会员'=>array(
              '学习卡'=>'国际班',
              '老结算'=>'国际班'
          ),
        );
        return $arr;
    }

    //如果业绩归属人有2个，去除掉重复的，返回业绩归属人的唯一数组
    public function getNewList($list){
        //过滤掉名字中的数据
        $filter_arr = array('(主签单人)','(副签单人)','（副签单人)','(03-客户接待员)','（金牌）','（会员学员）','金牌','金牌学员',' ');
        $arr = array();
        $a = 1;
        foreach ($list as $k=>$v){
            $yjgsr_arr = explode(',',$v['yejigsr']);    //将业绩归属人按英文逗号","拆分，如果有2个归属人，则按比例分业绩
            if(count($yjgsr_arr)>1){
                //如果有2个业绩归属人
                for ($i=0;$i<count($yjgsr_arr);$i++){
                    $name = $this->strFilter($yjgsr_arr[$i],$filter_arr);
                    $arr[$a]['yejigsr'] = $name;
                    $arr[$a]['zhufu'] = $this->strZhufu($yjgsr_arr[$i]);
                    $arr[$a]['isshuang'] = 1;    //是否双人业绩。1，是；2，否；
                    $arr[$a]['xishu'] = 0.5;    //双人业绩的系数为0.5
                    $arr[$a]['data'] = $v;
                    $a++;
                }
            }else{
                //只有1个业绩归属人
                $name = $this->strFilter($v['yejigsr'],$filter_arr);
                $arr[$a]['yejigsr'] = $name;
                $arr[$a]['zhufu'] = $this->strZhufu($v['yejigsr']);
                $arr[$a]['isshuang'] = 0;    //是否双人业绩。1，是；2，否；
                $arr[$a]['xishu'] = 1;    //单人业绩的系数为0.5
                $arr[$a]['data'] = $v;
                $a++;
            }
        }
        return $arr;
    }

    //过滤掉字符串中在的指定字符
    Public function strFilter($str,$arr)
    {
        //特殊字符的过滤方法
        foreach ($arr as $v){
            $str = str_replace($v, '', $str);
        }
        return $str;
    }

    //返回签单人是主还是副
    Public function strZhufu($str)
    {
        $arr = explode('(',$str);
        $str = substr($arr[1],0,-1);
        switch ($str){
            case '主签单人':
                return '主签单人';
                break;
            case '副签单人':
                return '副签单人';
                break;
            default :
                return '未知';
                break;
        }
    }

    //从收据记录表中的备注中获得净人头
    public function getJingrentou($str){
        $jrt = '';
        //计算净人头
        $pos_jrt_start = strpos($str, '：');     //截取第一个全角 ：的出现位置
        $pos_jrt_end = strpos($str, '）');
        $jrt = substr($str,($pos_jrt_start+3),($pos_jrt_end-$pos_jrt_start));//中文字符占三个位置，所以排除全角：要加3
//        dump($str);
//        dump($pos_jrt_start);
//        dump($pos_jrt_end);
//        dump($jrt);
        if($jrt === false){
            $jrt = 0;    //如果计算错误,净人头数返回 0
        }else{
            $jrt = (double)$jrt;    //强制转换净人头数为数值
        }
        return $jrt;
    }

}