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
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(0).$i,$val['xuhao']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(1).$i,$val['yuefen']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(2).$i,$val['fenxiao']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(3).$i,$val['bumen']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(4).$i,$val['zhiwei']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(5).$i,$val['gangweilx']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(6).$i,$val['zaizhizt']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(7).$i,$val['xingming']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(8).$i,$val['shenfenzhm']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(9).$i,$val['ruzhisj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(10).$i,$val['gongzuonx']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(11).$i,$val['yingchuqts']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(12).$i,$val['shijicqts']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(13).$i,$val['jibengz']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(14).$i,$val['zhengjianbl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(15).$i,$val['yuangongxc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(16).$i,$val['peixun']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(17).$i,$val['biaogesjkz']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(18).$i,$val['qita']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(19).$i,$val['xiaoji']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(20).$i,$val['xuexiaomz']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(21).$i,$val['zaidurs']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(22).$i,$val['shoufeije']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(23).$i,$val['zaizhiyy']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(24).$i,$val['chukuts']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(25).$i,$val['xueshengfwgl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(26).$i,$val['yuangongfwgl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(27).$i,$val['weishengaqgl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(28).$i,$val['yuangongzp']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(29).$i,$val['chenggongzp']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(30).$i,$val['shoufeifc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(31).$i,$val['zhengjianwh']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(32).$i,$val['gongzhanggl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(33).$i,$val['ziliaowjbg']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(34).$i,$val['qita2']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(35).$i,$val['xiaoji2']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(36).$i,$val['xueshengfwglcw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(37).$i,$val['yuangongfwglcw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(38).$i,$val['cangkuglcw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(39).$i,$val['shouruhdlrcw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(40).$i,$val['zhifushcw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(41).$i,$val['xitongwhcw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(42).$i,$val['fenxiaocjcwdjcw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(43).$i,$val['zichanglcw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(44).$i,$val['qita3']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(45).$i,$val['xiaoji3']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(46).$i,$val['suzhizjkj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(47).$i,$val['qitakf']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(48).$i,$val['fudonghj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(49).$i,$val['yueduyffzj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(50).$i,$val['gongjij']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(51).$i,$val['gerensb']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(52).$i,$val['gerensds']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(53).$i,$val['yuedusfzj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(54).$i,$val['beizhu']);
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

    //行政部工资下载
    public function downloadScb(){
        //期数
        $qishu = $_GET['qishu']?$_GET['qishu']:'201810';
        //学校id
        $sid = $_GET['sid']?$_GET['sid']:15;
        $suoshudd = $this->getQishuId($qishu,$sid,19);
        $yuefen = substr($qishu,4,2).'月';
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
            $lists = M('scyjb')->field('id,json')->where(array('suoshudd'=>$scyjb_id))->order('id')->select();
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
        $filename = $nianyue.$school_name.'行政部工资表';
        $template = __ROOT__.'Public/template/template_xzb.xlsx';
        $objPHPExcel = \PHPExcel_IOFactory::load($template);     //加载excel文件,设置模板
        $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);  //设置保存版本格式
        //接下来就是写数据到表格里面去
        $objPHPExcel->getActiveSheet()->mergeCells('C3:C4');
        $objActSheet = $objPHPExcel->getActiveSheet();
        $objActSheet->setCellValue('A1',$filename); 
        $objActSheet->setCellValue('C2',$fujia['quyu']); 
        $objActSheet->setCellValue('C3',$fujia['jibie']); 
        $i = 7;
        foreach($list as $val){
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(0).$i,$val['xuhao']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(1).$i,$val['yuefen']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(2).$i,$val['fenxiao']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(3).$i,$val['bumen']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(4).$i,$val['zhiwei']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(5).$i,$val['gangweilx']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(6).$i,$val['zaizhizt']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(7).$i,$val['xingming']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(8).$i,$val['shenfenzhm']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(9).$i,$val['ruzhisj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(10).$i,$val['gongzuonx']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(11).$i,$val['yingchuqts']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(12).$i,$val['shijicqts']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(13).$i,$val['jibengz']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(14).$i,$val['zhengjianbl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(15).$i,$val['yuangongxc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(16).$i,$val['peixun']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(17).$i,$val['biaogesjkz']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(18).$i,$val['qita']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(19).$i,$val['xiaoji']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(20).$i,$val['xuexiaomz']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(21).$i,$val['zaidurs']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(22).$i,$val['shoufeije']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(23).$i,$val['zaizhiyy']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(24).$i,$val['chukuts']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(25).$i,$val['xueshengfwgl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(26).$i,$val['yuangongfwgl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(27).$i,$val['weishengaqgl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(28).$i,$val['yuangongzp']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(29).$i,$val['chenggongzp']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(30).$i,$val['shoufeifc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(31).$i,$val['zhengjianwh']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(32).$i,$val['gongzhanggl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(33).$i,$val['ziliaowjbg']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(34).$i,$val['qita2']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(35).$i,$val['xiaoji2']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(36).$i,$val['xueshengfwglcw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(37).$i,$val['yuangongfwglcw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(38).$i,$val['cangkuglcw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(39).$i,$val['shouruhdlrcw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(40).$i,$val['zhifushcw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(41).$i,$val['xitongwhcw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(42).$i,$val['fenxiaocjcwdjcw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(43).$i,$val['zichanglcw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(44).$i,$val['qita3']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(45).$i,$val['xiaoji3']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(46).$i,$val['suzhizjkj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(47).$i,$val['qitakf']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(48).$i,$val['fudonghj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(49).$i,$val['yueduyffzj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(50).$i,$val['gongjij']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(51).$i,$val['gerensb']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(52).$i,$val['gerensds']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(53).$i,$val['yuedusfzj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(54).$i,$val['beizhu']);
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

    //行政部工资下载
    public function downloadJxb(){
        //期数
        $qishu = $_GET['qishu']?$_GET['qishu']:'201808';
        //学校id
        $sid = $_GET['sid']?$_GET['sid']:1;
        $suoshudd = $this->getQishuId($qishu,$sid,18);
        $yuefen = (int)substr($qishu,4,2).'月';
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        $heji = array();//合计
        $lsqrsr_id = $this->getQishuId($qishu,$sid,30);
        $lsqryye_id = $this->getQishuId($qishu,$sid,29);
        $jysjb_id = $this->getQishuId($qishu,$sid,12);
        $lsqrsr = M('lsqrsr')->field('laoshi,banxing,zongrencxs,querensr')->where("suoshudd='$lsqrsr_id'")->select();
        $lsqryye = M('lsqryye')->field('laoshi,banxing,yingyee')->where("suoshudd='$lsqryye_id'")->select();
        $chuqin_arr = $this->getChuqin($qishu,$sid);
        $jichudata = $this->jichudata();    //基础数据
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
        $base = $this->jichudata();
        if ($suoshudd){
            $list = M('jxbgz')->where("suoshudd='$suoshudd'")->order('id')->select();
            $fujia = M('fjb')->where("suoshudd='$suoshudd'")->getField('field,value');
        }

        vendor("PHPExcel.PHPExcel");// 引入phpexcel插件
        $filename = $nianyue.$school_name.'教学部工资表';
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
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(0).$i,$val['xuhao']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(1).$i,$val['yuefen']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(2).$i,$val['fenxiao']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(3).$i,$val['bumen']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(4).$i,$val['zhiwei']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(5).$i,$val['gangweilx']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(6).$i,$val['zaizhizt']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(7).$i,$val['xingming']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(8).$i,$val['shenfenzhm']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(9).$i,$val['ruzhisj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(10).$i,$val['gongzuonx']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(11).$i,$val['yingchuqts']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(12).$i,$val['shijicqts']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(13).$i,$val['jibengz']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(14).$i,$val['zhengjianbl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(15).$i,$val['yuangongxc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(16).$i,$val['peixun']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(17).$i,$val['biaogesjkz']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(18).$i,$val['qita']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(19).$i,$val['xiaoji']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(20).$i,$val['xuexiaomz']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(21).$i,$val['zaidurs']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(22).$i,$val['shoufeije']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(23).$i,$val['zaizhiyy']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(24).$i,$val['chukuts']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(25).$i,$val['xueshengfwgl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(26).$i,$val['yuangongfwgl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(27).$i,$val['weishengaqgl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(28).$i,$val['yuangongzp']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(29).$i,$val['chenggongzp']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(30).$i,$val['shoufeifc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(31).$i,$val['zhengjianwh']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(32).$i,$val['gongzhanggl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(33).$i,$val['ziliaowjbg']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(34).$i,$val['qita2']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(35).$i,$val['xiaoji2']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(36).$i,$val['xueshengfwglcw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(37).$i,$val['yuangongfwglcw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(38).$i,$val['cangkuglcw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(39).$i,$val['shouruhdlrcw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(40).$i,$val['zhifushcw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(41).$i,$val['xitongwhcw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(42).$i,$val['fenxiaocjcwdjcw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(43).$i,$val['zichanglcw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(44).$i,$val['qita3']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(45).$i,$val['xiaoji3']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(46).$i,$val['suzhizjkj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(47).$i,$val['qitakf']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(48).$i,$val['fudonghj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(49).$i,$val['yueduyffzj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(50).$i,$val['gongjij']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(51).$i,$val['gerensb']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(52).$i,$val['gerensds']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(53).$i,$val['yuedusfzj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(54).$i,$val['beizhu']);
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