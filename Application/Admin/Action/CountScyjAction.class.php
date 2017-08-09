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
        $table_list = array();
        $data = $Model->query("select * from stjy_qishu_history as h left join `stjy_table_name` as n on h.tid = n.id where h.qishu = '".$qishu."' and h.sid = $sid");
        foreach ($data as $k => $v){
            $table_list[$v['table_name']] = $v;
        }
        //查询出签单人的名字
        $list = $Model->query("select yejigsr,beizhu from stjy_sjjlb where suoshudd = ".$table_list['sjjlb']['id']." and `yejigsr` != '' group by `yejigsr`");
        //过滤掉名字中的数据
        $filter_arr = array('(主签单人)','(03-客户接待员)','（金牌）','（会员学员）','金牌','金牌学员',' ');
        foreach ($list as $k=>$v){
            $list[$k]['yejigsr'] = $this->strFilter($v['yejigsr'],$filter_arr);     //业绩归属人
            $list[$k]['beizhu'] = $this->getBeizhu($v['beizhu']);   //根据备注信息获得备注数组

        }
        return $list;
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

    //收据记录表中的备注替换
    public function getBeizhu($str){
        $arr = array();
        //计算净人头
        //把备注中第一个符合全角 ：替换为@
//        $str = preg_replace('/：/','@',$str,1);
        $pos_jrt_start = strpos($str, '：');     //截取第一个全角 ：的出现位置
        $pos_jrt_end = strpos($str, '）');
        $arr['jrt'] = substr($str,($pos_jrt_start+1),($pos_jrt_end-$pos_jrt_start));
        if($arr['jrt'] === false){
            $arr['jrt'] = 0;    //如果计算错误,净人头数返回 0
        }else{
            $arr['jrt'] = (double)$arr['jrt'];    //强制转换净人头数为数值
        }
        return $arr;
    }

    //收据记录表存在两人分业绩的情况处理 $data 这条收据记录的数据，返回一条负数金额的对冲，并按英文,分割数据
    public function yejiFenpei($data){

    }
}