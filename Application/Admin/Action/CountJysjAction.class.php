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

        $arr['school_info'] = $school_info;
        $arr['kksd'] = $arr_kksd;
        $arr['zaice'] = $arr_zaice;
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
                    if($v['banji'] == '' && $v["xuehao"] != ""){
                        $list[$k]["zhuangtai"] = "在读";
                    }else{
                        $list[$k]["zhuangtai"] = "";
                    }
                }
            }
            //统计各年级未进班的人数
            if($list[$k]["zhuangtai"] == '未进班' && $list[$k]["jibie"] == '未进班'){
                if($v["nianji"] == '大班' || $v["nianji"] == '中班' || $v["nianji"] == '小班'){
                    $arr['幼儿园']['weijinban'] += 1;
                }
                if($v["nianji"] == '一年级'){
                    $arr['一年级']['weijinban'] += 1;
                }
                if($v["nianji"] == '二年级'){
                    $arr['二年级']['weijinban'] += 1;
                }
                if($v["nianji"] == '三年级'){
                    $arr['三年级']['weijinban'] += 1;
                }
                if($v["nianji"] == '四年级'){
                    $arr['四年级']['weijinban'] += 1;
                }
                if($v["nianji"] == '五年级'){
                    $arr['五年级']['weijinban'] += 1;
                }
                if($v["nianji"] == '六年级'){
                    $arr['六年级']['weijinban'] += 1;
                }
                if($v["nianji"] == '初一'){
                    $arr['初一']['weijinban'] += 1;
                }
                if($v["nianji"] == '初二'){
                    $arr['初二']['weijinban'] += 1;
                }
                if($v["nianji"] == '初三' || $v["nianji"] == '高一' || $v["nianji"] == '高二' || $v["nianji"] == '高三' || $v["nianji"] == '其他'){
                    $arr['初二以上']['weijinban'] += 1;
                }
                $arr['合计']['weijinban'] += 1;
            }

            //统计各年级停读的人数
            if($list[$k]["zhuangtai"] == '停读' && $list[$k]["jibie"] == '停读'){
                if($v["nianji"] == '大班' || $v["nianji"] == '中班' || $v["nianji"] == '小班'){
                    $arr['幼儿园']['tingdu'] += 1;
                }
                if($v["nianji"] == '一年级'){
                    $arr['一年级']['tingdu'] += 1;
                }
                if($v["nianji"] == '二年级'){
                    $arr['二年级']['tingdu'] += 1;
                }
                if($v["nianji"] == '三年级'){
                    $arr['三年级']['tingdu'] += 1;
                }
                if($v["nianji"] == '四年级'){
                    $arr['四年级']['tingdu'] += 1;
                }
                if($v["nianji"] == '五年级'){
                    $arr['五年级']['tingdu'] += 1;
                }
                if($v["nianji"] == '六年级'){
                    $arr['六年级']['tingdu'] += 1;
                }
                if($v["nianji"] == '初一'){
                    $arr['初一']['tingdu'] += 1;
                }
                if($v["nianji"] == '初二'){
                    $arr['初二']['tingdu'] += 1;
                }
                if($v["nianji"] == '初三' || $v["nianji"] == '高一' || $v["nianji"] == '高二' || $v["nianji"] == '高三' || $v["nianji"] == '其他'){
                    $arr['初二以上']['tingdu'] += 1;
                }
                $arr['合计']['tingdu'] += 1;
            }
            foreach ($nianji as $k => $v){
                $data[$v] = $arr[$v];
            }
        }
//        dump($data);
        return $data;
    }

}
