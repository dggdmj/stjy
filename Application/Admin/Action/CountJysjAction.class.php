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
        //获得经营数据汇总表各数据
        $school_info = M("school")->where("id = ".$sid)->find();
        $arr_zaice = $this->getzaice($qishu,$sid);   //获得在册学生学期状态表
        $arr_kksd = $this->getkksd($qishu,$sid);   //获得开课时段和班级数统计
        $arr_bjbmsj = $this->getbjbmsj($qishu,$sid);   //获得班级部门数据
        $arr_gbxzdrstj = $this->getgbxzdrstj($qishu,$sid);   //获得各班型在读人数统计数据
        $arr_xsrsbd = $this->getxsrsbd($qishu,$sid);   //获得学生人数变动数据

        $arr['school_info'] = $school_info;
        $arr['kksd'] = $arr_kksd;
        $arr['zaice'] = $arr_zaice;
        $arr['kecheng']  = array("K01","K02","K03","K04","K05","K06","P01","P02","P03","P1A","P1B","P2A","P2B","P3A","P3B","P4A","P4B","P5A","P5B","P6A","P6B","J1A","J1B","J2A","J2B","J3A","J3B","一对一","NS1");
        $arr['bjbmsj'] = $arr_bjbmsj;
        $arr['gbxzdrstj'] = $arr_gbxzdrstj;
        $arr['xsrsbd'] = $arr_xsrsbd;
        return $arr;

    }

    //获得学生人数变动数据
    public function getxsrsbd($qishu,$sid){
        // $suoshudd = M("qishu_history")->where("qishu = '".$qishu."' and sid = $sid and tid =2")->getField("id");
        $arr = array('本月初在册学生人数'=>0,'本月新生人数'=>0,'其他学校转入'=>0,'流失回来学生'=>0,'本月流失学生人数'=>0,'本月退费学生'=>0,'转校学员'=>0,'本月新生人数'=>0,'本月底在册学生人数'=>0);
        // //本月初在册学生人数，如果初始化数据里又，就从初始化数据里取，否则从上一期里取
        // $chushirenshu_def = M("school")->where("id = $sid")->getField("xueshengnum");
        // if($chushirenshu_def != 0){
        //     $arr['本月初在册学生人数'] = $chushirenshu_def; //
        // }else{
        //     //这里取上一期的数据
        //     $arr['本月初在册学生人数'] = 0;
        // }
        // $total = $arr['本月初在册学生人数'];


        //减少明细无误后开启
        // $fmonth = $this->getMonth($qishu);
        // $id_fmonth = $this->getQishuId($fmonth,$sid,1);
        // $id = $this->getQishuId($qishu,$sid,1);
        // if(!empty($id_fmonth)){
        //     $res = M('xyxxb')->where('suoshudd ='.$id.' and zhuangtai="在读"')->select();
        //     $arr['本月初在册学生人数'] = count($res);
        // }else{
        //     $arr['本月初在册学生人数'] = 0;
        // }

        $fmonth = $this->getMonth($qishu);
        $id_fmonth = $this->getQishuId($fmonth,$sid,3);
        $id = $this->getQishuId($qishu,$sid,3);
        if(!empty($id_fmonth)){
            $res = M('bjxyxxb')->where('suoshudd ='.$id)->select();
            $arr['本月初在册学生人数'] = count($res);
        }else{
            $arr['本月初在册学生人数'] = 0;
        }

        // $chushirenshu_def = M("school")->where("id = $sid")->getField("xueshengnum");
        // if($chushirenshu_def != 0){
        //     $arr['本月初在册学生人数'] = $chushirenshu_def;
        // }

        $total = $arr['本月初在册学生人数'];

        //判断新增明细
        $xz = new \Admin\Action\CountXzmxAction();
        $xzinfo = $xz->getXzmxbData($qishu,$sid);
        $rentou_arr = array();
        foreach ($xzinfo as $k => $v){
            if($v['addtype'] == '新生'){
                $arr['本月新生人数'] += 1;
                $total += 1;
            }
            if($v['addtype'] == '转入'){
                $arr['其他学校转入'] += 1;
                $total += 1;
            }
            if($v['addtype'] == '流失回来'){
                $arr['流失回来学生'] += 1;
                $total += 1;
            }
        }
        //判断减少明细
        $js = new \Admin\Action\CountJsmxAction();
        $jsinfo = $js->getJsmxbData($qishu,$sid);
        foreach ($jsinfo as $k => $v){
            if($v['reducetype'] == '流失'){
                $arr['本月流失学生人数'] += 1;
                $total -= 1;
            }
            if($v['reducetype'] == '退学'){
                $arr['本月退费学生'] += 1;
                $total -= 1;
            }
            if($v['reducetype'] == '转出'){
                $arr['转校学员'] += 1;
                $total -= 1;
            }
        }
        $arr['本月底在册学生人数'] = $total;
        return $arr;
    }

    //获得开课时段和班级数统计
    public function getkksd($qishu,$sid){
        $suoshudd = M("qishu_history")->where("qishu = '".$qishu."' and sid = $sid and tid =2")->getField("id");
        $list = M("bjxxb")->where("suoshudd = ".$suoshudd)->select();
        //根据课程名称判断时间段
        $arr = array();
        foreach ($list as $k=>$v){
            if($v["banjimc"] == '未进班' || $v["banjimc"] == '停读'){
                continue;
            }
            //如果课程名称中含有字符"一"，返回一对一
            if(strpos($v['kechengmc'],"一")){
                $list[$k]["shijianduan"] = "一对一";
            }else{
                $list[$k]["day"] = mb_substr($v["shangkesj"],0,2,"utf-8");
                $list[$k]["shiduan"] = mb_substr($v["shangkesj"],2,2,"utf-8");
                if((int)$list[$k]["shiduan"] >= 1 && (int)$list[$k]["shiduan"] <= 12){
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
//                    if($v['beizhu'] == '' && $v["xuehao"] != ""){
                    if($v["xuehao"] != ""){
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
//        dump($arr);
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

    //获得班级部门数据班级部门数据
    public function getbjbmsj($qishu,$sid){
        $ssid = M("qishu_history")->where("qishu = '".$qishu."' and sid = $sid and tid =2")->getField("id");
        //获得班级信息表的数据
        $bjxx_list = M("bjxxb")->where("suoshudd = $ssid")->select();
        $bumen_arr = $this->getBumenarr();
        $bumen_count = array();
        foreach ($bumen_arr as $key =>$b){
            $bumen_count[$key]['bumen'] = $b;
        }
        $bumen_count['dybjs'] = 0;   //初始化当月班级数
        $bumen_count['rszj'] = 0;   //初始化各班人数总计
        foreach ($bjxx_list as $k=>$v){
            //如果课程名称中包含"一"，级别为"一对一"，否则取班级名称的前三位
            if(strpos($v['kechengmc'],"一")){
                $bjxx_list[$k]["jibie"] = "一对一";
            }else{
                $bjxx_list[$k]["jibie"] = mb_substr($v['banjimc'],0,3,"utf-8");
            }

            if(strpos($v['kechengmc'],"一")){
                $list[$k]["bumen"] = "一对一";
            }else{
                $list[$k]["bumen"] = M("banjibianhao")->where("jingdujb = '".$bjxx_list[$k]["jibie"]."'")->getField("banxing");
            }
            //统计各部门的班级人数等数据，并且状态是未结业
            foreach ($bumen_count as $k2=>$b2){
                if($list[$k]["bumen"] == $b2['bumen'] && $v['jieyezt'] == "未结业"){
                    if(empty($b2["bumen"])){
                        continue;
                    }
                    //统计当月班级数
                    $bumen_count[$k2]["dybjs"] += 1;
                    $bumen_count['dybjs_total'] += 1;
                }
                if($list[$k]["bumen"] == $b2['bumen'] && $v['jieyezt'] == "未结业"){
                    if(empty($b2["bumen"])){
                        continue;
                    }
                    //统计各班人数总计
                    $bumen_count[$k2]["rszj"] += (int)$v["dangqianrs"];
                    $bumen_count['rszj_total'] += (int)$v["dangqianrs"];
                }
            }
        }
        foreach ($bumen_count as $k=>$v){
            //班级饱和率计算
            $bumen_count[$k]["baoguanglv"] = round((float)$v["rszj"]/(float)$v["dybjs"],2);
        }
        //班级饱和率统计
        $bumen_count["baoguanglv_total"] = round((float)$bumen_count["rszj_total"]/(float)$bumen_count["dybjs_total"],2);
//        dump($bumen_count);
        return $bumen_count;
    }

    //返回各班型在读人数统计数据
    public function getgbxzdrstj($qishu,$sid){
        $ssid = M("qishu_history")->where("qishu = '".$qishu."' and sid = $sid and tid =3")->getField("id");
        //获得班级学员信息表的数据
        $bjxyxxb = M("bjxyxxb")->where("suoshudd = $ssid")->select();
        $bumen_arr = $this->getBumenarr();
        $kecheng_arr = $this->getKechengarr();
        $bumen_count = array();
        foreach ($bumen_arr as $key =>$b){
            $bumen_count[$key]['bumen'] = $b;
        }
        foreach ($bjxyxxb as $k=>$v){
            //判断是否在读状态
            if($v["banji"] == '停读'){
                $bjxyxxb[$k]["zhuangtai"] = "停读";
            }else{
                if($v["banji"] == '未进班'){
                    $bjxyxxb[$k]["zhuangtai"] = "未进班";
                }else{
//                    if($v['beizhu'] == '' && $v["xuehao"] != ""){
                    if($v["xuehao"] != ""){
                        $bjxyxxb[$k]["zhuangtai"] = "在读";
                    }else{
                        $bjxyxxb[$k]["zhuangtai"] = "";
                    }
                }
            }
            //判断部门信息
            if($bjxyxxb[$k]["zhuangtai"] == "在读"){
                //如果课程名称中包含"一"，级别为"一对一"，否则取班级名称的前三位
                if(strpos($v['banji'],"一")){
                    $bjxyxxb[$k]["bumen"] = "一对一";
                }else{
                    $bjxyxxb[$k]["jibie"] = mb_substr($v['banji'],0,3,"utf-8");
                    $bjxyxxb[$k]["bumen"] = M("banjibianhao")->where("jingdujb = '".$bjxyxxb[$k]["jibie"]."'")->getField("banxing");
                }
            }else{
                $bjxyxxb[$k]["bumen"] = "停读";
            }
            //判断班型
            if($bjxyxxb[$k]["bumen"] == "一对一"){
                $bjxyxxb[$k]["banxing"] = "一对一";
            }else{
                $banxing = $this->getBanxing();
                $bjxyxxb[$k]["banxing"] = $banxing[$v['nianji']];
            }
            //判断时间段
            $bjxyxxb[$k]["shijianduan"] == "一对一";
            //获得开课时段
            $bjxyxxb[$k]["shijianduan"] = $this->getkksd2($qishu,$sid,$v['banji']);
            //获得开课时长
            $bjxyxxb[$k]["shijianchang"] = $this->getshichang($qishu,$sid,$v['banji']);
            //判断班型详情
            if($bjxyxxb[$k]["banxing"] == "幼儿班" || $bjxyxxb[$k]["banxing"] == "中学班" || $bjxyxxb[$k]["banxing"] == "一对一"){
                $bjxyxxb[$k]["banxing_xq"] = $bjxyxxb[$k]["banxing"];
            }else{
                if($bjxyxxb[$k]["shijianduan"] == "周日晚上" || $bjxyxxb[$k]["shijianduan"] == "周六晚上" || $bjxyxxb[$k]["shijianduan"] == "周五晚上"){
                    $bjxyxxb[$k]["banxing_xq"] = $bjxyxxb[$k]["shijianduan"];
                }else{
                    if($bjxyxxb[$k]["shijianduan"] == "周六上午" || $bjxyxxb[$k]["shijianduan"] == "周六下午" || $bjxyxxb[$k]["shijianduan"] == "周日上午" || $bjxyxxb[$k]["shijianduan"] == "周日下午"){
                        $bjxyxxb[$k]["banxing_xq"] = '小学周末白天班';
                    }else{
                        $bjxyxxb[$k]["banxing_xq"] = '小学平时'.$bjxyxxb[$k]["shijianchang"].'班';
                    }
                }
            }
            foreach ($kecheng_arr as $k_key=>$kecheng){
                foreach ($bumen_count as $key=>$c){
                    if($bjxyxxb[$k]["zhuangtai"] == "在读" && $kecheng == $bjxyxxb[$k]["banxing_xq"] && $bjxyxxb[$k]["bumen"] == $c["bumen"]){
//                        if($bjxyxxb[$k]["bumen"] == '幼儿部' && $bjxyxxb[$k]["banxing_xq"] == '小学周末白天班'){
//                            dump($bjxyxxb[$k]['banji']);
//                            dump($bjxyxxb[$k]['xuehao']);
//                        }
                        $bumen_count[$key][$k_key] += 1;
                    }
                }
            }
//            if($v['xuehao'] == 'S13462'){
//                dump($bjxyxxb[$k]);
//            }
        }
        foreach ($bumen_count as $k=>$v){
            foreach ($v as $key=>$vo){
                if($key != "bumen"){
                    $bumen_count[$k]["heji"] += $vo;
                }
                if($key != "bumen"){
                    $bumen_count[5][$key] += $vo;
                }
            }
            $bumen_count[5]['heji'] += $bumen_count[$k]["heji"];
            $bumen_count[5]['bumen'] = '总计';
        }

//        dump($bumen_count);
        return $bumen_count;
    }

    //期数，学校Id,班级名称
    public function getshichang($qishu,$sid,$bjmc){
        $suoshudd = M("qishu_history")->where("qishu = '".$qishu."' and sid = $sid and tid =2")->getField("id");
        $field = M("bjxxb")->where("banjimc = '".$bjmc."'and suoshudd = ".$suoshudd)->getField("nianji");
        $field = $field?$field:0;
        return $field;
    }

    //期数，学校Id,班级名称
    public function getkksd2($qishu,$sid,$bjmc){
        $suoshudd = M("qishu_history")->where("qishu = '".$qishu."' and sid = $sid and tid =2")->getField("id");
        $list = M("bjxxb")->where("suoshudd = ".$suoshudd)->select();
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
                if((int)$list[$k]["shiduan"] >= 1 && (int)$list[$k]["shiduan"] <= 12){
                    $list[$k]["shijianduan"] = $list[$k]["day"]."上午";
                }elseif ((int)$list[$k]["shiduan"] >= 13 && (int)$list[$k]["shiduan"] <= 17){
                    $list[$k]["shijianduan"] = $list[$k]["day"]."下午";
                }elseif ((int)$list[$k]["shiduan"] >= 18 && (int)$list[$k]["shiduan"] <= 24){
                    $list[$k]["shijianduan"] = $list[$k]["day"]."晚上";
                }
            }
            if($v['banjimc'] == $bjmc){
                return $list[$k]["shijianduan"];
            }
        }
        return false;
    }

    //部门数组
    public function getBumenarr(){
        $arr = array("幼儿部","小初部","小高部","初中部","一对一");
        return $arr;
    }

    //课程数组
    public function getKechengarr(){
        $arr = array(
            "yeb"=>"幼儿班",
            "xxzmb"=>"小学周末白天班",
            "zxb"=>"中学班",
            "xxps15ban"=>"小学平时1.5小时班",
            "xxps20ban"=>"小学平时2小时班",
            "xxps25ban"=>"小学平时2.5小时班",
            "xxps30ban"=>"小学平时3小时班",
            "zsws"=>"周日晚上",
            "zwws"=>"周五晚上",
            "zlws"=>"周六晚上",
            "ydy"=>"一对一",
            );
        return $arr;
    }

    public function getBanxing(){
        $arr = array(
          "小班"=>"幼儿班",
          "中班"=>"幼儿班",
          "大班"=>"幼儿班",
          "一年级"=>"小学班",
          "二年级"=>"小学班",
          "三年级"=>"小学班",
          "四年级"=>"小学班",
          "五年级"=>"小学班",
          "六年级"=>"小学班",
          "初一"=>"中学班",
          "初二"=>"中学班",
          "初三"=>"中学班",
          "高一"=>"中学班",
          "高二"=>"中学班",
          "高三"=>"中学班",
          "其他"=>"中学班",
        );
        return $arr;
    }
}
