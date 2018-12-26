<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class WagesCommonAction extends CommonAction{
    //计算绩效奖金
    public function getJxjj($data,$kecheng_arr){
        //去掉大于等于5%的
        $data = json_decode($data);
        if(empty($data)){
            return 0;
        }
        $total = 0;
        //提取比例
        $ticheng_arr = array();
        foreach ($kecheng_arr as $k => $v){
            //去掉5%以下的点位
            if($v >= 5){
                continue;
            }
            if(!in_array($v,$ticheng_arr)){
                $ticheng_arr[] = $v;
            }
        }
        rsort($ticheng_arr);    //按提成额度降序排列
        $new_ticheng_arr = array();
        foreach ($ticheng_arr as $k => $v){
            $new_ticheng_arr[$k]['dianwei'] = $v;
            $new_ticheng_arr[$k]['value'] = 0;
        }
        $total = 0;
        //找出各个提成比例的业绩累计
        foreach ($data as $k => $v){
            if(!empty($v)){
                $dianwei = $kecheng_arr[$k];
                foreach ($new_ticheng_arr as $m => $n){
                    if($n['dianwei'] == $dianwei){
                        $new_ticheng_arr[$m]['value'] += $v;
                    }
                }
            }
        }
        foreach ($new_ticheng_arr as $k=>$v){
            $total += $v['dianwei']*$v['value']/100;
        }

        return $total;
    }

    //计算学习卡结算
    public function getXxkjs($data,$jrt,$edu,$kecheng_arr,$huiyuanldxyye){
        //合并相同比例的业绩，大于等于5%的
        $data = json_decode($data);
        if(empty($data)){
            return 0;
        }
        $ticheng_arr = array();
        //提取比例
        foreach ($kecheng_arr as $k => $v){
            //去掉5%以下的点位
            if($v < 5){
                continue;
            }
            if(!in_array($v,$ticheng_arr)){
                $ticheng_arr[] = $v;
            }
        }
        rsort($ticheng_arr);    //按提成额度降序排列
        $new_ticheng_arr = array();
        $new_ticheng_arr_add = array();
        foreach ($ticheng_arr as $k => $v){
            $new_ticheng_arr[$k]['dianwei'] = $v;
            $new_ticheng_arr[$k]['value'] = 0;
            $new_ticheng_arr_add[$k]['dianwei'] = $v;
            $new_ticheng_arr_add[$k]['value'] = 0;
        }
        //找出各个提成比例的业绩累计
        foreach ($data as $k => $v){
            if(!empty($v)){
                $dianwei = $kecheng_arr[$k];
                foreach ($new_ticheng_arr as $m => $n){
                    if($n['dianwei'] == $dianwei){
                        $new_ticheng_arr[$m]['value'] += $v;
                    }
                }
            }
        }
        //计算各阶段比例的和值
        foreach ($new_ticheng_arr_add as $k=>$v){
            foreach ($new_ticheng_arr as $m => $n){
                if($v['dianwei'] <= $n['dianwei']){
                    $new_ticheng_arr_add[$k]['value'] += $n['value'];
                }
            }
        }
        $total = 0;
        $count = count($new_ticheng_arr_add);
            //计算所在的级数
        $jishu = -1;
        for($i = $count-1;$i>=0;$i--){
            if($edu > $new_ticheng_arr_add[$i]['value']){
                $jishu = $i;
                break;
            }
        }
        //计算各自的业绩额度
        if($jishu == -1){
            //如果小于最底额度累计
            foreach ($new_ticheng_arr as $m=>$n){
                if($m == 0){
                    $total += $edu*$new_ticheng_arr[0]['dianwei'];
                    $total += ($n['value'] - $edu)*$n['dianwei']*0.6;
                }
                $total += $n['value']*$n['dianwei']*0.6;
            }
        }elseif($jishu == ($count-1)){
            //如果大于最高额度累计
            foreach ($new_ticheng_arr as $m=>$n){
                $total += $n['value']*$n['dianwei'];
            }
        }else{
            //根据所在的位置判断算法
            foreach ($new_ticheng_arr as $m=>$n){
                if($m <= $jishu){
                    $total += $n['value']*$n['dianwei'];
                }
                if($m == $jishu+1){
                    $total += ($edu - $new_ticheng_arr_add[$jishu]['value'])*$n['dianwei'];
                    $total += ($new_ticheng_arr_add[($jishu+1)]['value'] - $edu)*$n['dianwei']*0.6;
                }
                if($m >= $jishu+2){
                    $total += $n['value']*$n['dianwei']*0.6;
                }
            }
        }
        $total = $total/100;
        //扣减老带新业绩
        $total = $total - $huiyuanldxyye*0.02;
        //根据净人头数返回不同的比例
        if($jrt < 2){
            $total = $total*0.85;
        }

        return $total;
    }

    public function object2array($object) {
        if (is_object($object)) {
            foreach ($object as $key => $value) {
                $array[$key] = $value;
            }
        }
        else {
            $array = $object;
        }
        return $array;
    }

    //获得退费金额
    public function getTuifei($qishu,$sid,$tid = 13,$name){
        $suoshudd = M("qishu_history")->where("tid = 13 and sid = $sid and qishu = $qishu")->getField("id");
        $list = M('tfb')->field('zhaoshenggwxm,zhaoshenggwykje,jingdulsxm,jingdulsykje,fandulsxm,fandulsykje,jiaowuzrxm,jiaowuzrykje,zhaoshengfxzxm,zhaoshengfxzje,dianzhangzjxzxm,dianzhangzjxzje,quyujxzjxm,quyujxzjje,quyuzjxm,quyuzjykje')->where(array('suoshudd'=>$suoshudd))->select();
        $tuifei_total = 0;
        foreach($list as $val){
            switch ($name) {
                case $v['zhaoshenggwxm']:
                    $tuifei_total += $val['zhaoshenggwykje'];
                    break;
                case $v['jingdulsxm']:
                    $tuifei_total += $val['jingdulsykje'];
                    break;
                case $v['fandulsxm']:
                    $tuifei_total += $val['fandulsykje'];
                    break;
                case $v['jiaowuzrxm']:
                    $tuifei_total += $val['jiaowuzrykje'];
                    break;
                case $v['zhaoshengfxzxm']:
                    $tuifei_total += $val['zhaoshengfxzje'];
                    break;
                case $v['dianzhangzjxzxm']:
                    $tuifei_total += $val['dianzhangzjxzje'];
                    break;
                case $v['quyujxzjxm']:
                    $tuifei_total += $val['quyujxzjje'];
                    break;
                case $v['quyuzjxm']:
                    $tuifei_total += $val['quyuzjykje'];
                    break;
            }
        }
        
        // if(!$suoshudingdan)
        //     return 0;
        // $tuifei1 = M("tfb")->where("suoshudd = $suoshudingdan and zhaoshenggwxm = '".$name."'")->sum("zhaoshenggwykje");
        // $tuifei2 = M("tfb")->where("suoshudd = $suoshudingdan and jingdulsxm = '".$name."'")->sum("jingdulsykje");
        // $tuifei3 = M("tfb")->where("suoshudd = $suoshudingdan and fandulsxm = '".$name."'")->sum("fandulsykje");
        // $tuifei4 = M("tfb")->where("suoshudd = $suoshudingdan and jiaowuzrxm = '".$name."'")->sum("jiaowuzrykje");
        // $tuifei5 = M("tfb")->where("suoshudd = $suoshudingdan and zhaoshengfxzxm = '".$name."'")->sum("zhaoshengfxzje");
        // $tuifei6 = M("tfb")->where("suoshudd = $suoshudingdan and dianzhangzjxzxm = '".$name."'")->sum("dianzhangzjxzje");
        // $tuifei7 = M("tfb")->where("suoshudd = $suoshudingdan and quyujxzjxm = '".$name."'")->sum("quyujxzjje");
        // $tuifei8 = M("tfb")->where("suoshudd = $suoshudingdan and quyuzjxm = '".$name."'")->sum("quyuzjykje");

        // $tuifei_total = (int)$tuifei1 + (int)$tuifei2 + (int)$tuifei3 + (int)$tuifei4 + (int)$tuifei5 + (int)$tuifei6 + (int)$tuifei7 + (int)$tuifei8;

        return $tuifei_total;
    }

    public function downloadXzb(){
        dump($_GET);
    }

    //获得出勤数据
    public function getChuqin($qishu,$sid){
        $chuqin_dd = $this->getQishuId($qishu,$sid,44);
        if(!$chuqin_dd)
            return;
        $chuqin_data = M("qdb")->where("suoshudd = ".$chuqin_dd)->select();
        $chuqin_arr = array();
        foreach ($chuqin_data as $tmp){
            $chuqin_arr[$tmp['xingming']]['name'] = $tmp['xingming'];
            $chuqin_arr[$tmp['xingming']]['yingchuqts'] = $tmp['yingchuqts'];
            $chuqin_arr[$tmp['xingming']]['chuqints'] = $tmp['chuqints'];
        }
        return $chuqin_arr;
    }

    //获取老师续费率和续费率人头结算
    public function getLsxfl($qishu='201812',$sid='15'){
        $yuefen = substr($qishu,4,2);
        $nian = substr($qishu,0,4);
        if ($yuefen == '03'){
            $suoshudd = M('qishu_history')->field('id')->where("(qishu=$nian".'01'." or qishu=$nian".'02'." or qishu=$nian".'03'.") and tid=37 and sid=$sid")->select();
        }elseif($yuefen == '06'){
            $suoshudd = M('qishu_history')->field('id')->where("(qishu=$nian".'01'." or qishu=$nian".'02'." or qishu=$nian".'03'." or qishu=$nian".'04'." or qishu=$nian".'05'." or qishu=$nian".'06'.") and tid=37 and sid=$sid")->select();
        }elseif($yuefen == '09'){
            $suoshudd = M('qishu_history')->field('id')->where("(qishu=$nian".'01'." or qishu=$nian".'02'." or qishu=$nian".'03'." or qishu=$nian".'04'." or qishu=$nian".'05'." or qishu=$nian".'06'." or qishu=$nian".'07'." or qishu=$nian".'08'." or qishu=$nian".'09'.") and tid=37 and sid=$sid")->select();
        }elseif($yuefen == '12'){
            $suoshudd = M('qishu_history')->field('id')->where("(qishu=$nian".'01'." or qishu=$nian".'02'." or qishu=$nian".'03'." or qishu=$nian".'04'." or qishu=$nian".'05'." or qishu=$nian".'06'." or qishu=$nian".'07'." or qishu=$nian".'08'." or qishu=$nian".'09'." or qishu=$nian".'10'." or qishu=$nian".'11'." or qishu=$nian".'12'.") and tid=37 and sid=$sid")->select();
        }else{
            return array();
        }
        $suoshudd_arr = array();
        foreach($suoshudd as $val){
            $suoshudd_arr[] = $val['id'];
        }
        if ($suoshudd_arr){
            $where['suoshudd'] = array('in',$suoshudd_arr);
            $where['laoshimz'] = array('neq','');
            $list = M('xfl')->field('laoshimz,banxing,leixing,xufeixsrs,fenmu')->where($where)->select();
        }
        // dump($list);
        $laoshi = array();
        foreach($list as $val){
            if (!in_array($val['laoshimz'],$laoshi)){
                $laoshi[] = $val['laoshimz'];
            }
        }
        //获取老师续费率
        $data = array();
        foreach($laoshi as $kk=>$vv){
            foreach ($list as $key => $val) {
                if($vv == $val['laoshimz'] && $val['banxing'] == '小学部'){
                    $data[$kk]['xingming'] = $vv;
                    $data[$kk]['xx_yingxufrs'] += $val['fenmu'];
                    $data[$kk]['xx_shijixfrs'] += $val['xufeixsrs'];
                    if($val['leixing'] == '泛读'){
                         $data[$kk]['xx_fandusjrs'] += $val['xufeixsrs'];
                         $data[$kk]['xx_fanduyxfrs'] += $val['fenmu'];
                    }
                    if($val['leixing'] == '精读'){
                         $data[$kk]['xx_jingdusjrs'] += $val['xufeixsrs'];
                         $data[$kk]['xx_jingduyxfrs'] += $val['fenmu'];
                    } 
                }
                if($vv == $val['laoshimz'] && $val['banxing'] == '初中部'){
                    $data[$kk]['xingming'] = $vv;
                    $data[$kk]['cz_yingxufrs'] += $val['fenmu'];
                    $data[$kk]['cz_shijixfrs'] += $val['xufeixsrs'];
                    if($val['leixing'] == '泛读'){
                         $data[$kk]['cz_fandusjrs'] += $val['xufeixsrs'];
                         $data[$kk]['cz_fanduyxfrs'] += $val['fenmu'];
                    }
                    if($val['leixing'] == '精读'){
                         $data[$kk]['cz_jingdusjrs'] += $val['xufeixsrs'];
                         $data[$kk]['cz_jingduyxfrs'] += $val['fenmu'];
                    } 
                }
            }
            //小学续费率
            if ($data[$kk]['xx_yingxufrs'] == 0 && $data[$kk]['xx_shijixfrs'] == 0){
                $data[$kk]['xx_zonghexfl'] = '60%';
            }else{
                $data[$kk]['xx_zonghexfl'] = (number_format($data[$kk]['xx_shijixfrs'] / $data[$kk]['xx_yingxufrs'],4) * 100).'%';
            }
            //初中续费率
            if ($data[$kk]['cz_yingxufrs'] == 0 && $data[$kk]['cz_shijixfrs'] == 0){
                $data[$kk]['cz_zonghexfl'] = '60%';
            }else{
                $data[$kk]['cz_zonghexfl'] = (number_format($data[$kk]['cz_shijixfrs'] / $data[$kk]['cz_yingxufrs'],4) * 100).'%';
            }
            // 泛读
            $data[$kk]['xx_fd_koufars'] = $data[$kk]['xx_fandusjrs'] - $data[$kk]['xx_fanduyxfrs'] * 0.6;
            $data[$kk]['cz_fd_koufars'] = $data[$kk]['cz_fandusjrs'] - $data[$kk]['cz_fanduyxfrs'] * 0.6;
            // 精读
            $data[$kk]['xx_jd_koufars'] = $data[$kk]['xx_jingdusjrs'] - $data[$kk]['xx_jingduyxfrs'] * 0.6;
            $data[$kk]['cz_jd_koufars'] = $data[$kk]['cz_jingdusjrs'] - $data[$kk]['cz_jingduyxfrs'] * 0.6;
            //小学精读金额
            if ($data[$kk]['xx_zonghexfl'] >= '60%'){
                $data[$kk]['xx_jd_jine'] = 0;
            }elseif ($data[$kk]['xx_fd_koufars'] >= 0) {
                $data[$kk]['xx_jd_jine'] = 0;
            }else{
                $data[$kk]['xx_jd_jine'] = $data[$kk]['xx_jd_koufars'] * 175;//175先写死的
            }
            //小学泛读金额
            if ($data[$kk]['xx_zonghexfl'] >= '60%'){
                $data[$kk]['xx_fd_jine'] = 0;
            }elseif ($data[$kk]['xx_fd_koufars'] >= 0) {
                $data[$kk]['xx_fd_jine'] = 0;
            }else{
                $data[$kk]['xx_fd_jine'] = $data[$kk]['xx_fd_koufars'] * 175;//175先写死的
            }
            //初中精读金额
            if ($data[$kk]['cz_zonghexfl'] >= '60%'){
                $data[$kk]['cz_jd_jine'] = 0;
            }elseif ($data[$kk]['cz_jd_koufars'] >= 0) {
                $data[$kk]['cz_jd_jine'] = 0;
            }else{
                $data[$kk]['cz_jd_jine'] = $data[$kk]['xx_jd_koufars'] * 175;//175先写死的
            }
            //初中泛读金额
            if ($data[$kk]['cz_zonghexfl'] >= '60%'){
                $data[$kk]['cz_fd_jine'] = 0;
            }elseif ($data[$kk]['cz_fd_koufars'] >= 0) {
                $data[$kk]['cz_fd_jine'] = 0;
            }else{
                $data[$kk]['cz_fd_jine'] = $data[$kk]['xx_fd_koufars'] * 175;//175先写死的
            }
            //总扣罚小学
            if ($data[$kk]['xx_zonghexfl'] >= '60%'){
                $data[$kk]['zongkoufa'] =  $data[$kk]['xx_jd_jine'] +  $data[$kk]['xx_fd_jine'];
            }elseif(($data[$kk]['xx_jd_jine'] +  $data[$kk]['xx_fd_jine']) > 0){
                $data[$kk]['zongkoufa'] = 0;
            }else{
                $data[$kk]['zongkoufa'] =  $data[$kk]['xx_jd_jine'] +  $data[$kk]['xx_fd_jine'];
            }
            //总扣罚初中
            if ($data[$kk]['cz_zonghexfl'] >= '50%'){
                $data[$kk]['zongkoufa'] +=  $data[$kk]['cz_jd_jine'] +  $data[$kk]['cz_fd_jine'];
            }elseif(($data[$kk]['cz_jd_jine'] +  $data[$kk]['cz_fd_jine']) > 0){
                $data[$kk]['zongkoufa'] += 0;
            }else{
                $data[$kk]['zongkoufa'] +=  $data[$kk]['cz_jd_jine'] +  $data[$kk]['cz_fd_jine'];
            }
        }
        return $data;
    }

    //获取学习卡额度和营业额
    public function getYyetcjs($qishu='201812',$sid='15'){
        $yuefen = substr($qishu,4,2);
        $nian = substr($qishu,0,4);
        //一月到12月的数据
        //根据月份判断查的数据
        // if ($yuefen == '04' || $yuefen == '05'){
        //     $suoshudd_yjd = M('qishu_history')->field('id')->where("(qishu=$nian".'01'." or qishu=$nian".'02'." or qishu=$nian".'03'.") and tid=29 and sid=$sid")->select();
        // }elseif($yuefen == 6){

        // }
        //1-12月的所属订单
        $yi_suoshudd = $suoshudd_yjd = M('qishu_history')->where("qishu=$nian".'01'." and tid=29 and sid=$sid")->getField('id');
        $er_suoshudd = $suoshudd_yjd = M('qishu_history')->where("qishu=$nian".'02'." and tid=29 and sid=$sid")->getField('id');
        $san_suoshudd = $suoshudd_yjd = M('qishu_history')->where("qishu=$nian".'03'." and tid=29 and sid=$sid")->getField('id');
        $si_suoshudd = $suoshudd_yjd = M('qishu_history')->where("qishu=$nian".'04'." and tid=29 and sid=$sid")->getField('id');
        $wu_suoshudd = $suoshudd_yjd = M('qishu_history')->where("qishu=$nian".'05'." and tid=29 and sid=$sid")->getField('id');
        $liu_suoshudd = $suoshudd_yjd = M('qishu_history')->where("qishu=$nian".'06'." and tid=29 and sid=$sid")->getField('id');
        $qi_suoshudd = $suoshudd_yjd = M('qishu_history')->where("qishu=$nian".'07'." and tid=29 and sid=$sid")->getField('id');
        $ba_suoshudd = $suoshudd_yjd = M('qishu_history')->where("qishu=$nian".'08'." and tid=29 and sid=$sid")->getField('id');
        $jiu_suoshudd = $suoshudd_yjd = M('qishu_history')->where("qishu=$nian".'09'." and tid=29 and sid=$sid")->getField('id');
        $shi_suoshudd = $suoshudd_yjd = M('qishu_history')->where("qishu=$nian".'10'." and tid=29 and sid=$sid")->getField('id');
        $shiyi_suoshudd = $suoshudd_yjd = M('qishu_history')->where("qishu=$nian".'11'." and tid=29 and sid=$sid")->getField('id');
        $shier_suoshudd = $suoshudd_yjd = M('qishu_history')->where("qishu=$nian".'12'." and tid=29 and sid=$sid")->getField('id');

        //第一季度
        foreach($suoshudd_yjd as $val){
            $ssdd_arr[] = $val['id'];
        }
        $data = array();
        if ($ssdd_arr){
            $list = M('lsqryye')->where(array('suoshudd'=>array('in',$ssdd_arr)))->select();
        }
        //定义需要返回的数组
        $laoshi = array();
        foreach ($list as $val) {
            if (!in_array($val['laoshi'],$laoshi)){
                $laoshi[] = $val['laoshi'];
            }
        }
        foreach($laoshi as $key=>$vv){
            foreach($list as $val){
                if ($vv == $val['laoshi']){
                    $data[$key]['laoshi'] = $vv;
                    $data[$key]['xuexiked'] += $val['xuexikzed'];
                    if ($val['banxing'] == '小学部'){
                        $data[$key]['xx_yingyee'] += $val['yingyee'];
                    }
                }

            }
        }
        return array();
    }
}

?>