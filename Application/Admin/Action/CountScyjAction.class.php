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
    public function getScyjbData($qishu,$sid){
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
            //查看数组的键名中是否有业绩归属人的名字
            if(!array_key_exists($v['yejigsr'],$arr)){
                $arr[$v['yejigsr']]['name'] = $v['yejigsr'];    //业绩归属人的名字
                //如果此业绩归属人不在数组中，则新增此业绩归属人信息
                $arr[$v['yejigsr']]['rentou'] = (double)$this->getRentou($v);  //获得人头数
                $arr[$v['yejigsr']]['jrt'] = $xishu*(double)$this->getJingrentou($beizhu);  //通过备注获得净人头
                $arr[$v['yejigsr']]['yeji'] = $this->explodeBeizhu($beizhu);  //通过备注获得业绩
                dump($arr);
                dump($beizhu);
//                if($v['yejigsr'] == '张松煌' && $xishu*(double)$this->getJingrentou($beizhu)){
//                    dump($v['data']['xuehao']);
//                    dump($arr[$v['yejigsr']]);
//                    dump($xishu*(double)$this->getJingrentou($beizhu));
//                }
            }else{
                //如果此业绩归属人在数组中，则累计此业绩归属人信息
                $arr[$v['yejigsr']]['rentou'] += (double)$this->getRentou($v);  //获得人头数
                $arr[$v['yejigsr']]['jrt'] += $xishu*(double)$this->getJingrentou($beizhu);  //通过备注获得净人头
//                if($v['yejigsr'] == '张松煌' && $xishu*(double)$this->getJingrentou($beizhu)){
//                    dump($v['data']['xuehao']);
//                    dump($arr[$v['yejigsr']]);
//                    dump($xishu*(double)$this->getJingrentou($beizhu));
//                    if($v['data']['xuehao'] == 'S18271'){
//                        dump($v);
//                    }
//                 }
            }
        }
        return $arr;
    }

    //根据签单类型返回人头数
    public function explodeBeizhu($beizhu){
        $arr = array();
        $arr['xinlao'] = substr($beizhu,0,6);   //获得是新生还是老生
        $arr['type'] = substr($beizhu,6,6);   //获得是收据类型
        $arr['nianji'] = substr($beizhu,12,6);   //年级
        $arr['baodusc'] = substr($beizhu,18,4);   //报读时长
        return $arr;
    }

    //根据签单类型返回人头数
    public function getYeji($beizhu){
        $this->explodeBeizhu($beizhu);
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