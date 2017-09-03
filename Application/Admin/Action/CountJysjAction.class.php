<?php
namespace Admin\Action;
use Think\Action;
class CountJysjAction extends CommonAction {
    /**
     * 获得统计数据
     *
     * @param  string $qishu       期数：201707
     * @param  string $sid         学校id：school  中的id
     * @return array
     */
    public function getJysjbData($qishu,$sid){
        //过得经营数据汇总表各数据
        $school_info = M("school")->where("id = ".$sid)->find();
        $arr_zaice = $this->getzaice($qishu,$sid);   //获得在册学生学期状态表
        $arr_kksd = $this->getkksd($qishu,$sid);   //获得开课时段和班级数统计
        $arr_bjbmsj = $this->getbjbmsj($qishu,$sid);   //获得班级部门数据

        $arr['school_info'] = $school_info;
        $arr['kksd'] = $arr_kksd;
        $arr['zaice'] = $arr_zaice;
        $arr['kecheng']  = array("K01","K02","K03","K04","K05","K06","P01","P02","P03","P1A","P1B","P2A","P2B","P3A","P3B","P4A","P4B","P5A","P5B","P6A","P6B","J1A","J1B","J2A","J2B","J3A","J3B","一对一","NS1");
        $arr['bjbmsj'] = $arr_bjbmsj;
        return $arr;

    }

    public function getkksd($qishu,$sid){
        $suoshudd = M("qishu_history")->where("qishu = '".$qishu."' and sid = $sid and tid =2")->getField("id");
        $list = M("bjxxb")->where("suoshudd = ".$suoshudd)->select();
//        dump($list);
//        echo M("bjxxb")->getLastSql();
        //根据课程名称判断时间段
        $arr = array();
        foreach ($list as $k=>$v){
            if(empty($v["shangkesj"])){
                continue;
            }
            //如果课程名称中含有字符"一"，返回一对一
            if(strpos($v['kechengmc'],"一")){
                $list[$k]["shijianduan"] = "一对一";
            }else{
                $list[$k]["day"] = mb_substr($v["shangkesj"],0,2,"utf-8");
                $list[$k]["shiduan"] = mb_substr($v["shangkesj"],2,2,"utf-8");
                if((int)$list[$k]["shiduan"] >= 0 && (int)$list[$k]["shiduan"] <= 12){
                    $list[$k]["shijianduan"] = $list[$k]["day"]."上午";
                }elseif ((int)$list[$k]["shiduan"] >= 13 && (int)$list[$k]["shiduan"] <= 17){
                    $list[$k]["shijianduan"] = $list[$k]["day"]."下午";
                }elseif ((int)$list[$k]["shiduan"] >= 18 && (int)$list[$k]["shiduan"] <= 24){
                    $list[$k]["shijianduan"] = $list[$k]["day"]."晚上";
                }
            }
            if($v['jieyezt'] == '未结业'){
                $arr[$list[$k]["shijianduan"]] += 1;
                $arr['总计'] += 1;
            }
        }
        return $arr;
    }


    public function getzaice($qishu,$sid){
        $where['qishu'] = $qishu;// 获取期数
        $where['sid'] = $sid;// 获取学校id
        $where['tid'] = 3;// 从班级学员信息表获取信息,它的tid是3
        $id = M('qishu_history')->where($where)->getField('id');// 获取对应qishu_history的id,也就是bjxyxxb里面的suoshudd的订单号
        $nianji = array(
            'youeryuan'=>'幼儿园',
            'yinianji'=>'一年级',
            'ernianji'=>'二年级',
            'sannianji'=>'三年级',
            'sinianji'=>'四年级',
            'wunianji'=>'五年级',
            'liunianji'=>'六年级',
            'chuyi'=>'初一',
            'chuer'=>'初二',
            'chusan'=>'初二以上',
            'heji'=>'合计'
        );
        $list = M('bjxyxxb')->where("suoshudd = ".$id)->select();
        $arr = array();
        foreach ($list as $k => $v){
            //根据班级班号确定级别
            if(stripos($v['banji'],"一")){
                $list[$k]["jibie"] = "一对一";
            }else{
                $list[$k]["jibie"] = mb_substr($v['banji'],0,3,"utf-8");
            }
            //判断是否在读状态
            if($v["banji"] == '停读'){
                $list[$k]["zhuangtai"] = "停读";
            }else{
                if($v["banji"] == '未进班'){
                    $list[$k]["zhuangtai"] = "未进班";
                }else{
                    if($v['beizhu'] == '' && $v["xuehao"] != ""){
                        $list[$k]["zhuangtai"] = "在读";
                    }else{
                        $list[$k]["zhuangtai"] = "";
                    }
                }
            }
            //统计各年级未进班的人数
            $arr = $this->getZaiceArr($list[$k]["zhuangtai"],"未进班",$list[$k]["jibie"],"未进班","weijinban",$v["nianji"],$arr);
            //统计各年级停读的人数
            $arr = $this->getZaiceArr($list[$k]["zhuangtai"],"停读",$list[$k]["jibie"],"停读","tingdu",$v["nianji"],$arr);
            //统计每个课程各年级在读的人数
            $kecheng_arr = array("K01","K02","K03","K04","K05","K06","P01","P02","P03","P1A","P1B","P2A","P2B","P3A","P3B","P4A","P4B","P5A","P5B","P6A","P6B","J1A","J1B","J2A","J2B","J3A","J3B","一对一","NS1");
            foreach ($kecheng_arr as $k1=>$v1){
                $arr = $this->getZaiceArr($list[$k]["zhuangtai"],"在读",$list[$k]["jibie"],$v1,$v1,$v["nianji"],$arr);
            }
            foreach ($nianji as $k2 => $v2){
                $data[$v2] = $arr[$v2];
            }
        }
//        dump($data);
        return $data;
    }

