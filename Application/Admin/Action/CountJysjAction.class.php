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
    public function getJysjbData($qishu='201810',$sid='15'){
        //获得经营数据汇总表各数据
        $school_info = M("school")->where("id = ".$sid)->find();
        $arr_zaice = $this->getzaice($qishu,$sid);   //获得在册学生学期状态表
        $arr_kksd = $this->getkksd($qishu,$sid);   //获得开课时段和班级数统计
        $arr_bjbmsj = $this->getbjbmsj($qishu,$sid);   //获得班级部门数据
//        $arr_gbxzdrstj = $this->getgbxzdrstj($qishu,$sid);   //获得各班型在读人数统计数据
        $arr_xsrsbd = $this->getxsrsbd($qishu,$sid);   //获得学生人数变动数据
        $arr_beizhu = $this->getbeizhu($qishu,$sid);   //获得备注信息
        //数据比对
        $nian = substr($qishu,0,4);
        $xyxxb_id = $this->getQishuId($qishu,$sid,1);
        $bjxyxxb_id = $this->getQishuId($qishu,$sid,3);

        $lastday = date('Y-m-d', strtotime( date('Y-m-d',strtotime(substr($qishu,0,4).'-'.substr($qishu,4,2).'-01')).' +1 month -1 day') );
        $firstday = substr($qishu,0,4).'-'. substr($qishu,4,2).'-01';
        $school_name = M('school')->where("id=$sid")->getField('name');
        // 学员信息表与班级花名册及出勤核对在读人数
        $data['as'] = M('xyxxb_'.$nian)->where("suoshudd='$xyxxb_id' and shoucixfrq != '' and zhuangtai = '在读' and xiaoqu='$school_name' and  zuijinsksj >= '$firstday' and baomingrq <= '$lastday'")->count();
        $data['f'] = M('bjxyxxb_'.$nian)->where("suoshudd='$bjxyxxb_id' and xuehao != ''")->count();
        $data['chayi1'] = $data['as'] - $data['f'];
        //班级数核对
        $data['c21'] = $arr_kksd['总计'];
        $data['c57'] = $arr_bjbmsj['5']['dangyuebjs'];
        $data['chayi2'] = $data['c21'] - $data['c57'];
        //在读人数核对
        $data['f36'] = $arr_zaice['合计']['shijizbrs'];
        $data['d57'] = $arr_bjbmsj['5']['renshuzj'];
        $data['chayi3'] = $data['f36'] - $data['d57'];
        //总人数核对
        $data['c36'] = $arr_zaice['合计']['zongrenshu'];
        $data['d46'] = $arr_xsrsbd['本月底在册学生人数'];
        $data['chayi4'] = $data['c36'] - $data['d46'];
        
        $arr['school_info'] = $school_info;
        $arr['kksd'] = $arr_kksd;
        $arr['zaice'] = $arr_zaice;
        // $arr['kecheng']  = array("K01","K02","K03","K04","K05","K06","P01","P02","P03","P1A","P1B","P2A","P2B","P3A","P3B","P4A","P4B","P5A","P5B","P6A","P6B","J1A","J1B","J2A","J2B","J3A","J3B","一对一","NS1");
        $kecheng = M('banjibianhao')->field('jingdujb')->select();
        foreach($kecheng as $val){
            $arr['kecheng'][] = $val['jingdujb'];
        }

        $arr['bjbmsj'] = $arr_bjbmsj;
//        $arr['gbxzdrstj'] = $arr_gbxzdrstj;
        $arr['xsrsbd'] = $arr_xsrsbd;
        $arr['beizhu'] = $arr_beizhu;
        $arr['qishu'] = $qishu;
        $arr['sid'] = $sid;
        $arr['jysj'] = $data;
        return $arr;


    }

    //获得备注信息
    public function getbeizhu($qishu,$sid){
        $beizhu = M("jysjb_beizhu")->where("qishu = '".$qishu."' and sid = $sid")->find();
        return $beizhu;
    }

    //获得学生人数变动数据
    public function getxsrsbd($qishu,$sid){
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        $nianfen = substr($qishu,0,4);
        $arr = array('本月初在册学生人数'=>0,'本月新生人数'=>0,'其他学校转入'=>0,'流失回来学生'=>0,'本月流失学生人数'=>0,'本月退费学生'=>0,'转校学员'=>0,'本月底在册学生人数'=>0);

        $fmonth = $this->getMonth($qishu);  //获得上月期数
        $xyxxb_prev_id = $this->getQishuId($fmonth,$sid,1);  //获得学员信息表的所属Id
        if(!empty($xyxxb_prev_id)){
//            $where = 'suoshudd ='.$xyxxb_prev_id.' and ((xuehao !="" and beizhu = "") or banji = "停读" or banji = "未进班")';
            $where = "suoshudd =$xyxxb_prev_id and (zhuangtai = '在读' or zhuangtai = '休学') and xiaoqu='$school_name'";
            $res = M('xyxxb_'.$nianfen)->where($where)->group("xuehao")->field("id")->select();
            $r = count($res);
            $arr['本月初在册学生人数'] = $r;
        }else{
            $arr['本月初在册学生人数'] = 0;
        }

        //本月的时间范围
        $nianfen = substr($qishu,0,4);
        $date = $this->getNextMonthDays($qishu."01");
        $starttime = strtotime($qishu."01");
        $endtime = strtotime($date[0]);

//        $chushirenshu_def = M("school")->where("id = $sid")->getField("xueshengnum");
//        if($chushirenshu_def != 0){
//            $arr['本月初在册学生人数'] = $chushirenshu_def;
//        }else{
//            $arr['本月初在册学生人数'] = $arr['本月初在册学生人数']?$arr['本月初在册学生人数']:0;
//        }

        $xzmxb_id = $this->getQishuId($qishu,$sid,10); //新增
        $arr['本月新生人数'] = M('xzmxb')->where("suoshudd='$xzmxb_id' and xinzenglx='新增'")->count();
        $arr['流失回来学生'] = M('xzmxb')->where("suoshudd='$xzmxb_id' and xinzenglx='流失回来'")->count();
        $arr['其他学校转入'] = M('xzmxb')->where("suoshudd='$xzmxb_id' and xinzenglx='转入'")->count();
        $jsmxb_id = $this->getQishuId($qishu,$sid,11);    //减少
        $arr['本月流失学生人数'] = M('jsmxb')->where("suoshudd='$jsmxb_id' and jianshaolx='流失'")->count();
        $arr['转校学员'] = M('jsmxb')->where("suoshudd='$jsmxb_id' and jianshaolx='转出'")->count();
        $arr['本月退费学生'] = M('jsmxb')->where("suoshudd='$jsmxb_id' and jianshaolx='退费'")->count();

        $arr['本月底在册学生人数'] = $arr['本月初在册学生人数'] + $arr['本月新生人数'] + $arr['其他学校转入'] + $arr['流失回来学生'] - $arr['本月流失学生人数'] - $arr['本月退费学生'] - $arr['转校学员'];
        return $arr;
    }

    //获得学生人数变动数据
    public function getxsrsbd_bak1($qishu,$sid){
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        $nianfen = substr($qishu,0,4);
        $arr = array('本月初在册学生人数'=>0,'本月新生人数'=>0,'其他学校转入'=>0,'流失回来学生'=>0,'本月流失学生人数'=>0,'本月退费学生'=>0,'转校学员'=>0,'本月底在册学生人数'=>0);

        $fmonth = $this->getMonth($qishu);  //获得上月期数
        $xyxxb_prev_id = $this->getQishuId($fmonth,$sid,1);  //获得学员信息表的所属Id
        if(!empty($xyxxb_prev_id)){
            $where = 'suoshudd ='.$xyxxb_prev_id.' and ((xuehao !="" and beizhu = "") or banji = "停读" or banji = "未进班") and laiyuanfx='.$school_name;
            $res = M('xyxxb_'.$nianfen)->where($where)->group("xuehao")->field("id")->select();
            $r = count($res);
            $arr['本月初在册学生人数'] = $r;
        }else{
            $arr['本月初在册学生人数'] = 0;
        }

        //本月的时间范围
        $nianfen = substr($qishu,0,4);
        $date = $this->getNextMonthDays($qishu."01");
        $starttime = strtotime($qishu."01");
        $endtime = strtotime($date[0]);

        $chushirenshu_def = M("school")->where("id = $sid")->getField("xueshengnum");
        if($chushirenshu_def != 0){
            $arr['本月初在册学生人数'] = $chushirenshu_def;
        }else{
            //从上一期经营数据表中查
//            $id = $this->getQishuId($qishu,$sid,12);
//            $arr['本月初在册学生人数'] = M('xsrsbdb')->where('suoshudd ='.$id)->getField('renshu');
            $arr['本月初在册学生人数'] = $arr['本月初在册学生人数']?$arr['本月初在册学生人数']:0;
        }

        $xyxxb_suoshudd = $this->getQishuId($qishu,$sid,1);
        $arr['本月新生人数'] = M("xyxxb_".$nianfen)->where("suoshudd = $xyxxb_suoshudd and xuehao != '' and UNIX_TIMESTAMP(`baomingrq`) >= $starttime and UNIX_TIMESTAMP(`baomingrq`) < $endtime ")->count();
        $arr['流失回来学生'] = 0;

        $zrjlb_suoshudd = $this->getQishuId($qishu,$sid,28);    //转入记录表
        $arr['其他学校转入'] = M("zrjlb")->where("suoshudd = $zrjlb_suoshudd and UNIX_TIMESTAMP(`zhuangxiaosj`) >= $starttime and UNIX_TIMESTAMP(`zhuangxiaosj`) < $endtime ")->count();

        $zcjlb_suoshudd = $this->getQishuId($qishu,$sid,27);    //转出记录表
        $arr['转校学员'] = M("zcjlb")->where("suoshudd = $zcjlb_suoshudd and UNIX_TIMESTAMP(`zhuangxiaosj`) >= $starttime and UNIX_TIMESTAMP(`zhuangxiaosj`) < $endtime ")->count();

        $arr['本月底在册学生人数'] = $arr['本月初在册学生人数'] + $arr['本月新生人数'] + $arr['其他学校转入'] + $arr['流失回来学生'] - $arr['本月流失学生人数'] - $arr['本月退费学生'] - $arr['转校学员'];

        return $arr;
    }

    //获得学生人数变动数据
    public function getxsrsbd_bak($qishu,$sid){
        // $suoshudd = M("qishu_history")->where("qishu = '".$qishu."' and sid = $sid and tid =2")->getField("id");
        $arr = array('本月初在册学生人数'=>0,'本月新生人数'=>0,'其他学校转入'=>0,'流失回来学生'=>0,'本月流失学生人数'=>0,'本月退费学生'=>0,'转校学员'=>0,'本月新生人数'=>0,'本月底在册学生人数'=>0);

        $fmonth = $this->getMonth($qishu);
        $id_fmonth = $this->getQishuId($fmonth,$sid,3);
        $id = $this->getQishuId($qishu,$sid,3);// 貌似没用    
        if(!empty($id_fmonth)){
            $where = 'suoshudd ='.$id_fmonth.' and ((xuehao !="" and beizhu = "") or banji = "停读" or banji = "未进班")';
            $res = M('bjxyxxb' )->where($where)->select();
            $res = $this->getXuehao($res);
            $res = array_flip(array_flip($res));// 去重复学号,解决一学生多报班的情况
            $arr['本月初在册学生人数'] = count($res);
        }else{
            $arr['本月初在册学生人数'] = 0;
        }

        $chushirenshu_def = M("school")->where("id = $sid")->getField("xueshengnum");
        if($chushirenshu_def != 0){
            $arr['本月初在册学生人数'] = $chushirenshu_def;
        }

        $total = $arr['本月初在册学生人数'];

        //判断新增明细
        $xz_ssid = M('qishu_history')->where("qishu = '".$qishu."' and sid = $sid and tid = 10")->getField('id');   //获得新增明细的所属id
        $xzinfo = array();
        if(!empty($xz_ssid)){
            $xzinfo = M("xzmxb")->where("suoshudd = ".$xz_ssid)->select();
        }
        if(!empty($xzinfo)){
            foreach ($xzinfo as $k => $v){
                if($v['xinzenglx'] == '新生'){
                    $arr['本月新生人数'] += 1;
                    $total += 1;
                }
                if($v['xinzenglx'] == '转入'){
                    $arr['其他学校转入'] += 1;
                    $total += 1;
                }
                if($v['xinzenglx'] == '流失回来'){
                    $arr['流失回来学生'] += 1;
                    $total += 1;
                }
            }
        }
        

        //判断减少明细
        // $js = new \Admin\Action\CountJsmxAction();
        // $jsinfo = $js->getJsmxbData($qishu,$sid);

        $js_ssid = M('qishu_history')->where("qishu = '".$qishu."' and sid = $sid and tid = 11")->getField('id');   //获得减少明细的所属id
        $jsinfo = array();
        if(!empty($js_ssid)){
            $jsinfo = M("jsmxb")->where("suoshudd = ".$js_ssid)->select();
        }
        if(!empty($jsinfo)){
            foreach ($jsinfo as $k => $v){
                if($v['jianshaolx'] == '流失'){
                    $arr['本月流失学生人数'] += 1;
                    $total -= 1;
                }
                if($v['jianshaolx'] == '退费' || strpos($v['jianshaolx'],'转费') != false){
                    $arr['本月退费学生'] += 1;
                    $total -= 1;
                }
                if($v['jianshaolx'] == '转出'){
                    $arr['转校学员'] += 1;
                    $total -= 1;
                }
            }
        }
        
        $arr['本月底在册学生人数'] = $total;
        return $arr;
    }

    //获得班级部门数据班级部门数据
    public function getbjbmsj($qishu,$sid){
        $nianfen = substr($qishu,0,4);
        $suoshudd = $this->getQishuId($qishu,$sid,3);
        $list = M("bjxyxxb_".$nianfen)->field('banji')->where("suoshudd = ".$suoshudd)->select();
        $bjbh = M('banjibianhao')->getField('jingdujb,banxing');
        $banji = array();
        $data = array();
        foreach($list as $val){
            if(strpos($val['banji'],"一")){
                $val["bumen"] = "一对一";
            }else{
                $val['bh'] = substr($val['banji'],0,3);
                $val['bumen'] = $bjbh[ $val['bh'] ];
                if(in_array($val['banji'],$banji)){
                    $val['chuxiancs'] = 2;
                }else{
                    $val['chuxiancs'] = 1;
                    $banji[] = $val['banji'];
                }
            }
            $data[] = $val; 
        }
        $bumen = array('幼儿部','小初部','小高部','初中部','一对一');
        $zongji = array();
        $zongji['dangyuebjs'] = 0;
        $zongji['renshuzj'] = 0;
        $temp = array();
        $array = array();
        foreach($bumen as $v){
            $tmp = array();
            $tmp['bumen'] = $v;
            foreach($data as $vo){
                if($vo['chuxiancs'] == 1 && $vo['bumen'] == $v){
                    $tmp['dangyuebjs'] += 1;
                    $zongji['dangyuebjs'] += 1;
                }
                if ($vo['bumen'] == $v){
                    $tmp['renshuzj'] += 1;
                    $zongji['renshuzj'] += 1;
                }

                if ($vo['bumen'] == $v && $v == '一对一'){
                    $temp['renshuzj'] += 1;
                }

                if($vo['chuxiancs'] == 1 && $vo['bumen'] == $v && $v == '一对一'){
                    $temp['dangyuebjs'] += 1;
                }
            }
            $tmp['banjibhl'] = $tmp['renshuzj'] / $tmp['dangyuebjs'];
            $array[] = $tmp;
        }
        $zongji['banjibhl'] = ($zongji['renshuzj']-$temp['renshuzj'] ) / ($zongji['dangyuebjs'] - $temp['dangyuebjs']);
        $zongji['bumen'] = '总计';
        array_push($array,$zongji);
        return $array;
    }

    //获得开课时段和班级数统计
    public function getkksd($qishu,$sid){
        $nianfen = substr($qishu,0,4);
        $suoshudd = $this->getQishuId($qishu,$sid,3);
        $list = M("bjxyxxb_".$nianfen)->field('banji,shangkesj')->where("suoshudd = ".$suoshudd)->select();
        //根据课程名称判断时间段
        $arr = array();
        $shijianduan = array();
        $banji = array();
        $data = array();
        foreach ($list as $k=>$v){
            //如果课程名称中含有字符"一"，返回一对一
            if(strpos($v['banji'],"一")){
                $list[$k]["shijianduan"] = "一对一";
            }else{
                $list[$k]["day"] = mb_substr($v["shangkesj"],0,2,"utf-8");
                $list[$k]["shangkesj"] = mb_substr($v["shangkesj"],2,2,"utf-8");
                if((int)$list[$k]["shangkesj"] >= 1 && (int)$list[$k]["shangkesj"] < 12){
                    $list[$k]["shijianduan"] = $list[$k]["day"]."上午";
                }elseif ((int)$list[$k]["shangkesj"] >= 13 && (int)$list[$k]["shangkesj"] < 18){
                    $list[$k]["shijianduan"] = $list[$k]["day"]."下午";
                }elseif ((int)$list[$k]["shangkesj"] >= 18 && (int)$list[$k]["shangkesj"] < 24){
                    $list[$k]["shijianduan"] = $list[$k]["day"]."晚上";
                }
            }
            if(in_array($v['banji'],$banji)){
                $list[$k]['chuxiancs'] = 2;
            }else{
                $banji[] = $v['banji'];
                $list[$k]['chuxiancs'] = 1;
            }
            if ( $list[$k]['chuxiancs'] == 1){
                if (in_array( $list[$k]["shijianduan"],$shijianduan ) ){
                    $data[$list[$k]["shijianduan"]] += 1;
                }else{
                    $data[$list[$k]["shijianduan"]] = 1;
                    $shijianduan[] =  $list[$k]["shijianduan"];
                }
            }
        }
        $tmp = 0;
        foreach($data as $val){
            $tmp += $val;
        }
        $data['总计'] = $tmp;
        return $data;
    }

    public function getzaice2($qishu='201808',$sid='1'){
        $nianfen = substr($qishu,0,4);
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
        $list = M('bjxyxxb_'.$nianfen )->where("suoshudd = ".$id)->select();
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
    }

    public function getzaice($qishu,$sid){
        $nianfen = substr($qishu,0,4);
        $where['qishu'] = $qishu;// 获取期数
        $where['sid'] = $sid;// 获取学校id
        $where['tid'] = 1;// 从学员信息表获取信息,它的tid是3
        $id = M('qishu_history')->where($where)->getField('id');// 获取对应qishu_history的id,也就是bjxyxxb里面的suoshudd的订单号
        $list = M('xyxxb_'.$nianfen )->field('nianji,zhuangtai,shoucixfrq,shifouzxzrdjb')->where("suoshudd = ".$id)->select();
        $arr = array();
        foreach ($list as $k => &$v){
            if ( ($v['shoucixfrq'] == '' && $v['zhuangtai'] == '在读') or ($v['shifouzxzrdjb'] == '是') ){
                $v['zhuangtai'] = '未进班';
            }
            $v['bianhao'] = mb_substr($v['banji'],0,3,'utf-8');
            switch ($v['nianji']) {
                case '大班':
                    if ($v['zhuangtai'] == '未进班'){
                        $arr['幼儿园']['weijinban'] +=1;
                        $arr['合计']['weijinban'] += 1;
                    }
                    if ($v['zhuangtai'] == '休学'){
                        $arr['幼儿园']['tingduyjkfx'] +=1;
                        $arr['合计']['tingduyjkfx'] += 1;
                    }
                    break;
                case '中班':
                    if ($v['zhuangtai'] == '未进班'){
                        $arr['幼儿园']['weijinban'] +=1;
                        $arr['合计']['weijinban'] += 1;
                    }
                    if ($v['zhuangtai'] == '休学'){
                        $arr['幼儿园']['tingduyjkfx'] +=1;
                        $arr['合计']['tingduyjkfx'] += 1;
                    }
                    break;
                case '小班':
                    if ($v['zhuangtai'] == '未进班'){
                        $arr['幼儿园']['weijinban'] +=1;
                        $arr['合计']['weijinban'] += 1;
                    }
                    if ($v['zhuangtai'] == '休学'){
                        $arr['幼儿园']['tingduyjkfx'] +=1;
                        $arr['合计']['tingduyjkfx'] += 1;
                    }
                    break;
                case '一年级':
                    if ($v['zhuangtai'] == '未进班'){
                        $arr['一年级']['weijinban'] +=1;
                        $arr['合计']['weijinban'] += 1;
                    }
                    if ($v['zhuangtai'] == '休学'){
                        $arr['一年级']['tingduyjkfx'] +=1;
                        $arr['合计']['tingduyjkfx'] += 1;
                    }
                    break;
                case '二年级':
                    if ($v['zhuangtai'] == '未进班'){
                        $arr['二年级']['weijinban'] +=1;
                        $arr['合计']['weijinban'] += 1;
                    }
                    if ($v['zhuangtai'] == '休学'){
                        $arr['二年级']['tingduyjkfx'] +=1;
                        $arr['合计']['tingduyjkfx'] += 1;
                    }
                    break;
                case '三年级':
                    if ($v['zhuangtai'] == '未进班'){
                        $arr['三年级']['weijinban'] +=1;
                        $arr['合计']['weijinban'] += 1;
                    }
                    if ($v['zhuangtai'] == '休学'){
                        $arr['三年级']['tingduyjkfx'] +=1;
                        $arr['合计']['tingduyjkfx'] += 1;
                    }
                    break;
                case '四年级':
                    if ($v['zhuangtai'] == '未进班'){
                        $arr['四年级']['weijinban'] +=1;
                        $arr['合计']['weijinban'] += 1;
                    }
                    if ($v['zhuangtai'] == '休学'){
                        $arr['四年级']['tingduyjkfx'] +=1;
                        $arr['合计']['tingduyjkfx'] += 1;
                    }
                    break;
                case '五年级':
                    if ($v['zhuangtai'] == '未进班'){
                        $arr['五年级']['weijinban'] +=1;
                        $arr['合计']['weijinban'] += 1;
                    }
                    if ($v['zhuangtai'] == '休学'){
                        $arr['五年级']['tingduyjkfx'] +=1;
                        $arr['合计']['tingduyjkfx'] += 1;
                    }
                    break;
                case '六年级':
                    if ($v['zhuangtai'] == '未进班'){
                        $arr['六年级']['weijinban'] +=1;
                        $arr['合计']['weijinban'] += 1;
                    }
                    if ($v['zhuangtai'] == '休学'){
                        $arr['六年级']['tingduyjkfx'] +=1;
                        $arr['合计']['tingduyjkfx'] += 1;
                    }
                    break;
                case '初一':
                    if ($v['zhuangtai'] == '未进班'){
                        $arr['初一']['weijinban'] +=1;
                        $arr['合计']['weijinban'] += 1;
                    }
                    if ($v['zhuangtai'] == '休学'){
                        $arr['初一']['tingduyjkfx'] +=1;
                        $arr['合计']['tingduyjkfx'] += 1;
                    }
                    break;
                case '初二':
                    if ($v['zhuangtai'] == '未进班'){
                        $arr['初二']['weijinban'] +=1;
                        $arr['合计']['weijinban'] += 1;
                    }
                    if ($v['zhuangtai'] == '休学'){
                        $arr['初二']['tingduyjkfx'] +=1;
                        $arr['合计']['tingduyjkfx'] += 1;
                    }
                    break;
                default:
                    if ($v['zhuangtai'] == '未进班'){
                        $arr['初二以上']['weijinban'] +=1;
                        $arr['合计']['weijinban'] += 1;
                    }
                    if ($v['zhuangtai'] == '休学'){
                        $arr['初二以上']['tingduyjkfx'] +=1;
                        $arr['合计']['tingduyjkfx'] += 1;
                    }
                    break;
            }
        }
        // dump($list);
        $where['tid'] = 3;
        // $kecheng_arr = array("K01","K02","K03","K04","K05","K06","P01","P02","P03","P1A","P1B","P2A","P2B","P3A","P3B","P4A","P4B","P5A","P5B","P6A","P6B","J1A","J1B","J2A","J2B","J3A","J3B","一对一","NS1");
        $kecheng_arr = array();
        $kecheng = M('banjibianhao')->field('jingdujb')->select();
        foreach($kecheng as $val){
            $kecheng_arr[] = $val['jingdujb'];
        }
        $bjxyxxb_id = M('qishu_history')->where($where)->getField('id');
        $bjxyxxb = M('bjxyxxb_'.$nianfen)->field('banji,nianji')->where("suoshudd='$bjxyxxb_id'")->select();
        foreach($bjxyxxb as $vv){
            $vv['banji'] = mb_substr($vv['banji'],0,3,'utf-8');
            $tmp = mb_substr($vv['banji'],0,2,'utf-8');
            if($tmp == '一对'){
                $v['banji'] = '一对一';
            }
            if(in_array($vv['banji'],$kecheng_arr) || $vv['banji'] == '一对一'){
                switch ($vv['nianji']) {
                    case '大班':
                        if($vv['banji'] == '一对一'){
                            $arr['幼儿园']['yiduiyi'] += 1;
                            $arr['幼儿园']['shijizbrs'] += 1;
                            $arr['合计']['shijizbrs'] += 1;
                            $arr['合计']['yiduiyi'] += 1;
                        }else{
                            $arr['幼儿园']['json'][ $vv['banji'] ] += 1;
                            $arr['合计']['json'][ $vv['banji'] ] += 1;
                            $arr['幼儿园']['shijizbrs'] += 1;
                            $arr['合计']['shijizbrs'] += 1;
                        }
                        break;
                    case '中班':
                        if($vv['banji'] == '一对一'){
                            $arr['幼儿园']['yiduiyi'] += 1;
                            $arr['幼儿园']['shijizbrs'] += 1;
                            $arr['合计']['shijizbrs'] += 1;
                            $arr['合计']['yiduiyi'] += 1;
                        }else{ 
                            $arr['幼儿园']['json'][ $vv['banji'] ] += 1;
                            $arr['合计']['json'][ $vv['banji'] ] += 1;
                            $arr['幼儿园']['shijizbrs'] += 1;
                            $arr['合计']['shijizbrs'] += 1;
                        }
                        break;
                    case '小班':
                        if($vv['banji'] == '一对一'){
                            $arr['幼儿园']['yiduiyi'] += 1;
                            $arr['幼儿园']['shijizbrs'] += 1;
                            $arr['合计']['shijizbrs'] += 1;
                            $arr['合计']['yiduiyi'] += 1;
                        }else{
                            $arr['幼儿园']['json'][ $vv['banji'] ] += 1;
                            $arr['合计']['json'][ $vv['banji'] ] += 1;
                            $arr['幼儿园']['shijizbrs'] += 1;
                            $arr['合计']['shijizbrs'] += 1;
                        }
                        break;
                    case '一年级':
                        if($vv['banji'] == '一对一'){
                            $arr['一年级']['yiduiyi'] += 1;
                            $arr['一年级']['shijizbrs'] += 1;
                            $arr['合计']['shijizbrs'] += 1;
                            $arr['合计']['yiduiyi'] += 1;
                        }else{
                            $arr['一年级']['json'][ $vv['banji'] ] += 1;
                            $arr['合计']['json'][ $vv['banji'] ] += 1;
                            $arr['一年级']['shijizbrs'] += 1;
                            $arr['合计']['shijizbrs'] += 1;
                        }
                        break;
                    case '二年级':
                        if($vv['banji'] == '一对一'){
                            $arr['二年级']['yiduiyi'] += 1;
                            $arr['二年级']['shijizbrs'] += 1;
                            $arr['合计']['shijizbrs'] += 1;
                            $arr['合计']['yiduiyi'] += 1;
                        }else{
                            $arr['二年级']['json'][ $vv['banji'] ] += 1;
                            $arr['合计']['json'][ $vv['banji'] ] += 1;
                            $arr['二年级']['shijizbrs'] += 1;
                            $arr['合计']['shijizbrs'] += 1;
                        }
                        break;
                    case '三年级':
                        if($vv['banji'] == '一对一'){
                            $arr['三年级']['yiduiyi'] += 1;
                            $arr['三年级']['shijizbrs'] += 1;
                            $arr['合计']['shijizbrs'] += 1;
                            $arr['合计']['yiduiyi'] += 1;
                        }else{
                            $arr['三年级']['json'][ $vv['banji'] ] += 1;
                            $arr['合计']['json'][ $vv['banji'] ] += 1;
                            $arr['三年级']['shijizbrs'] += 1;
                            $arr['合计']['shijizbrs'] += 1;
                        }
                        break;
                    case '四年级':
                        if($vv['banji'] == '一对一'){
                            $arr['四年级']['yiduiyi'] += 1;
                            $arr['四年级']['shijizbrs'] += 1;
                            $arr['合计']['shijizbrs'] += 1;
                            $arr['合计']['yiduiyi'] += 1;
                        }else{
                            $arr['四年级']['json'][ $vv['banji'] ] += 1;
                            $arr['合计']['json'][ $vv['banji'] ] += 1;
                            $arr['四年级']['shijizbrs'] += 1;
                            $arr['合计']['shijizbrs'] += 1;
                        }
                        break;
                    case '五年级':
                        if($vv['banji'] == '一对一'){
                            $arr['五年级']['yiduiyi'] += 1;
                            $arr['五年级']['shijizbrs'] += 1;
                            $arr['合计']['shijizbrs'] += 1;
                            $arr['合计']['yiduiyi'] += 1;
                        }else{
                            $arr['五年级']['json'][ $vv['banji'] ] += 1;
                            $arr['合计']['json'][ $vv['banji'] ] += 1;
                            $arr['五年级']['shijizbrs'] += 1;
                            $arr['合计']['shijizbrs'] += 1;
                        }
                        break;
                    case '六年级':
                        if($vv['banji'] == '一对一'){
                            $arr['六年级']['yiduiyi'] += 1;
                            $arr['六年级']['shijizbrs'] += 1;
                            $arr['合计']['shijizbrs'] += 1;
                            $arr['合计']['yiduiyi'] += 1;
                        }else{
                            $arr['六年级']['json'][ $vv['banji'] ] += 1;
                            $arr['合计']['json'][ $vv['banji'] ] += 1;
                            $arr['六年级']['shijizbrs'] += 1;
                            $arr['合计']['shijizbrs'] += 1;
                        }
                        break;
                    case '初一':
                        if($vv['banji'] == '一对一'){
                            $arr['初一']['yiduiyi'] += 1;
                            $arr['初一']['shijizbrs'] += 1;
                            $arr['合计']['shijizbrs'] += 1;
                            $arr['合计']['yiduiyi'] += 1;
                        }else{
                            $arr['初一']['json'][ $vv['banji'] ] += 1;
                            $arr['合计']['json'][ $vv['banji'] ] += 1;
                            $arr['初一']['shijizbrs'] += 1;
                            $arr['合计']['shijizbrs'] += 1;
                        }
                        break;
                    case '初二':
                        if($vv['banji'] == '一对一'){
                            $arr['初二']['yiduiyi'] += 1;
                            $arr['初二']['shijizbrs'] += 1;
                            $arr['合计']['shijizbrs'] += 1;
                            $arr['合计']['yiduiyi'] += 1;
                        }else{
                            $arr['初二']['json'][ $vv['banji'] ] += 1;
                            $arr['合计']['json'][ $vv['banji'] ] += 1;
                            $arr['初二']['shijizbrs'] += 1;
                            $arr['合计']['shijizbrs'] += 1;
                        }
                        break;
                    default:
                        if($vv['banji'] == '一对一'){
                            $arr['初二以上']['yiduiyi'] += 1;
                            $arr['初二以上']['shijizbrs'] += 1;
                            $arr['合计']['shijizbrs'] += 1;
                            $arr['合计']['yiduiyi'] += 1;
                        }else{
                            $arr['初二以上']['json'][ $vv['banji'] ] += 1;
                            $arr['合计']['json'][ $vv['banji'] ] += 1;
                            $arr['初二以上']['shijizbrs'] += 1;
                            $arr['合计']['shijizbrs'] += 1;
                        }
                        break;
                }
            }
        }
        $arr['幼儿园']['zongrenshu'] =  $arr['幼儿园']['weijinban'] + $arr['幼儿园']['tingduyjkfx']  + $arr['幼儿园']['shijizbrs'];
        $arr['一年级']['zongrenshu'] =  $arr['一年级']['weijinban'] + $arr['一年级']['tingduyjkfx']  + $arr['一年级']['shijizbrs'];
        $arr['二年级']['zongrenshu'] =  $arr['二年级']['weijinban'] + $arr['二年级']['tingduyjkfx']  + $arr['二年级']['shijizbrs'];
        $arr['三年级']['zongrenshu'] =  $arr['三年级']['weijinban'] + $arr['三年级']['tingduyjkfx']  + $arr['三年级']['shijizbrs'];
        $arr['四年级']['zongrenshu'] =  $arr['四年级']['weijinban'] + $arr['四年级']['tingduyjkfx']  + $arr['四年级']['shijizbrs'];
        $arr['五年级']['zongrenshu'] =  $arr['五年级']['weijinban'] + $arr['五年级']['tingduyjkfx']  + $arr['五年级']['shijizbrs'];
        $arr['六年级']['zongrenshu'] =  $arr['六年级']['weijinban'] + $arr['六年级']['tingduyjkfx']  + $arr['六年级']['shijizbrs'];
        $arr['初一']['zongrenshu'] =  $arr['初一']['weijinban'] + $arr['初一']['tingduyjkfx']  + $arr['初一']['shijizbrs'];
        $arr['初二']['zongrenshu'] =  $arr['初二']['weijinban'] + $arr['初二']['tingduyjkfx']  + $arr['初二']['shijizbrs'];
        $arr['初二以上']['zongrenshu'] =  $arr['初二以上']['weijinban'] + $arr['初二以上']['tingduyjkfx']  + $arr['初二以上']['shijizbrs'];
        $arr['合计']['zongrenshu'] =  $arr['合计']['weijinban'] + $arr['合计']['tingduyjkfx']  + $arr['合计']['shijizbrs'];
        return $arr;
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
    public function getbjbmsj_bak2($qishu,$sid){
        $nianfen = substr($qishu,0,4);
        $ssid = M("qishu_history")->where("qishu = '".$qishu."' and sid = $sid and tid =3")->getField("id");
        //获得班级信息表的数据
        $bjxx_list = M("bjxxb_".$nianfen)->where("suoshudd = $ssid")->select();
        $bumen_arr = $this->getBumenarr();
        $bumen_count = array();
        foreach ($bumen_arr as $key =>$b){
            $bumen_count[$key]['bumen'] = $b;
        }
        $bumen_count['dybjs'] = 0;   //初始化当月班级数
        $bumen_count['rszj'] = 0;   //初始化各班人数总计
        foreach ($bjxx_list as $k=>$v){
            //如果课程名称中包含"一"，级别为"一对一"，否则取班级名称的前三位
            if(strstr($v['kechengmc'],"一")){
                $bjxx_list[$k]["jibie"] = "一对一";
            }else{
                $bjxx_list[$k]["jibie"] = mb_substr($v['banjimc'],0,3,"utf-8");
            }

            if(strstr($v['kechengmc'],"一")){
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
        $bumen_count["baoguanglv_total"] = round(((float)$bumen_count["rszj_total"] - (float)$bumen_count[4]["rszj"])/((float)$bumen_count["dybjs_total"] - (float)$bumen_count[4]["dybjs"]),2);
       // dump($bumen_count);
        dump($bumen_count);
        return $bumen_count;
    }

    //返回各班型在读人数统计数据
    public function getgbxzdrstj($qishu,$sid){
        $nianfen = substr($qishu,0,4);
        $ssid = M("qishu_history")->where("qishu = '".$qishu."' and sid = $sid and tid =3")->getField("id");
        //获得班级学员信息表的数据
        $bjxyxxb = M("bjxyxxb_".$nianfen)->where("suoshudd = $ssid")->select();
        $bumen_arr = $this->getBumenarr();
        $kecheng_arr = $this->getKechengarr();
        $bumen_count = array();
        foreach ($bumen_arr as $key =>$b){
            $bumen_count[$key]['bumen'] = $b;
        }

        $banjibianhao =  M("banjibianhao")->select();
        $banjibianhao_arr = array();

        $bjxxb_suoshudd = M("qishu_history")->where("qishu = '".$qishu."' and sid = $sid and tid = 2")->getField("id");
        $bjxxb = M("bjxxb_".$nianfen)->where("suoshudd = ".$bjxxb_suoshudd)->select();

        foreach ($banjibianhao as $k=>$v){
            $banjibianhao_arr[$v["jingdujb"]] = $v['banxing'];
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
                if(strstr($v['banji'],"一")){
                    $bjxyxxb[$k]["bumen"] = "一对一";
                }else{
                    $bjxyxxb[$k]["jibie"] = mb_substr($v['banji'],0,3,"utf-8");
//                    $bjxyxxb[$k]["bumen"] = M("banjibianhao")->where("jingdujb = '".$bjxyxxb[$k]["jibie"]."'")->getField("banxing");
                    $bjxyxxb[$k]["bumen"] = $banjibianhao_arr[$bjxyxxb[$k]["jibie"]];
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
            $bjxyxxb[$k]["shijianduan"] = $this->getkksd2($bjxxb,$v['banji']);
            //获得开课时长
            $bjxyxxb[$k]["shijianchang"] = $this->getshichang($bjxxb,$v['banji']);
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
//                        if($bjxyxxb[$k]["bumen"] == '小初部' ){
//                            dump($bjxyxxb[$k]);
//                        }
                        $bumen_count[$key][$k_key] += 1;
                    }
                }
            }
//            if($v['xuehao'] == 'S03463'){
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

        return $bumen_count;
    }

    //期数，学校Id,班级名称
    public function getshichang($bjxxb,$bjmc){
//        $suoshudd = M("qishu_history")->where("qishu = '".$qishu."' and sid = $sid and tid =2")->getField("id");
//        $field = M("bjxxb")->where("banjimc = '".$bjmc."'and suoshudd = ".$suoshudd)->getField("nianji");
        foreach ($bjxxb as $k=>$v){
            if($v['banjimc'] == $bjmc){
                $field = $v['nianji'];
                break;
            }
        }
        $field = $field?$field:0;
        return $field;
    }

    //期数，学校Id,班级名称
    public function getkksd2($bjxxb,$bjmc){
//        $suoshudd = M("qishu_history")->where("qishu = '".$qishu."' and sid = $sid and tid =2")->getField("id");
//        $list = M("bjxxb")->where("suoshudd = ".$suoshudd)->select();
        $list = $bjxxb;
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
            "yiduiyi"=>"一对一",
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
