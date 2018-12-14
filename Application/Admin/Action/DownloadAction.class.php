<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class DownloadAction extends CommonAction {

    //市场业绩表汇总
	public function download(){
        vendor("PHPExcel.PHPExcel");// 引入phpexcel插件
        $tid = $_POST['tid'];
        $filename = I('filename');
        $data = $_POST['jsons'];
        $list = json_decode($data);
        $i = 1;// 行从5开始
        switch ($tid) {
            case '8':
                $template = __ROOT__.'Public/template/template_scyj_hz.xlsx';
                break;
            case '9':
                $template = __ROOT__.'Public/template/template_sczyl_hz.xlsx';
                break;
            case '10':
                $template = __ROOT__.'Public/template/template_xzmx_hz.xlsx';
                break;
            case '11':
                $template = __ROOT__.'Public/template/template_jsmx_hz.xlsx';
                break;
            case '13':
                $template = __ROOT__.'Public/template/template_tf.xlsx';
                break;
            case '29':
                $template = __ROOT__.'Public/template/template_lsyye_hz.xlsx';
                break;
            case '30':
                $template = __ROOT__.'Public/template/template_lsqrsr_hz.xlsx';
                break;
            case '31':
                $template = __ROOT__.'Public/template/template_zxhytz.xlsx';
                break;
            case '32':
                $template = __ROOT__.'Public/template/template_zxldxtz.xlsx';
                break;
            case '33':
                $template = __ROOT__.'Public/template/template_lsbzsr_hz.xlsx';
                break;
        }
        
        
        $objPHPExcel = \PHPExcel_IOFactory::load($template);     //加载excel文件,设置模板
        $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);  //设置保存版本格式
        //接下来就是写数据到表格里面去
        $objActSheet = $objPHPExcel->getActiveSheet();
        switch ($tid) {
            case '9':
                $objActSheet->setCellValue('A1',$filename); 
                $i = 5;
                break;
            case '10':
                $i = 2;
                break;
            case '29':
                $i = 3;
                break;
            case '30':
                $i = 2;
                break;
            case '33':
                $i = 2;
                break;
        }
        foreach ($list as $row) {
            $j = 0;// 行从0开始,即从A开始
            foreach($row as $v){
                // 写入数值
                $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($j).$i,$v);
                $j++;
            }
            $i++;
        }

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

    //收入一览表
    public function download_srylb(){
        $qishu = I('qishu');
        $sid = session('sid');
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        $data = new \Admin\Action\CountSrqkylbAction();
        $info = $data->getSrqkylbData($qishu,$sid);

        vendor("PHPExcel.PHPExcel");// 引入phpexcel插件
        
        $template = __ROOT__.'Public/template/template_srylb.xlsx';
        $objPHPExcel = \PHPExcel_IOFactory::load($template);     //加载excel文件,设置模板
        $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);  //设置保存版本格式
        //接下来就是写数据到表格里面去
        $objActSheet = $objPHPExcel->getActiveSheet();
        

        $qishu = I('qishu');
        $sid = session('sid');
        $where['qishu'] = $qishu;
        $where['tid'] = 39;
        $where['sid'] = array('in',$sid);
        $list = M('qishu_history')->field('id')->where($where)->select();
        $suoshudd_arr = array();
        foreach($list as $val){
            $suoshudd_arr[] = $val['id'];
        }
        if ($suoshudd_arr){
            $data = M('srylb')->where(array('suoshudd'=>array('in',$suoshudd_arr)))->select();
        }
        $j = 3;
        foreach($data as $key=>$val){
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(0).$j,$key+1);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(1).$j,$val['xuexiao']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(2).$j,$val['zaibianrs']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(3).$j,$val['jinban']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(4).$j,$val['weijinban']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(5).$j,$val['tingkers']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(6).$j,$val['shangkecs']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(7).$j,$val['yingzongxfrc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(8).$j,$val['shijizxfrc']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(9).$j,$val['pingjunkcdj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(10).$j,$val['zongrencxss']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(11).$j,$val['pingjunxsdj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(12).$j,$val['querenxfsr']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(13).$j,$val['jiaocaifei']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(14).$j,$val['shijicqzrcxs']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(15).$j,$val['biaozhunzsr']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(16).$j,$val['zongshouru']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(17).$j,$val['xueshengcql']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(18).$j,$val['shouruhb']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(19).$j,$val['kecidjhb']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(20).$j,$val['xiaoshidjhb']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(21).$j,$val['benyuezddcksr']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(22).$j,$val['shijiskcs']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(23).$j,$val['youxiaofkcddcksr']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(24).$j,$val['shijiskcs2']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(25).$j,$val['qichu']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(26).$j,$val['xinsheng']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(27).$j,$val['liushihl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(28).$j,$val['zhuangru']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(29).$j,$val['liushi']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(30).$j,$val['tuifei']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(31).$j,$val['zhuangchu']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(32).$j,$val['qimo']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(33).$j,$val['qichuxy']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(34).$j,$val['qimoxy']);
            $j++;
        }

        $school = M('school')->field('name')->where(array('id'=>array('in',$sid)))->select();
        foreach($school as $val){
            $sname[] = $val['name'];
        }
        $sname = implode(',',$sname);
        $filename = substr($qishu,0,4).'年'.substr($qishu,4,2).'月'.$sname.'收入情况一览表';
        $objActSheet->setCellValue('A1',$filename); 
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

    //续费率下载
    public function download_xfl($qishu,$sid){
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        $data = new \Admin\Action\CountSrqkylbAction();
        $info = $data->getSrqkylbData($qishu,$sid);

        vendor("PHPExcel.PHPExcel");// 引入phpexcel插件
        $filename = substr($qishu,0,4).'年'.substr($qishu,4,2).'月'.$school_name.'续费率明细汇总表';
        $template = __ROOT__.'Public/template/template_xfl.xlsx';
        $objPHPExcel = \PHPExcel_IOFactory::load($template);     //加载excel文件,设置模板
        $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);  //设置保存版本格式
        //接下来就是写数据到表格里面去
        $objActSheet = $objPHPExcel->getActiveSheet();
        $objActSheet->setCellValue('A1',$filename); 

        $xfl_id =$this->getQishuId($qishu,$sid,37);
        $list['data1'] = M('xfl')->field('id,type,xiaoji,daorusj,suoshudd',true)->where("suoshudd='$xfl_id' and type=1")->order('xuhao')->select();
        $list['data2'] = M('xfl')->field('id,type,xiaoji,daorusj,suoshudd',true)->where("suoshudd='$xfl_id' and type=2")->order('xuhao')->select();
        $list['data3'] = M('xfl')->field('id,type,xiaoji,daorusj,suoshudd',true)->where("suoshudd='$xfl_id' and type=3")->order('xuhao,xiaoji desc,id')->select();
        $i = 3;//从3开始
        foreach($list['data1'] as $val){
            $p = 0;
            foreach($val as $v){
                $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($p).$i,$v);$p++;
            }
            $i++;
        }
        $i = 9;
        foreach($list['data2'] as $val){
            $p = 0;
            foreach($val as $v){
                $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($p).$i,$v);$p++;
            }
            $i++;
        }
        $i = 15;
        foreach($list['data3'] as $key=>$val){
            $p = 0;
            if($key % 7 == 0){
                $tmp = $i + 6;
                $objPHPExcel->getActiveSheet()->mergeCells("A".$i.":A"."$tmp");
                // $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($p).$i.':'.$tmp,$xuhao);
            }
            foreach($val as $v){
                $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($p).$i,$v);$p++;
            }
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

    //转换率下载
    public function download_zhl($qishu,$sid){
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        $data = new \Admin\Action\CountSrqkylbAction();
        $info = $data->getSrqkylbData($qishu,$sid);

        vendor("PHPExcel.PHPExcel");// 引入phpexcel插件
        $filename = substr($qishu,0,4).'年'.substr($qishu,4,2).'月'.$school_name.'转换率秒杀明细';
        $template = __ROOT__.'Public/template/template_xfl.xlsx';
        $objPHPExcel = \PHPExcel_IOFactory::load($template);     //加载excel文件,设置模板
        $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);  //设置保存版本格式
        //接下来就是写数据到表格里面去
        $objActSheet = $objPHPExcel->getActiveSheet();
        $objActSheet->setCellValue('A1',$filename); 

        $zhl_id =$this->getQishuId($qishu,$sid,38);
        $list['data1'] = M('zhl')->field('id,type,xiaoji,daorusj,suoshudd',true)->where("suoshudd='$zhl_id' and type=1")->order('xuhao')->select();
        $list['data2'] = M('zhl')->field('id,type,xiaoji,daorusj,suoshudd',true)->where("suoshudd='$zhl_id' and type=2")->order('xuhao')->select();
        $list['data3'] = M('zhl')->field('id,type,xiaoji,daorusj,suoshudd',true)->where("suoshudd='$zhl_id' and type=3")->order('xuhao,xiaoji desc,id')->select();
        $i = 3;//从3开始
        foreach($list['data1'] as $val){
            $p = 0;
            foreach($val as $v){
                $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($p).$i,$v);$p++;
            }
            $i++;
        }
        $i = 9;
        foreach($list['data2'] as $val){
            $p = 0;
            foreach($val as $v){
                $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($p).$i,$v);$p++;
            }
            $i++;
        }
        $i = 15;
        foreach($list['data3'] as $key=>$val){
            $p = 0;
            if($key % 7 == 0){
                $tmp = $i + 6;
                $objPHPExcel->getActiveSheet()->mergeCells("A".$i.":A"."$tmp");
                // $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($p).$i.':'.$tmp,$xuhao);
            }
            foreach($val as $v){
                $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($p).$i,$v);$p++;
            }
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

    //秒杀清单
    public function download_ms(){
        $qishu = I('qishu');
        $sid = I('sid');
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        $nian = substr($qishu,0,4);
        $xyfyyjb_id = $this->getQishuId($qishu,$sid,7);//学员费用预警表
        $list = M('xyfyyjb_'.$nian)->field('xuehao,xingming,kechengmc,shengyugmsl,shengyuzssl,feiyong')->where("suoshudd='$xyfyyjb_id'")->select();
        $miaosha = M('fxms')->field('shangkekc,danjia')->where("sid='$sid'")->find();
        $data = array();
        foreach($list as $key=>$val){
            $list[$key]['zongshuliang'] = $val['shengyugmsl']+$val['shengyuzssl'];
            $list[$key]['zongfeiyong'] = $val['feiyong'];
            $list[$key]['danjia'] = round($val['feiyong'] / $list[$key]['zongshuliang'],2);
            if ($list[$key]['zongshuliang'] <= $miaosha['shangkekc'] && $list[$key]['danjia'] <= $miaosha['danjia'] && $list[$key]['danjia'] > 0){
                $list[$key]['shifoums'] = '秒杀';
                $data[] = $list[$key];
            }else{
                $list[$key]['shifoums'] = '';
            }
        }

        vendor("PHPExcel.PHPExcel");// 引入phpexcel插件
        $filename = substr($qishu,0,4).'年'.substr($qishu,4,2).'月'.$school_name.'秒杀清单';
        $template = __ROOT__.'Public/template/template_ms.xlsx';
        $objPHPExcel = \PHPExcel_IOFactory::load($template);     //加载excel文件,设置模板
        $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);  //设置保存版本格式
        //接下来就是写数据到表格里面去
        $objActSheet = $objPHPExcel->getActiveSheet();
        // $objActSheet->setCellValue('A1',$filename); 
        $i = 2;
        foreach($data as $val){
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(0).$i,$val['xuehao']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(1).$i,$val['xingming']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(2).$i,$val['zongshuliang']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(3).$i,$val['danjia']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(4).$i,$val['zongfeiyong']);
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

    //学员信息
    public function download_xyxx(){
        $qishu = I('qishu');
        $sid = I('sid');
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        $nian = substr($qishu,0,4);
        $suoshudd = $this->getQishuId($qishu,$sid,1);//学员费用预警表
        $list = M('xyxxb_'.$nian)->where("suoshudd='$suoshudd'")->select();
        foreach($list as $key=>$val){
            switch ($val['nianji']) {
                case '小班':
                    $list[$key]['nianjicfl'] = '幼儿园';
                    break;
                case '中班':
                    $list[$key]['nianjicfl'] = '幼儿园';
                    break;
                case '大班':
                    $list[$key]['nianjicfl'] = '幼儿园';
                    break;
                case '一年级':
                    $list[$key]['nianjicfl'] = '一年级';
                    break;
                case '二年级':
                    $list[$key]['nianjicfl'] = '二年级';
                    break;
                case '三年级':
                    $list[$key]['nianjicfl'] = '三年级';
                    break;
                case '四年级':
                    $list[$key]['nianjicfl'] = '四年级';
                    break;
                case '五年级':
                    $list[$key]['nianjicfl'] = '五年级';
                    break;
                case '六年级':
                    $list[$key]['nianjicfl'] = '六年级';
                    break;
                case '初一':
                    $list[$key]['nianjicfl'] = '初一';
                    break;
                case '初二':
                    $list[$key]['nianjicfl'] = '初二';
                    break;
                default:
                     $list[$key]['nianjicfl'] = '初二以上';
                    break;
            }
        }

        vendor("PHPExcel.PHPExcel");// 引入phpexcel插件
        $filename = substr($qishu,0,4).'年'.substr($qishu,4,2).'月'.$school_name.'学员信息';
        $template = __ROOT__.'Public/template/template_xyxx.xlsx';
        $objPHPExcel = \PHPExcel_IOFactory::load($template);     //加载excel文件,设置模板
        $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);  //设置保存版本格式
        //接下来就是写数据到表格里面去
        $objActSheet = $objPHPExcel->getActiveSheet();
        // $objActSheet->setCellValue('A1',$filename); 
        $i = 2;
        foreach($list as $val){
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(0).$i,$val['xuehao']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(1).$i,$val['xingming']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(2).$i,$val['xingbie']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(3).$i,$val['jinban']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(4).$i,$val['shishengxzh']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(5).$i,$val['shishengxin']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(6).$i,$val['chushengrq']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(7).$i,$val['nianling']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(8).$i,$val['shoujihm']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(9).$i,$val['yingwenming']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(10).$i,$val['qingjiacs']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(11).$i,$val['zhaoshengly']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(12).$i,$val['laiyuanfx']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(13).$i,$val['zuijinsksj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(14).$i,$val['baomingrq']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(15).$i,$val['xiuxuerq']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(16).$i,$val['yujifxrq']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(17).$i,$val['shijifxrq']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(18).$i,$val['tuixuerq']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(19).$i,$val['huifurxrq']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(20).$i,$val['xiaoqu']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(21).$i,$val['xueguanshi']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(22).$i,$val['fuqinxm']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(23).$i,$val['fuqindh']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(24).$i,$val['muqinxm']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(25).$i,$val['muqindh']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(26).$i,$val['jiatingzz']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(27).$i,$val['zaidubj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(28).$i,$val['qq']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(29).$i,$val['jiuduxx']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(30).$i,$val['nianji']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(31).$i,$val['banji']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(32).$i,$val['beizhu']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(33).$i,$val['jifen']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(34).$i,$val['leixing']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(35).$i,$val['zhuangtai']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(36).$i,$val['xiuxueyy']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(37).$i,$val['tuixueyy']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(38).$i,$val['dianziqbye']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(39).$i,$val['qianjiaoje']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(40).$i,$val['shengyuxf']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(41).$i,$val['zhanghuye']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(42).$i,$val['shoucijfrq']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(43).$i,$val['shoucixfrq']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(44).$i,$val['shengao']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(45).$i,$val['zuijinsksj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(46).$i,$val['baomingrq']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(47).$i,$val['tuixuerq']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(48).$i,$val['shoucixfrq']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(49).$i,$val['nianjicfl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(50).$i,$val['xiuxuefxrq']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(51).$i,$val['tuixuehfrq']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(52).$i,$val['zhuangtai']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(53).$i,$val['shifouycmd']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(54).$i,$val['shifouzxzrdjb']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(55).$i,$val['shifoutfxs']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(56).$i,$val['tuifeiycmdbz']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(57).$i,$val['shengyuxf']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(58).$i,$val['benyuesfysk']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(59).$i,$val['baomingrqsfbyys']);
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

    //上传表下载
    public function down_file(){
        $table_name = I('table');
        $info = M('file')->where(array('table_name'=>$table_name))->order('add_time desc')->find();
        $filename = $info['name'];
        $file_url = $info['path'];
        if(!file_exists($file_url) || !$info){ //检查文件是否存在
            $this->error('表格文件不存在，请重新上传');exit;
        }
        $arr = explode('.',$file_url);
        $file_type = $arr[count($arr)-1];
        $file=fopen($file_url,'r'); //打开文件
        //输入文件标签
        header("Content-type: application/octet-stream");
        header("Accept-Ranges: bytes");
        header("Accept-Length: ".filesize($file_url));
        header("Content-Disposition: attachment; filename=".$filename.'.'.$file_type);
        //输出文件内容
        echo fread($file,filesize($file_url));
        fclose($file);
    }

    //市场占有率汇总下载
    public function download_sczyl(){
        $sid = session('sid');
        $qishu = I('qishu');

        //获取与当前登录账号所属的学校的所有的学校名字
        $school = M('school as ss')
                    ->join('stjy_qishu_history as qh on qh.sid=ss.id')
                    ->where(array('ss.id'=>array('in',$sid)))
                    ->getField('qh.id,ss.name');

        //获取所有学校的中文名字
        foreach($school as $vv){
            if (!in_array($vv,$school_name)){
                $school_name[] = $vv;
            }
        }
        $school_name = implode(',',$school_name);

        //获取与期数校区相关的所有期数id
        $map['sid'] = array('in',$sid);
        $map['qishu'] = array('in',$qishu);
        $map['tid'] = 9;
        $qishu_arr = M('qishu_history')->where($map)->getField('id,qishu');
        //获取订单id数组
        foreach($qishu_arr as $k=>$v){
            $qishu_id[] = $k;
        }

        $heji = array();
        if ($qishu_id){
            //查询新增明细表
            $where['suoshudd'] = array('in',$qishu_id);
            $list = M('sczylb')->where($where)->order('id')->select();
            foreach($list as $key=>&$val){
                $val['xuhao'] = $key+1;
                $val['nianfen'] = substr($qishu_arr[ $val['suoshudd'] ],0,4).'年';
                $val['yuefen'] = substr($qishu_arr[ $val['suoshudd'] ],4,2).'月';
                $val['xiaoqu'] = $school[ $val['suoshudd'] ];
                foreach($val as $k=>$v){
                    $heji[ $k ] += $v;
                }
            }
        }

        $heji['xuhao'] = '';
        $heji['nianfen'] = '';
        $heji['yuefen'] = '';
        $heji['xiaoqu'] = '';
        $heji['gonglixx'] = '合计';
        array_push($list,$heji);

        vendor("PHPExcel.PHPExcel");// 引入phpexcel插件
        $filename = substr($qishu,0,4).'年'.substr($qishu,4,2).'月'.'市场占有率';
        $template = __ROOT__.'Public/template/template_sczyl_hz.xlsx';
        $objPHPExcel = \PHPExcel_IOFactory::load($template);     //加载excel文件,设置模板
        $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);  //设置保存版本格式
        //接下来就是写数据到表格里面去
        $objActSheet = $objPHPExcel->getActiveSheet();
        // $objActSheet->setCellValue('A1',$filename); 
        $i = 2;
        foreach($data as $val){
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(0).$i,$val['xuehao']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(1).$i,$val['nianfen'].$val['yuefen']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(2).$i,$val['xiaoqu']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(3).$i,$val['gonglixx']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(4).$i,$val['youeryuan']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(5).$i,$val['yinianji']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(6).$i,$val['ernianji']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(7).$i,$val['sannianji']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(8).$i,$val['sinianji']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(9).$i,$val['wunianji']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(10).$i,$val['liunianji']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(11).$i,$val['chuyi']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(12).$i,$val['chuer']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(13).$i,$val['chuerys']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(14).$i,$val['heji']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(15).$i,$val['xuexiaogms']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(16).$i,$val['zhaoyoulv']);
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

    //教材费下载
    public function download_jcf(){
        $qishu = I('qishu','201810');
        $sid = session('sid');
        $where['qishu'] = $qishu;
        $where['tid'] = 34;
        $where['sid'] = array('in',$sid);
        $list = M('qishu_history')->field('id')->where($where)->select();
        $suoshudd_arr = array();
        $first_day = substr($qishu,0,4).'-'.substr($qishu,4,2).'-01';
        $last_day = date('Y-m-d',strtotime($first_day.' +1 month -1 day'));
        foreach($list as $val){
            $suoshudd_arr[] = $val['id'];
        }
        $suoshudd_arr = implode(',',$suoshudd_arr);
        $jckmx = M('jckmx')->field('cangku,mingcheng,jine')->where("suoshudd in ($suoshudd_arr) and (riqi >= '$first_day' and riqi <= '$last_day')")->select();
        $school = M('school')->field('name')->where(array('id'=>array('in',$sid)))->select();
        $wupinqd = M('wupinqd')->getField('mingcheng,leixing');
        $leixing = array();
        $data = array();
        $heji = array();
        $heji['月份'] = '合计';
        $heji['分校'] = '';
        foreach($school as $key=>$val){
            $data[$key]['月份'] = substr($qishu,0,4).'年'.substr($qishu,4,2).'月';
            $data[$key]['分校'] = $val['name'];
            foreach($jckmx as $vv){
                $vv['leixing'] = $wupinqd[ $vv['mingcheng'] ];
                if ($vv['cangku'] == $val['name'] && in_array($vv['leixing'],$leixing)){
                    $data[$key][ $vv['leixing'] ] += $vv['jine'];
                    $heji[ $vv['leixing'] ] += $vv['jine'];
                }else{
                    $leixing[] = $vv['leixing'];
                    $data[$key][ $vv['leixing'] ] = 0;
                    $heji[ $vv['leixing'] ]  = 0;
                }
            }
        }
        array_push($data,$heji);
        vendor("PHPExcel.PHPExcel");// 引入phpexcel插件
        $filename = substr($qishu,0,4).'年'.substr($qishu,4,2).'月'.'教材费';
        $template = __ROOT__.'Public/template/template_jcf.xlsx';
        $objPHPExcel = \PHPExcel_IOFactory::load($template);     //加载excel文件,设置模板
        $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);  //设置保存版本格式
        //接下来就是写数据到表格里面去
        $objActSheet = $objPHPExcel->getActiveSheet();
        // $objActSheet->setCellValue('A1',$filename); 
        $i = 0;
        foreach($data as $val){
            foreach($val as $kk=>$vv){
                $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($i).'1',$kk);
                $i++;
            }
            break;
        }

        $j = 2;
        foreach($data as $val){
            $i = 0;
            foreach($val as $kk=>$vv){
                $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($i).$j,$vv);
                $i++;
            }
            $j++;
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


    //经营数据表汇总下载
    public function download_jysjbhz(){
        $qishu = I('qishu','201810');
        $sid = session('sid');
        $where['qishu'] = $qishu;
        $where['tid'] = 40;
        $where['sid'] = array('in',$sid);
        $list = M('qishu_history')->field('id')->where($where)->select();
        $suoshudd_arr = array();
        foreach($list as $val){
            $suoshudd_arr[] = $val['id'];
        }
        if ($suoshudd_arr){
            $data = M('jysjbhz')->where(array('suoshudd'=>array('in',$suoshudd_arr)))->select();
        }
        //获取本月续费率排名和本年续费率排名
        $benyue_suoshudd = array();
        $arr = M('qishu_history')->field('id')->where(array('qishu'=>$qishu,'tid'=>40))->select();
        foreach($arr as $val){
            $benyue_suoshudd[] = $val['id'];
        }
        if ($benyue_suoshudd){
            $benyue_hz = M('jysjbhz')->field('xufeilv,nianduxfl')->where(array('suoshudd'=>array('in',$benyue_suoshudd)))->select();
            foreach($benyue_hz as $val){
                $benyue_xfl[] = $val['xufeilv'];
                $niandu_xfl[] = $val['nianduxfl'];
            }
        }
        rsort($benyue_xfl);
        $base = array();
        $base['riqi'] = substr($qishu,0,4).'年'.substr($qishu,4,2).'月';
        $school = M('school')->field('name')->where(array('id'=>array('in',$sid)))->select();
        foreach($school as $val){
            $sname[] = $val['name'];
        }
        //本月续费率排名
        foreach($data as &$v){
            $v['yueduxflpm'] = array_search($v['xufeilv'], $benyue_xfl) + 1;
            $v['nianduxflpm'] = array_search($v['nianduxfl'], $niandu_xfl) + 1;
        }

        vendor("PHPExcel.PHPExcel");// 引入phpexcel插件
        $filename = substr($qishu,0,4).'年'.substr($qishu,4,2).'月'.'经营数据表汇总';
        $template = __ROOT__.'Public/template/template_jysjbhz.xlsx';
        $objPHPExcel = \PHPExcel_IOFactory::load($template);     //加载excel文件,设置模板
        $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);  //设置保存版本格式
        //接下来就是写数据到表格里面去
        $objActSheet = $objPHPExcel->getActiveSheet();
        // $objActSheet->setCellValue('A1',$filename); 
        $i = 3;
        foreach($data as $key=>$val){
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(0).$i,$key+1);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(1).$i,$val['fenxiao']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(2).$i,$val['yuechu']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(3).$i,$val['yuedi']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(4).$i,$val['weijinban']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(5).$i,$val['tingdu']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(6).$i,$val['tuifei']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(7).$i,$val['zaidurs']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(8).$i,$val['keyongjssl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(9).$i,$val['shijijss']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(10).$i,$val['zongrencxss']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(11).$i,$val['banjibhl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(12).$i,$val['jiaoshishu']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(13).$i,$val['kongquexw']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(14).$i,$val['jiaoshilyl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(15).$i,$val['pingjunqrsrdj']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(16).$i,$val['xufeiqrs']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(17).$i,$val['xufeihrs']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(18).$i,$val['xufeilv']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(19).$i,$val['yueduxflpm']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(20).$i,$val['nianduxfqrs']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(21).$i,$val['nianduxfhrs']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(22).$i,$val['nianduxfl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(23).$i,$val['nianduxflpm']);
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

    //经营数据表汇总下载
    public function download_xflhz(){
        $nian = I('nian');
        $tid = 37;
        $sid = session('sid');
        $where['qh.sid'] = array('in',$sid);
        $where['qh.tid'] = 37;
        $where['qh.qishu'] = array('like',"%$nian%");
        $where['xf.type'] = 1;
        $where['xf.xuhao'] = 1;
        $school = M('school')->where(array('id'=>array('in',$sid)))->getField('id,name');
        $list = M('qishu_history as qh')
                ->join('LEFT JOIN stjy_xfl as xf on xf.suoshudd=qh.id')
                ->field('qh.qishu,qh.sid,xf.xufeixsrs,xf.fenmu,xf.xufeilv')
                ->where($where)
                ->select();
        $sid_arr = array();
        $data = array();
        foreach($list as $key=>$val){
            if(!in_array($val['sid'],$sid_arr)){
                $sid_arr[] = $val['sid'];
            }
            $list[$key]['yue'] = substr($val['qishu'],4,2);
        }
        foreach($sid_arr as $key=>$val){
            $data[$key]['xuhao'] = $key + 1;
            $data[$key]['fenxiao'] = $school[ $val ];
            $data[$key]['heji_xfq'] = 0;
            $data[$key]['heji_xfh'] = 0;
            foreach($list as $vv){
                if ($vv['sid'] == $val){
                    $data[$key][ 'xfq'.$vv['yue'] ] = $vv['fenmu'];
                    $data[$key][ 'xfh'.$vv['yue'] ] = $vv['xufeixsrs'];
                    $data[$key][ 'xfl'.$vv['yue'] ] = $vv['xufeilv'];
                    $data[$key]['heji_xfh'] += $vv['xufeixsrs'];
                    $data[$key]['heji_xfq'] += $vv['fenmu'];
                }
            }
            $data[$key]['heji_xfl'] = (number_format($data[$key]['heji_xfh'] / $data[$key]['heji_xfq'],4) * 100 ).'%';
        }

        vendor("PHPExcel.PHPExcel");// 引入phpexcel插件
        $filename =$nian.'年续费率汇总';
        $template = __ROOT__.'Public/template/template_xflhz.xlsx';
        $objPHPExcel = \PHPExcel_IOFactory::load($template);     //加载excel文件,设置模板
        $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);  //设置保存版本格式
        //接下来就是写数据到表格里面去
        $objActSheet = $objPHPExcel->getActiveSheet();
        $objActSheet->setCellValue('A1',$filename); 
        $i = 4;
        foreach($data as $key=>$val){
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(0).$i,$val['xuhao']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(1).$i,$val['fenxiao']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(2).$i,$val['heji_xfq']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(3).$i,$val['heji_xfh']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(4).$i,$val['heji_xfl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(5).$i,$val['xfq01']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(6).$i,$val['xfh01']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(7).$i,$val['xfl01']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(8).$i,$val['xfq02']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(9).$i,$val['xfh02']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(10).$i,$val['xfl02']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(11).$i,$val['xfq03']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(12).$i,$val['xfh03']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(13).$i,$val['xfl03']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(14).$i,$val['xfq04']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(15).$i,$val['xfh04']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(16).$i,$val['xfl04']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(17).$i,$val['xfq05']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(18).$i,$val['xfh05']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(19).$i,$val['xfl05']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(20).$i,$val['xfq06']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(21).$i,$val['xfh06']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(22).$i,$val['xfl06']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(23).$i,$val['xfq07']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(24).$i,$val['xfh07']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(25).$i,$val['xfl07']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(26).$i,$val['xfq08']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(27).$i,$val['xfh08']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(28).$i,$val['xfl08']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(29).$i,$val['xfq09']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(30).$i,$val['xfh09']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(31).$i,$val['xfl09']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(32).$i,$val['xfq10']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(33).$i,$val['xfh10']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(34).$i,$val['xfl10']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(35).$i,$val['xfq11']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(36).$i,$val['xfh11']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(37).$i,$val['xfl11']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(38).$i,$val['xfq12']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(39).$i,$val['xfh12']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(40).$i,$val['xfl12']);
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

    //经营数据表汇总下载
    public function download_zhlhz(){
        $nian = I('nian');
        $tid = 38;
        $sid = session('sid');
        $where['qh.sid'] = array('in',$sid);
        $where['qh.tid'] = 38;
        $where['qh.qishu'] = array('like',"%$nian%");
        $where['xf.type'] = 1;
        $where['xf.xuhao'] = 1;
        $school = M('school')->where(array('id'=>array('in',$sid)))->getField('id,name');
        $list = M('qishu_history as qh')
                ->join('LEFT JOIN stjy_zhl as xf on xf.suoshudd=qh.id')
                ->field('qh.qishu,qh.sid,xf.xufeixsrs,xf.fenmu,xf.xufeilv')
                ->where($where)
                ->select();
        $sid_arr = array();
        $data = array();
        foreach($list as $key=>$val){
            if(!in_array($val['sid'],$sid_arr)){
                $sid_arr[] = $val['sid'];
            }
            $list[$key]['yue'] = substr($val['qishu'],4,2);
        }
        foreach($sid_arr as $key=>$val){
            $data[$key]['xuhao'] = $key + 1;
            $data[$key]['fenxiao'] = $school[ $val ];
            $data[$key]['heji_xfq'] = 0;
            $data[$key]['heji_xfh'] = 0;
            foreach($list as $vv){
                if ($vv['sid'] == $val){
                    $data[$key][ 'xfq'.$vv['yue'] ] = $vv['fenmu'];
                    $data[$key][ 'xfh'.$vv['yue'] ] = $vv['xufeixsrs'];
                    $data[$key][ 'xfl'.$vv['yue'] ] = $vv['xufeilv'];
                    $data[$key]['heji_xfh'] += $vv['xufeixsrs'];
                    $data[$key]['heji_xfq'] += $vv['fenmu'];
                }
            }
            $data[$key]['heji_xfl'] = (number_format($data[$key]['heji_xfh'] / $data[$key]['heji_xfq'],4) * 100 ).'%';
        }

        vendor("PHPExcel.PHPExcel");// 引入phpexcel插件
        $filename =$nian.'年转化率率汇总';
        $template = __ROOT__.'Public/template/template_xflhz.xlsx';
        $objPHPExcel = \PHPExcel_IOFactory::load($template);     //加载excel文件,设置模板
        $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);  //设置保存版本格式
        //接下来就是写数据到表格里面去
        $objActSheet = $objPHPExcel->getActiveSheet();
        $objActSheet->setCellValue('A1',$filename); 
        $i = 4;
        foreach($data as $key=>$val){
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(0).$i,$val['xuhao']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(1).$i,$val['fenxiao']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(2).$i,$val['heji_xfq']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(3).$i,$val['heji_xfh']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(4).$i,$val['heji_xfl']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(5).$i,$val['xfq01']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(6).$i,$val['xfh01']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(7).$i,$val['xfl01']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(8).$i,$val['xfq02']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(9).$i,$val['xfh02']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(10).$i,$val['xfl02']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(11).$i,$val['xfq03']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(12).$i,$val['xfh03']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(13).$i,$val['xfl03']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(14).$i,$val['xfq04']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(15).$i,$val['xfh04']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(16).$i,$val['xfl04']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(17).$i,$val['xfq05']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(18).$i,$val['xfh05']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(19).$i,$val['xfl05']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(20).$i,$val['xfq06']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(21).$i,$val['xfh06']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(22).$i,$val['xfl06']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(23).$i,$val['xfq07']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(24).$i,$val['xfh07']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(25).$i,$val['xfl07']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(26).$i,$val['xfq08']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(27).$i,$val['xfh08']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(28).$i,$val['xfl08']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(29).$i,$val['xfq09']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(30).$i,$val['xfh09']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(31).$i,$val['xfl09']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(32).$i,$val['xfq10']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(33).$i,$val['xfh10']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(34).$i,$val['xfl10']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(35).$i,$val['xfq11']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(36).$i,$val['xfh11']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(37).$i,$val['xfl11']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(38).$i,$val['xfq12']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(39).$i,$val['xfh12']);
            $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(40).$i,$val['xfl12']);
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
    
}