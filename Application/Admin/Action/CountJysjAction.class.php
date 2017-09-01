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
        $where['qishu'] = $qishu;// 获取期数
        $where['sid'] = $sid;// 获取学校id
        $where['tid'] = 3;// 从班级学员信息表获取信息,它的tid是3
        $id = M('qishu_history')->where($where)->getField('id');// 获取对应qishu_history的id,也就是bjxyxxb里面的suoshudd的订单号
        //过得经营数据汇总表各数据
        $school_info = M("school")->where("id = ".$sid)->find();
        $arr_zaice = $this->getzaice($id);   //获得在册学生学期状态表
        $arr_kksd = $this->getkksd($qishu,$sid);   //获得开课时段和班级数统计

        $arr['school_info'] = $school_info;
        $arr['kksd'] = $arr_kksd;
        $arr['zaice'] = $arr_zaice;
        return $arr;

    }

    public function getkksd($qishu,$sid){
        $suoshudd = M("qishu_history")->where("qishu = '".$qishu."' and sid = $sid and tid =2")->getField("id");
        $list = M("bjxxb")->where("suoshudd = ".$suoshudd)->select();dump($list);
        echo M("bjxxb")->getLastSql();
        //根据课程名称判断时间段
        $arr = array();
        foreach ($list as $k=>$v){
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


    public function getzaice($id){
        $nianji = array('youeryuan'=>'幼儿园','yinianji'=>'一年级','ernianji'=>'二年级','sannianji'=>'三年级','sinianji'=>'四年级','wunianji'=>'五年级','liunianji'=>'六年级','chuyi'=>'初一','chuer'=>'初二','chusan'=>'初二以上','heji'=>'合计');
        $arr = M('bjxyxxb')->field('count(*) as count,nianji')->where('gonglixx is not null and banji != "游学会员" and suoshudd ='.$id)->group('nianji')->select();// 取得总人数合计数目
        $arr1 = M('bjxyxxb')->field('count(*) as count,nianji')->where('gonglixx is not null and banji != "游学会员" and suoshudd ='.$id.' and banji = "未进班"')->group('nianji')->select();// 取得未进班人数合计数目
        $arr2 = M('bjxyxxb')->field('count(*) as count,nianji')->where('gonglixx is not null and banji != "游学会员" and suoshudd ='.$id.' and banji = "停读"')->group('nianji')->select();// 取得停读人数合计数目
        $heji = $this->getHeji($arr);
        $weijinban = $this->getHeji($arr1);
        $tingdu = $this->getHeji($arr2);
        $res = ['heji'=>$heji,'weijinban'=>$weijinban,'tingdu'=>$tingdu];
        return $res;
    }

}
