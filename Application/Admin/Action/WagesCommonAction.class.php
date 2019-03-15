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

    //行政部工资下载
    public function downloadXzb(){
        //期数
        $qishu = $_GET['qishu']?$_GET['qishu']:'201808';
        //学校id
        $sid = $_GET['sid']?$_GET['sid']:1;
        $suoshudd = $this->getQishuId($qishu,$sid,17);
        $nian = substr($qishu,0,4).'年'.substr($qishu,4,2).'月';
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        $jibie = M('zxmc')->where(array('zhongxin'=>$school_name))->getField('jibie');

        $chuqin_arr = $this->getChuqin($qishu,$sid);

        //根据级别取不同的阿米巴
        switch ($jibie){
            case "A类":
                $ambbz = M('ambbz')->getField('gangwei,alei danjia');
                break;
            case "A-类":
                $ambbz = M('ambbz')->getField('gangwei,a_lei danjia');
                break;
            case "B类":
                $ambbz = M('ambbz')->getField('gangwei,blei danjia');
                break;
            case "C类":
                $ambbz = M('ambbz')->getField('gangwei,clei danjia');
                break;
            case "D类":
                $ambbz = M('ambbz')->getField('gangwei,dlei danjia');
                break;
            default:
                $ambbz = M('ambbz')->getField('gangwei,danjia');
                break;
        }
        $heji = array();//合计
        $fujia = array();//附加表

        if ($suoshudd){
            $list = M('xzbgz')->where("suoshudd='$suoshudd'")->order('id asc')->select();
            $fujia = M('fjb')->where("suoshudd='$suoshudd'")->getField('field,value');
        }

        vendor("PHPExcel.PHPExcel");// 引入phpexcel插件
        $filename = $nianyue.$school_name.'行政部工资表';
        $template = __ROOT__.'Public/template/template_xzb.xlsx';
        $objPHPExcel = \PHPExcel_IOFactory::load($template);     //加载excel文件,设置模板
        $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);  //设置保存版本格式
        //接下来就是写数据到表格里面去
        $objActSheet = $objPHPExcel->getActiveSheet();
        $objActSheet->setCellValue('A1',$filename); 
        $objPHPExcel->getActiveSheet()->mergeCells('C3:C4');
        $objActSheet->setCellValue('C2',$fujia['quyu']); 
        $objActSheet->setCellValue('C3',$fujia['jibie']); 
        $i = 7;
        foreach($list as $val){
            $s = 0;
            // $objPHPExcel->getActiveSheet()->getComment('A13')->getText()->createTextRun('pz');
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['xuhao']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['yuefen']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['fenxiao']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['bumen']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['zhiwei']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['gangweilx']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['zaizhizt']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['xingming']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['shenfenzhm']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['ruzhisj']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['gongzuonx']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['yingchuqts']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['shijicqts']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['jibengz']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['zhengjianbl']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['yuangongxc']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['peixun']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['biaogesjkz']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['qita']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['xiaoji']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['xuexiaomz']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['zaidurs']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['shoufeije']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['zaizhiyy']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['chukuts']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['chukuts98']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['xueshengfwgl']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['yuangongfwgl']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['weishengaqgl']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['yuangongzp']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['chenggongzp']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['shoufeifc']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['zhengjianwh']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['gongzhanggl']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['ziliaowjbg']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['qita2']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['xiaoji2']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['xueshengfwglcw']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['yuangongfwglcw']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['cangkuglcw']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['shouruhdlrcw']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['zhifushcw']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['xitongwhcw']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['fenxiaocjcwdjcw']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['zichanglcw']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['qita3']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['xiaoji3']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['suzhizjkj']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['qitakf']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['fudonghj']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['yueduyffzj']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['gongjij']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['gerensb']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['gerensds']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['yuedusfzj']);$s++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($s).$i,$val['beizhu']);$s++;
            $i++;
        }
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(0).$i,'模板设计：');
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(1).$i,$fujia['mubansj']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(3).$i,'制表人：');
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(4).$i,$fujia['zhibiaoren']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(6).$i,'分校复核人：');
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(7).$i,$fujia['fenxiaofhr']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(9).$i,'总部审核人：');
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(10).$i,$fujia['zongbushr']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(12).$i,'区域复核人：');
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(13).$i,$fujia['quyufhr']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(15).$i,'总部审核：');
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(16).$i,$fujia['zongbush']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(18).$i,'区域行政人事审核：');
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(19).$i,$fujia['quyuxzrssh']);
        // 写入数值
        // $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($j).$i,$v);

        // 2.接下来当然是下载这个表格了，在浏览器输出就好了
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control:must-revalidate, post-check=0, pre-check=0");
        header("Content-Type:application/force-download");
        header("Content-Type:application/vnd.ms-execl");
        header("Content-Type:application/octet-stream");
        header("Content-Type:application/download");
        header('Content-Disposition:attachment;filename="'.$filename.'.xlsx"');
        header("Content-Transfer-Encoding:binary");
        $objWriter->save('php://output');
    }

    //市场部工资下载
    public function downloadScb(){
        //期数
        $qishu = $_GET['qishu']?$_GET['qishu']:'201810';
        //学校id
        $sid = $_GET['sid']?$_GET['sid']:15;
        $suoshudd = $this->getQishuId($qishu,$sid,19);
        $yuefen = substr($qishu,0,4).'年'.substr($qishu,4,2).'月';
        $school_info = M('school')->where(array('id'=>$sid))->find();
        $school_name = $school_info['name'];
        $heji = array();//合计
        $fujia = array();//附加表
        $sjjlb_id = $this->getQishuId($qishu,$sid,4);
        $nian = substr($qishu,0,4);
        $ticheng = array();
        $data = array();
        $datas = array();//计算学习卡的
        $cplx = array();
        $chanpinlx = M('sjcplx')->field('xiangmu,tichengds,tichengdsfxxk,shifoucyedjs')->where("shifouqy='启用' and shifoutxyj='1' ")->select();

        //按提成点数从高到低排序
        $last_names = array_column($chanpinlx,'tichengds');
        array_multisort($last_names,SORT_DESC,$chanpinlx);

        foreach($chanpinlx as $key=>$vv){
            $vv['xiangmu'] = str_replace('(','（',$vv['xiangmu']);
            $vv['xiangmu'] = str_replace(')','）',$vv['xiangmu']);
            $chanpinlx[$key]['field'] = $this->encode($vv['xiangmu']);
            // $chanpinlx[$key]['tichengds'] = is_numeric($vv['tichengds']) ? ( $vv['tichengds'] * 100 ).'%' : $vv['tichengds'];
            if (!in_array($chanpinlx[$key]['tichengds'],$ticheng) && $chanpinlx[$key]['field'] != 'laoshengxufei'){
                $cplx[$key]['ticheng'] = $chanpinlx[$key]['tichengds'];
                $ticheng[] = $chanpinlx[$key]['tichengds'];
                $cplx[$key]['tichengfxxk'] = $vv['tichengdsfxxk'] ? $vv['tichengdsfxxk'] : number_format($vv['tichengds'] * 0.8,2);
                $cplx[$key]['tichengds'] = is_numeric($vv['tichengds']) ? ( $vv['tichengds'] * 100 ).'%' : $vv['tichengds'];
                $cplx[$key]['tichengdsfxxk'] = is_numeric($cplx[$key]['tichengfxxk']) ? ( $cplx[$key]['tichengfxxk'] * 100 ).'%' : $cplx[$key]['tichengfxxk'];
                $cplx[$key]['name'] = $vv['xiangmu'];
            }
        }

        $cplx = array_values($cplx);
        if ($suoshudd){
            $list = M('scbgz')->where("suoshudd='$suoshudd'")->order('id')->select();
            $fujia = M('fjb')->where("suoshudd='$suoshudd'")->getField('field,value');
            $scyjb_id = $this->getQishuId($qishu,$sid,8);
            $lists = M('scyjb')->field('id,json')->where("suoshudd=$scyjb_id and hejiyye != ''")->order('id')->select();
            foreach($lists as $key=>$val){
                $lists[$key]['json'] = json_decode($lists[$key]['json'],'true');
                foreach($lists[$key]['json'] as $k=>$v){
                    $lists[$key][$k] = $v;
                }
                $list[$key]['laoshengxufei'] = $lists[$key]['laoshengxufei'];
                $temp += $list[$key]['laoshengxufei'];
                foreach($chanpinlx as $kk=>$vv){
                    $tmp = str_replace('.','',$vv['tichengds']);
                    $temps = $this->encode($vv['xiangmu']);
                    if ($temps != 'laoshengxufei'){
                        $data[$key]['field'.$tmp] += $lists[$key][$temps];
                    }
                    if ($vv['shifoucyedjs'] == 1){
                        $datas[$key]['field'.$tmp] += $lists[$key][$temps];
                    }
                }
                unset($lists[$key]['json']);
            }
        }
        $heji2 = array();
        foreach($data as $val){
            foreach($val as $kk=>$vv){
                $heji2[$kk] += $vv; 
            }
        }
        $tmp_arr['name'] = '老生续读';
        $tmp_arr['ticheng'] = '0.03';
        $tmp_arr['tichengfxxk'] = '0';
        $tmp_arr['tichengds'] = '3%';
        $tmp_arr['tichengdsfxxk'] = '0';
        $cplx[] = $tmp_arr;
        $heji2[] = $temp;
        vendor("PHPExcel.PHPExcel");// 引入phpexcel插件
        $filename = $nianyue.$school_name.'市场部工资表';
        $template = __ROOT__.'Public/template/template_scb.xlsx';
        $objPHPExcel = \PHPExcel_IOFactory::load($template);     //加载excel文件,设置模板
        $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);  //设置保存版本格式

        //接下来就是写数据到表格里面去
        $sch_ex_id = 16+count($cplx);
        $scb = $this->getZm($sch_ex_id);
        $objPHPExcel->getActiveSheet()->mergeCells('O2:'.$scb.'2');
        $objActSheet = $objPHPExcel->getActiveSheet();
        $objActSheet->setCellValue('A1',$filename); 
        $objActSheet->setCellValue('O2','市场部业绩数据'); 

        $bt_arr = ['合计营业额','参照保底线','招生校长个人业绩','固定合计','学习卡结算','招生校长团队秒杀业绩','招生校长团队业绩','团队稳定','校长招生课或家长会考核','微信绩效','家长会现场报名奖励','流失及退费绩效结算','考勤','其他奖罚','浮动合计','本月预发','应发工资合计','公积金','个人社保','个人所得税','实发工资合计','备注'];
        for($s=0;$s<count($bt_arr);$s++){
            $ss = $this->getZm($sch_ex_id);
            $objPHPExcel->getActiveSheet()->mergeCells($ss.'3:'.$ss.'5');
            $objActSheet->setCellValue($ss.'3',$bt_arr[$s]); 
            $sch_ex_id++;
        }
        $j = 16;
        foreach($cplx as $val){
            $i=3;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($j).$i,$val['tichengds']);$i++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($j).$i,$val['tichengdsfxxk']);$i++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($j).$i,$val['name']);
            $j++;
        }
        $i = 6;
        foreach($list as $key=>$val){
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(0).$i,$val['xuhao']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(1).$i,$val['yuefen']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(2).$i,$val['fenxiao']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(3).$i,$val['bumen']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(4).$i,$val['zhiwei']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(5).$i,$val['gangweilx']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(6).$i,$val['zaizhizt']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(7).$i,$val['xingming']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(8).$i,$val['shenfenzhm']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(9).$i,$val['gongzuonx']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(10).$i,$val['ruzhisj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(11).$i,$val['yingchuqts']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(12).$i,$val['shijicqts']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(13).$i,$val['xuexikbj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(14).$i,$val['edu']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(15).$i,$val['jingrentou']);
            $q = 16;
            if($val['fenxiao'] == '合计'){
                foreach($heji2 as $vv){
                    $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$vv);$q++;
                }
            }else{
                foreach($data[$key] as $vv){
                    $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$vv);$q++;
                }
                $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$val['laoshengxufei']);$q++;
            }
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$val['hejiyye']);$q++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$val['canzhaobdx']);$q++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$val['zhaoshengxzgryj']);$q++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$val['gudinghj']);$q++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$val['xuexikjs']);$q++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$val['zhaoshengxztdmsyj']);$q++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$val['zhaoshengxztdyj']);$q++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$val['taunduiwd']);$q++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$val['xiaozhangzsk']);$q++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$val['weixinjx']);$q++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$val['jiazhanghxcbrjl']);$q++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$val['liushijtfjxjs']);$q++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$val['kaoqin']);$q++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$val['qitajf']);$q++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$val['fudonghj']);$q++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$val['benyueyf']);$q++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$val['yingfagzhj']);$q++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$val['gongjij']);$q++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$val['gerensb']);$q++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$val['gerensds']);$q++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$val['shifagzhj']);$q++;
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($q).$i,$val['beizhu']);$q++;
            $i++;
        }
        // $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(0).$i,'模板设计：');
        // $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(1).$i,$fujia['mubansj']);
        // $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(3).$i,'制表人：');
        // $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(4).$i,$fujia['zhibiaoren']);
        // $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(6).$i,'分校复核人：');
        // $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(7).$i,$fujia['fenxiaofhr']);
        // $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(9).$i,'总部审核人：');
        // $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(10).$i,$fujia['zongbushr']);
        // $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(12).$i,'区域复核人：');
        // $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(13).$i,$fujia['quyufhr']);
        // $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(15).$i,'总部审核：');
        // $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(16).$i,$fujia['zongbush']);
        // $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(18).$i,'区域行政人事审核：');
        // $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(19).$i,$fujia['quyuxzrssh']);
        // 写入数值
        // $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($j).$i,$v);

        // 2.接下来当然是下载这个表格了，在浏览器输出就好了
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control:must-revalidate, post-check=0, pre-check=0");
        header("Content-Type:application/force-download");
        header("Content-Type:application/vnd.ms-execl");
        header("Content-Type:application/octet-stream");
        header("Content-Type:application/download");
        header('Content-Disposition:attachment;filename="'.$filename.'.xlsx"');
        header("Content-Transfer-Encoding:binary");
        $objWriter->save('php://output');
    }

    //教学部
    public function downloadJxb(){
        //期数
        $qishu = $_GET['qishu']?$_GET['qishu']:'201808';
        //学校id
        $sid = $_GET['sid']?$_GET['sid']:1;
        $suoshudd = $this->getQishuId($qishu,$sid,18);
        $nianyue = substr($qishu,0,4).'年'.substr($qishu,4,2).'月';
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        $heji = array();//合计
        $lsqrsr_id = $this->getQishuId($qishu,$sid,30);
        $lsqryye_id = $this->getQishuId($qishu,$sid,29);
        $jysjb_id = $this->getQishuId($qishu,$sid,12);
        $lsqrsr = M('lsqrsr')->field('laoshi,banxing,zongrencxs,querensr')->where("suoshudd='$lsqrsr_id'")->select();
        $lsqryye = M('lsqryye')->field('laoshi,banxing,yingyee')->where("suoshudd='$lsqryye_id'")->select();
        $chuqin_arr = $this->getChuqin($qishu,$sid);
        //获取本月最后一天
        $lastday = strtotime(substr($qishu,0,4).'-'.substr($qishu,4,2).'-01'." +1 month -1 day");
        //获取老师续费率和续费率人头结算
        $lsxfl = $this->getLsxfl($qishu,$sid);
        //一对一补课
        $ydybkzzj_id = $this->getQishuId($qishu,$sid,45);
        if($ydybkzzj_id){
            $ydybkzzj = M('ydybkzztz')->field('yuefen,laoshixm,jianglibz')->where("suoshudd=$ydybkzzj_id")->select();
        }
        $jwjltz_id = $this->getQishuId($qishu,$sid,46);
        if($jwjltz_id){
            $jwjltz = M('jwjltz')->field('yuefen,jingduls,jianglije')->where("suoshudd=$jwjltz_id")->select();
        }
        //获取基础数据
        if ($suoshudd){
            $list = M('jxbgz')->where("suoshudd='$suoshudd'")->order('id')->select();
            $fujia = M('fjb')->where("suoshudd='$suoshudd'")->getField('field,value');
        }

        vendor("PHPExcel.PHPExcel");// 引入phpexcel插件
        $filename = $nianyue.$school_name.'教学部工资表';
        $template = __ROOT__.'Public/template/template_jxb.xlsx';
        $objPHPExcel = \PHPExcel_IOFactory::load($template);     //加载excel文件,设置模板
        $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);  //设置保存版本格式
        //接下来就是写数据到表格里面去
        $objActSheet = $objPHPExcel->getActiveSheet();
        $objActSheet->setCellValue('A1',$filename); 
        $objActSheet->setCellValue('C1',$fujia['quyu']); 
        $i = 6;
        foreach($list as $val){
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(0).$i,$val['xuhao']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(1).$i,$val['yuefen']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(2).$i,$val['fenxiao']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(3).$i,$val['bumen']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(4).$i,$val['erjibm']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(5).$i,$val['zhiwei']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(6).$i,$val['gangweilx']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(7).$i,$val['zaizhizt']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(8).$i,$val['xingming']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(9).$i,$val['shenfenzhm']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(10).$i,$val['ruzhisj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(11).$i,$val['rushutqnxzd']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(12).$i,$val['gongzuonx']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(13).$i,$val['yingchuqts']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(14).$i,$val['shijicqts']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(15).$i,$val['xuelihyyz8zjnx']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(16).$i,$val['nianxianjcamb']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(17).$i,$val['shoufeikcdbxss']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(18).$i,$val['qizhongjddbxss']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(19).$i,$val['xiaoshis']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(20).$i,$val['amibtzbl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(21).$i,$val['xiaoxuezh']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(22).$i,$val['chuzhongzh']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(23).$i,$val['xiaoxue']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(24).$i,$val['chuzhong']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(25).$i,$val['wanchenggs']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(26).$i,$val['alibtzbl2']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(27).$i,$val['defen']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(28).$i,$val['alibtzbl3']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(29).$i,$val['xiaoxue2']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(30).$i,$val['chuzhong2']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(31).$i,$val['xiaoxueskrcxs']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(32).$i,$val['chuzhongskrcxs']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(33).$i,$val['rencixspjdj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(34).$i,$val['amibqrsr']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(35).$i,$val['amibfc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(36).$i,$val['yiduiybkzzjlfc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(37).$i,$val['jiaowujlfc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(38).$i,$val['xiaoxueyye']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(39).$i,$val['chuzhongyye']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(40).$i,$val['zhengjiaxsxfyyefc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(41).$i,$val['miaoshazhyyejsfc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(42).$i,$val['tuanduiqrsr']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(43).$i,$val['renzhurzzgwksrq']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(44).$i,$val['renzhurzzrgnx']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(45).$i,$val['tuanduisrtcb']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(46).$i,$val['tuanduiambfc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(47).$i,$val['zuyuanrsfc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(48).$i,$val['zuzhangawjsxjlfc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(49).$i,$val['bumenambpjfc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(50).$i,$val['baohel']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(51).$i,$val['baohelkhfc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(52).$i,$val['shangyuemzjzds']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(53).$i,$val['yuemozjzds']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(54).$i,$val['zhengjiazdgmbh']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(55).$i,$val['yuemozjzdsjlfc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(56).$i,$val['xinshengwjbb']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(57).$i,$val['tuanduixflrtkhfc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(58).$i,$val['xufeilrtkffc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(59).$i,$val['zengsongkjjdzskcxsdetc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(60).$i,$val['prtjpgkk']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(61).$i,$val['liushijtfjxjs']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(62).$i,$val['kaoqin']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(63).$i,$val['suzhijj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(64).$i,$val['koufajl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(65).$i,$val['yufa']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(66).$i,$val['fudonghj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(67).$i,$val['yueduyfzj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(68).$i,$val['gongjij']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(69).$i,$val['gerensb']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(70).$i,$val['gerensds']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(71).$i,$val['yuedusfzj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(72).$i,$val['yuedusfjbgz']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(73).$i,$val['yuedusfyj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(74).$i,$val['beizhu']);
            $i++;
        }
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(0).$i,'制表人：');
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(1).$i,$fujia['zhibiaoren']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(3).$i,'分校复核人：');
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(4).$i,$fujia['fenxiaofhr']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(6).$i,'总部审核人：');
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(7).$i,$fujia['zongbushr']);
        
        // 写入数值
        // $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($j).$i,$v);

        // 2.接下来当然是下载这个表格了，在浏览器输出就好了
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control:must-revalidate, post-check=0, pre-check=0");
        header("Content-Type:application/force-download");
        header("Content-Type:application/vnd.ms-execl");
        header("Content-Type:application/octet-stream");
        header("Content-Type:application/download");
        header('Content-Disposition:attachment;filename="'.$filename.'.xlsx"');
        header("Content-Transfer-Encoding:binary");
        $objWriter->save('php://output');
    }

    //教学部
    public function downloadZj(){
         //期数
        $qishu = $_GET['qishu']?$_GET['qishu']:'201808';
        $firstday = substr($qishu,0,4)."-".substr($qishu,4,2)."-01";
        $lastday = date('Y-m-d', strtotime("$firstday +1 month -1 day"));
        //学校id
        $sid = $_GET['sid']?$_GET['sid']:1;
        $suoshudd = $this->getQishuId($qishu,$sid,20);
        $nianyue = substr($qishu,0,4).'年'.substr($qishu,4,2).'月';
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        $heji = array();//合计
        $fujia = array();//附加表
        $fujia_id = $this->getQishuId($qishu,$sid,39);
        $zdxs_id = $this->getQishuId($qishu,$sid,43);
        if ($suoshudd){
            $list = M('zjgz')->where("suoshudd='$suoshudd'")->order('id')->select();
            $heji = $list[ count($list) - 1];
            unset($list[ count($list) - 1]);
            $fujia = M('fjb')->where("suoshudd='$fujia_id'")->getField('field,value');
        }

        vendor("PHPExcel.PHPExcel");// 引入phpexcel插件
        $filename = $nianyue.$school_name.'总监工资表';
        $template = __ROOT__.'Public/template/template_zj.xlsx';
        $objPHPExcel = \PHPExcel_IOFactory::load($template);     //加载excel文件,设置模板
        $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);  //设置保存版本格式
        //接下来就是写数据到表格里面去
        $objActSheet = $objPHPExcel->getActiveSheet();
        $objActSheet->setCellValue('A1',$filename); 
        $i = 5;
        foreach($list as $val){
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(0).$i,$val['xuhao']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(1).$i,$val['yuefen']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(2).$i,$val['fenxiao']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(3).$i,$val['bumen']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(4).$i,$val['erjibm']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(5).$i,$val['gangweijb']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(6).$i,$val['zhiwei']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(7).$i,$val['gangweilx']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(8).$i,$val['zaizhizt']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(9).$i,$val['xingming']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(10).$i,$val['shenfenzhm']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(11).$i,$val['ruzhirq']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(12).$i,$val['shouru']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(13).$i,$val['zhichu']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(14).$i,$val['xianjinje']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(15).$i,$val['shifkyq']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(16).$i,$val['jingxianjlfc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(17).$i,$val['lirunfc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(18).$i,$val['guimojlfc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(19).$i,$val['tuifeikhfc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(20).$i,$val['zhouyinsdbkhfc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(21).$i,$val['nianduyscefc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(22).$i,$val['nianduysccefc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(23).$i,$val['kaidianjlfc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(24).$i,$val['tuanduiwdfc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(25).$i,$val['suzhijj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(26).$i,$val['kaoqin']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(27).$i,$val['yufa']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(28).$i,$val['qitakk']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(29).$i,$val['yingfagzhj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(30).$i,$val['gongjij']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(31).$i,$val['gerensb']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(32).$i,$val['gerensds']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(33).$i,$val['shifagzhj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(34).$i,$val['beizhu']);
            $i++;
        }
        
        // 写入数值
        // $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($j).$i,$v);

        // 2.接下来当然是下载这个表格了，在浏览器输出就好了
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control:must-revalidate, post-check=0, pre-check=0");
        header("Content-Type:application/force-download");
        header("Content-Type:application/vnd.ms-execl");
        header("Content-Type:application/octet-stream");
        header("Content-Type:application/download");
        header('Content-Disposition:attachment;filename="'.$filename.'.xlsx"');
        header("Content-Transfer-Encoding:binary");
        $objWriter->save('php://output');
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
        // dump($data);
        return $data;
    }

    //获取学习卡额度和营业额
    public function getYyetcjszj($qishu='201901',$sid='15'){
        $yuefen = substr($qishu,4,2);
        $nian = substr($qishu,0,4);
        if($yuefen == '01'){
            $yi_suoshudd = M('qishu_history')->where("qishu=$nian".'01'." and tid=29 and sid=$sid")->getField('id');
            $yi_suoshudd = $yi_suoshudd?$yi_suoshudd:0;
            $jsyye = M('lsqryye')->field('laoshi,xuexikzed,banxing,yingyee')->where("suoshudd=$yi_suoshudd")->select();
        }else if($yuefen == '02'){
            $er_suoshudd = M('qishu_history')->where("qishu=$nian".'02'." and tid=29 and sid=$sid")->getField('id');
            $er_suoshudd = $er_suoshudd?$er_suoshudd:0;
            $jsyye = M('lsqryye')->field('laoshi,xuexikzed,banxing,yingyee')->where("suoshudd=$er_suoshudd")->select();
        }else if($yuefen == '03'){
            $yi_suoshudd = M('qishu_history')->where("qishu=$nian".'01'." and tid=29 and sid=$sid")->getField('id');
            $er_suoshudd = M('qishu_history')->where("qishu=$nian".'02'." and tid=29 and sid=$sid")->getField('id');
            $san_suoshudd = M('qishu_history')->where("qishu=$nian".'03'." and tid=29 and sid=$sid")->getField('id');
            $yi_suoshudd = $yi_suoshudd?$yi_suoshudd:0;
            $er_suoshudd = $er_suoshudd?$er_suoshudd:0;
            $san_suoshudd = $san_suoshudd?$san_suoshudd:0;
            $jsyye = M('lsqryye')->field('laoshi,xuexikzed,banxing,yingyee')->where("suoshudd=$yi_suoshudd or suoshudd=$er_suoshudd or suoshudd=$san_suoshudd")->select();
        }else if($yuefen == '04'){
            $si_suoshudd = M('qishu_history')->where("qishu=$nian".'04'." and tid=29 and sid=$sid")->getField('id');
            $si_suoshudd = $si_suoshudd?$si_suoshudd:0;
            $jsyye = M('lsqryye')->field('laoshi,xuexikzed,banxing,yingyee')->where("suoshudd=$si_suoshudd")->select();
        }else if($yuefen == '05'){
            $wu_suoshudd = M('qishu_history')->where("qishu=$nian".'05'." and tid=29 and sid=$sid")->getField('id');
            $wu_suoshudd = $wu_suoshudd?$wu_suoshudd:0;
            $jsyye = M('lsqryye')->field('laoshi,xuexikzed,banxing,yingyee')->where("suoshudd=$wu_suoshudd")->select();
        }else if($yuefen == '06'){
            $si_suoshudd = M('qishu_history')->where("qishu=$nian".'04'." and tid=29 and sid=$sid")->getField('id');
            $wu_suoshudd = M('qishu_history')->where("qishu=$nian".'05'." and tid=29 and sid=$sid")->getField('id');
            $liu_suoshudd = M('qishu_history')->where("qishu=$nian".'06'." and tid=29 and sid=$sid")->getField('id');
            $si_suoshudd = $si_suoshudd?$si_suoshudd:0;
            $wu_suoshudd = $wu_suoshudd?$wu_suoshudd:0;
            $liu_suoshudd = $liu_suoshudd?$liu_suoshudd:0;
            $jsyye = M('lsqryye')->field('laoshi,xuexikzed,banxing,yingyee')->where("suoshudd=$si_suoshudd or suoshudd=$wu_suoshudd or suoshudd=$liu_suoshudd")->select();
        }else if($yuefen == '07'){
            $qi_suoshudd = M('qishu_history')->where("qishu=$nian".'07'." and tid=29 and sid=$sid")->getField('id');
            $qi_suoshudd = $qi_suoshudd?$qi_suoshudd:0;
            $jsyye = M('lsqryye')->field('laoshi,xuexikzed,banxing,yingyee')->where("suoshudd=$qi_suoshudd")->select();
        }else if($yuefen == '08'){
            $ba_suoshudd = M('qishu_history')->where("qishu=$nian".'08'." and tid=29 and sid=$sid")->getField('id');
            $ba_suoshudd = $ba_suoshudd?$ba_suoshudd:0;
            $jsyye = M('lsqryye')->field('laoshi,xuexikzed,banxing,yingyee')->where("suoshudd=$ba_suoshudd")->select();
        }else if($yuefen == '09'){
            $qi_suoshudd = M('qishu_history')->where("qishu=$nian".'07'." and tid=29 and sid=$sid")->getField('id');
            $ba_suoshudd = M('qishu_history')->where("qishu=$nian".'08'." and tid=29 and sid=$sid")->getField('id');
            $jiu_suoshudd = M('qishu_history')->where("qishu=$nian".'09'." and tid=29 and sid=$sid")->getField('id');
            $qi_suoshudd = $qi_suoshudd?$qi_suoshudd:0;
            $ba_suoshudd = $ba_suoshudd?$ba_suoshudd:0;
            $jiu_suoshudd = $jiu_suoshudd?$jiu_suoshudd:0;
            $jsyye = M('lsqryye')->field('laoshi,xuexikzed,banxing,yingyee')->where("suoshudd=$qi_suoshudd or suoshudd=$ba_suoshudd or suoshudd=$jiu_suoshudd")->select();
        }else if($yuefen == '10'){
            $shi_suoshudd = M('qishu_history')->where("qishu=$nian".'10'." and tid=29 and sid=$sid")->getField('id');
            $shi_suoshudd = $shi_suoshudd?$shi_suoshudd:0;
            $jsyye = M('lsqryye')->field('laoshi,xuexikzed,banxing,yingyee')->where("suoshudd=$shi_suoshudd")->select();
        }else if($yuefen == '11'){
            $shiyi_suoshudd = M('qishu_history')->where("qishu=$nian".'11'." and tid=29 and sid=$sid")->getField('id');
            $shiyi_suoshudd = $shiyi_suoshudd?$shiyi_suoshudd:0;
            $jsyye = M('lsqryye')->field('laoshi,xuexikzed,banxing,yingyee')->where("suoshudd=$shiyi_suoshudd")->select();
        }else if($yuefen == '12'){
            $shi_suoshudd = M('qishu_history')->where("qishu=$nian".'10'." and tid=29 and sid=$sid")->getField('id');
            $shiyi_suoshudd = M('qishu_history')->where("qishu=$nian".'11'." and tid=29 and sid=$sid")->getField('id');
            $shier_suoshudd = M('qishu_history')->where("qishu=$nian".'12'." and tid=29 and sid=$sid")->getField('id');
            $shi_suoshudd = $shi_suoshudd?$shi_suoshudd:0;
            $shiyi_suoshudd = $shiyi_suoshudd?$shiyi_suoshudd:0;
            $shier_suoshudd = $shier_suoshudd?$shier_suoshudd:0;
            $jsyye = M('lsqryye')->field('laoshi,xuexikzed,banxing,yingyee')->where("suoshudd=$shi_suoshudd or suoshudd=$shiyi_suoshudd or suoshudd=$shier_suoshudd")->select();
        }
        $laoshi = array();
        $data = array();
        $result = array();
        $tchj = 0;
        foreach($jsyye as $val){
            if(!in_array($val['laoshi'],$laoshi)){
                $laoshi[] = $val['laoshi'];
            }
        }
        if($yuefen == '03'){
            //补逻辑
        }else if($yuefen == '06'){
            //补逻辑
        }else if($yuefen == '09'){
            //补逻辑
        }else if($yuefen == '12'){
            //补逻辑
        }else{
            foreach($laoshi as $key=>$val){
                foreach($jsyye as $vv){
                    if($val == $vv['laoshi']){
                        if($vv['banxing'] == '小学部'){
                            $data[$key]['xxb'] = $vv['yingyee'];
                        }else{
                            $data[$key]['czb'] = $vv['yingyee'];
                        }
                        $data[$key]['xingming'] = $val;
                        $data[$key]['ticheng'] = ($data[$key]['xxb'] + $data[$key]['czb'])*0.04;
                    }
                }
            }
            foreach($data as $val){
                $tchj += $val['ticheng'] * 0.01;
            }
        }
        $result['data'] = $data;
        $result['tchj'] = $tchj;
        return $result;
    }

    //获取学习卡额度和营业额
    public function getYyetcjsms($qishu='201901',$sid='15'){
        $yuefen = substr($qishu,4,2);
        $nian = substr($qishu,0,4);
        if($yuefen == '01'){
            $yi_suoshudd = M('qishu_history')->where("qishu=$nian".'01'." and tid=47 and sid=$sid")->getField('id');
            $yi_suoshudd = $yi_suoshudd?$yi_suoshudd:0;
            $jsyye = M('lsqryyems')->field('laoshi,xuexikzed,banxing,yingyee')->where("suoshudd=$yi_suoshudd")->select();
        }else if($yuefen == '02'){
            $er_suoshudd = M('qishu_history')->where("qishu=$nian".'02'." and tid=47 and sid=$sid")->getField('id');
            $er_suoshudd = $er_suoshudd?$er_suoshudd:0;
            $jsyye = M('lsqryyems')->field('laoshi,xuexikzed,banxing,yingyee')->where("suoshudd=$er_suoshudd")->select();
        }else if($yuefen == '03'){
            $yi_suoshudd = M('qishu_history')->where("qishu=$nian".'01'." and tid=47 and sid=$sid")->getField('id');
            $er_suoshudd = M('qishu_history')->where("qishu=$nian".'02'." and tid=47 and sid=$sid")->getField('id');
            $san_suoshudd = M('qishu_history')->where("qishu=$nian".'03'." and tid=47 and sid=$sid")->getField('id');
            $yi_suoshudd = $yi_suoshudd?$yi_suoshudd:0;
            $er_suoshudd = $er_suoshudd?$er_suoshudd:0;
            $san_suoshudd = $san_suoshudd?$san_suoshudd:0;
            $jsyye = M('lsqryyems')->field('laoshi,xuexikzed,banxing,yingyee')->where("suoshudd=$yi_suoshudd or suoshudd=$er_suoshudd or suoshudd=$san_suoshudd")->select();
        }else if($yuefen == '04'){
            $si_suoshudd = M('qishu_history')->where("qishu=$nian".'04'." and tid=47 and sid=$sid")->getField('id');
            $si_suoshudd = $si_suoshudd?$si_suoshudd:0;
            $jsyye = M('lsqryyems')->field('laoshi,xuexikzed,banxing,yingyee')->where("suoshudd=$si_suoshudd")->select();
        }else if($yuefen == '05'){
            $wu_suoshudd = M('qishu_history')->where("qishu=$nian".'05'." and tid=47 and sid=$sid")->getField('id');
            $wu_suoshudd = $wu_suoshudd?$wu_suoshudd:0;
            $jsyye = M('lsqryyems')->field('laoshi,xuexikzed,banxing,yingyee')->where("suoshudd=$wu_suoshudd")->select();
        }else if($yuefen == '06'){
            $si_suoshudd = M('qishu_history')->where("qishu=$nian".'04'." and tid=47 and sid=$sid")->getField('id');
            $wu_suoshudd = M('qishu_history')->where("qishu=$nian".'05'." and tid=47 and sid=$sid")->getField('id');
            $liu_suoshudd = M('qishu_history')->where("qishu=$nian".'06'." and tid=47 and sid=$sid")->getField('id');
            $si_suoshudd = $si_suoshudd?$si_suoshudd:0;
            $wu_suoshudd = $wu_suoshudd?$wu_suoshudd:0;
            $liu_suoshudd = $liu_suoshudd?$liu_suoshudd:0;
            $jsyye = M('lsqryyems')->field('laoshi,xuexikzed,banxing,yingyee')->where("suoshudd=$si_suoshudd or suoshudd=$wu_suoshudd or suoshudd=$liu_suoshudd")->select();
        }else if($yuefen == '07'){
            $qi_suoshudd = M('qishu_history')->where("qishu=$nian".'07'." and tid=47 and sid=$sid")->getField('id');
            $qi_suoshudd = $qi_suoshudd?$qi_suoshudd:0;
            $jsyye = M('lsqryyems')->field('laoshi,xuexikzed,banxing,yingyee')->where("suoshudd=$qi_suoshudd")->select();
        }else if($yuefen == '08'){
            $ba_suoshudd = M('qishu_history')->where("qishu=$nian".'08'." and tid=47 and sid=$sid")->getField('id');
            $ba_suoshudd = $ba_suoshudd?$ba_suoshudd:0;
            $jsyye = M('lsqryyems')->field('laoshi,xuexikzed,banxing,yingyee')->where("suoshudd=$ba_suoshudd")->select();
        }else if($yuefen == '09'){
            $qi_suoshudd = M('qishu_history')->where("qishu=$nian".'07'." and tid=47 and sid=$sid")->getField('id');
            $ba_suoshudd = M('qishu_history')->where("qishu=$nian".'08'." and tid=47 and sid=$sid")->getField('id');
            $jiu_suoshudd = M('qishu_history')->where("qishu=$nian".'09'." and tid=47 and sid=$sid")->getField('id');
            $qi_suoshudd = $qi_suoshudd?$qi_suoshudd:0;
            $ba_suoshudd = $ba_suoshudd?$ba_suoshudd:0;
            $jiu_suoshudd = $jiu_suoshudd?$jiu_suoshudd:0;
            $jsyye = M('lsqryyems')->field('laoshi,xuexikzed,banxing,yingyee')->where("suoshudd=$qi_suoshudd or suoshudd=$ba_suoshudd or suoshudd=$jiu_suoshudd")->select();
        }else if($yuefen == '10'){
            $shi_suoshudd = M('qishu_history')->where("qishu=$nian".'10'." and tid=47 and sid=$sid")->getField('id');
            $shi_suoshudd = $shi_suoshudd?$shi_suoshudd:0;
            $jsyye = M('lsqryyems')->field('laoshi,xuexikzed,banxing,yingyee')->where("suoshudd=$shi_suoshudd")->select();
        }else if($yuefen == '11'){
            $shiyi_suoshudd = M('qishu_history')->where("qishu=$nian".'11'." and tid=47 and sid=$sid")->getField('id');
            $shiyi_suoshudd = $shiyi_suoshudd?$shiyi_suoshudd:0;
            $jsyye = M('lsqryyems')->field('laoshi,xuexikzed,banxing,yingyee')->where("suoshudd=$shiyi_suoshudd")->select();
        }else if($yuefen == '12'){
            $shi_suoshudd = M('qishu_history')->where("qishu=$nian".'10'." and tid=47 and sid=$sid")->getField('id');
            $shiyi_suoshudd = M('qishu_history')->where("qishu=$nian".'11'." and tid=47 and sid=$sid")->getField('id');
            $shier_suoshudd = M('qishu_history')->where("qishu=$nian".'12'." and tid=47 and sid=$sid")->getField('id');
            $shi_suoshudd = $shi_suoshudd?$shi_suoshudd:0;
            $shiyi_suoshudd = $shiyi_suoshudd?$shiyi_suoshudd:0;
            $shier_suoshudd = $shier_suoshudd?$shier_suoshudd:0;
            $jsyye = M('lsqryyems')->field('laoshi,xuexikzed,banxing,yingyee')->where("suoshudd=$shi_suoshudd or suoshudd=$shiyi_suoshudd or suoshudd=$shier_suoshudd")->select();
        }
        $laoshi = array();
        $data = array();
        $result = array();
        $tchj = 0;
        foreach($jsyye as $val){
            if(!in_array($val['laoshi'],$laoshi)){
                $laoshi[] = $val['laoshi'];
            }
        }
        if($yuefen == '03'){
            //补逻辑
        }else if($yuefen == '06'){
            //补逻辑
        }else if($yuefen == '09'){
            //补逻辑
        }else if($yuefen == '12'){
            //补逻辑
        }else{
            foreach($laoshi as $key=>$val){
                foreach($jsyye as $vv){
                    if($val == $vv['laoshi']){
                        if($vv['banxing'] == '小学部'){
                            $data[$key]['xxb'] = $vv['yingyee'];
                        }else{
                            $data[$key]['czb'] = $vv['yingyee'];
                        }
                        $data[$key]['xingming'] = $val;
                        $data[$key]['ticheng'] = ($data[$key]['xxb'] + $data[$key]['czb'])*0.04;
                    }
                }
            }
            foreach($data as $val){
                $tchj += $val['ticheng'] * 0.01;
            }
        }
        $result['data'] = $data;
        $result['tchj'] = $tchj;
        return $result;
    }

    //数字换字母excel
    public function getZm($sz=0){
        $zm = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',
                'AA','AB','AC','AD','AE','AF','AG','AH','AI','AJ','AK','AL','AM','AN','AO','AP','AQ','AR','AS','AT','AU','AV','AW','AX','AY','AZ',
                'BA','BB','BC','BD','BE','BF','BG','BH','BI','BJ','BK','BL','BM','BN','BO','BP','BQ','BR','BS','BT','BU','BV','BW','BX','BY','BZ',
                'CA','CB','CC','CD','CE','CF','CG','CH','CI','CJ','CK','CL','CM','CN','CO','CP','CQ','CR','CS','CT','CU','CV','CW','CX','CY','CZ'
            ];
        return $zm[$sz];
    }

    //工资表提交状态加一
    public function wageTj(){
        $suoshudd = I('suoshudd','');
        $tname = I('tname','xzbgz');
        $st = I('status','0');
        $status = M($tname)->where("suoshudd=$suoshudd")->getField('status');
        $status = $status?$status:0;
        if($st != $status){
            $this->ajaxreturn(array('status'=>2,'msg'=>'状态已改变'));
        }
        $status += 1;
        M($tname)->where("suoshudd=$suoshudd")->save(array("status"=>$status));
        $this->ajaxreturn(array('status'=>1));
    }

    //工资表退回状态减一
    public function wageTh(){
        $suoshudd = I('suoshudd','');
        $tname = I('tname','xzbgz');
        $st = I('status','0');
        $status = M($tname)->where("suoshudd=$suoshudd")->getField('status');
        $status = $status?$status:0;
        if($status ==0 ){
            $this->ajaxreturn(array('status'=>2,'msg'=>'状态已改变'));
        }
        if($st != $status){
            $this->ajaxreturn(array('status'=>2,'msg'=>'状态已改变'));
        }
        $status -= 1;
        M($tname)->where("suoshudd=$suoshudd")->save(array("status"=>$status));
        $this->ajaxreturn(array('status'=>1));
    }

    //提交修改
    public function tjxg(){
        $suoshudd = I('suoshudd');
        $data['uid'] = session('uid');
        $data['qishu'] = I('qishu');
        $data['sid'] = I('sid');
        $data['status'] = I('status');
        $data['tname'] = I('tname','xzbgz');
        M('wage_log')->add($data);
        M($data['tname'])->where(array('suoshudd'=>$suoshudd))->save(array('status'=>99));
        $this->ajaxReturn('1');
    }

    //返回修改前
    public function fhxg(){
        $suoshudd = I('suoshudd');
        $data['uid'] = session('uid');
        $data['qishu'] = I('qishu');
        $data['sid'] = I('sid');
        $data['tname'] = I('tname','xzb');
        $data['status'] = M('wage_log')->where($data)->order('addtime desc')->getField('status');
        $data['status']=$data['status'] ? $data['status'] :0;
        M('wage_log')->add($data);
        M($data['tname'])->where(array('suoshudd'=>$suoshudd))->save(array('status'=>$data['status']));
        $this->ajaxReturn('1');
    }

    
}

?>