    public function getZaiceArr($zhuangtai,$zhuangtai_if,$jibie,$jibie_if,$name,$nianji,$arr){
        if($zhuangtai == $zhuangtai_if && $jibie == $jibie_if){
            if($nianji == '大班' || $nianji == '中班' || $nianji == '小班'){
                $arr['幼儿园'][$name] += 1;
                $arr['幼儿园']["zrs"] += 1;
                if($zhuangtai_if == "在读"){
                    $arr['幼儿园']["sjzbrs"] += 1;
                }
            }
            if($nianji == '一年级'){
                $arr['一年级'][$name] += 1;
                $arr['一年级']["zrs"] += 1;
                if($zhuangtai_if == "在读"){
                    $arr['一年级']["sjzbrs"] += 1;
                }
            }
            if($nianji == '二年级'){
                $arr['二年级'][$name] += 1;
                $arr['二年级']["zrs"] += 1;
                if($zhuangtai_if == "在读"){
                    $arr['二年级']["sjzbrs"] += 1;
                }
            }
            if($nianji == '三年级'){
                $arr['三年级'][$name] += 1;
                $arr['三年级']["zrs"] += 1;
                if($zhuangtai_if == "在读"){
                    $arr['三年级']["sjzbrs"] += 1;
                }
            }
            if($nianji == '四年级'){
                $arr['四年级'][$name] += 1;
                $arr['四年级']["zrs"] += 1;
                if($zhuangtai_if == "在读"){
                    $arr['四年级']["sjzbrs"] += 1;
                }
            }
            if($nianji == '五年级'){
                $arr['五年级'][$name] += 1;
                $arr['五年级']["zrs"] += 1;
                if($zhuangtai_if == "在读"){
                    $arr['五年级']["sjzbrs"] += 1;
                }
            }
            if($nianji == '六年级'){
                $arr['六年级'][$name] += 1;
                $arr['六年级']["zrs"] += 1;
                if($zhuangtai_if == "在读"){
                    $arr['六年级']["sjzbrs"] += 1;
                }
            }
            if($nianji == '初一'){
                $arr['初一'][$name] += 1;
                $arr['初一']["zrs"] += 1;
                if($zhuangtai_if == "在读"){
                    $arr['初一']["sjzbrs"] += 1;
                }
            }
            if($nianji == '初二'){
                $arr['初二'][$name] += 1;
                $arr['初二']["zrs"] += 1;
                if($zhuangtai_if == "在读"){
                    $arr['初二']["sjzbrs"] += 1;
                }
            }
            if($nianji == '初三' || $nianji == '高一' || $nianji == '高二' || $nianji == '高三' || $nianji == '其他'){
                $arr['初二以上'][$name] += 1;
                $arr['初二以上']["zrs"] += 1;
                if($zhuangtai_if == "在读"){
                    $arr['初二以上']["sjzbrs"] += 1;
                }
            }
            $arr['合计'][$name] += 1;
            $arr['合计']["zrs"] += 1;
            if($zhuangtai_if == "在读"){
                $arr['合计']["sjzbrs"] += 1;
            }
        }
        return $arr;
    }

    //获得班级部门数据
    public function getbjbmsj($qishu,$sid){
        $arr = array();

        return $arr;
    }

}
