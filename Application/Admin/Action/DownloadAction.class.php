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
                $template = __ROOT__.'Public/template/template_tf_hz.xlsx';
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
        $sid = I('sid');
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        $data = new \Admin\Action\CountSrqkylbAction();
        $info = $data->getSrqkylbData($qishu,$sid);

        vendor("PHPExcel.PHPExcel");// 引入phpexcel插件
        $filename = substr($qishu,0,4).'年'.substr($qishu,4,2).'月'.$school_name.'收入情况一览表';
        $template = __ROOT__.'Public/template/template_srylb.xlsx';
        $objPHPExcel = \PHPExcel_IOFactory::load($template);     //加载excel文件,设置模板
        $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);  //设置保存版本格式
        //接下来就是写数据到表格里面去
        $objActSheet = $objPHPExcel->getActiveSheet();
        $objActSheet->setCellValue('A1',$filename); 
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(0).'3',$info['xuhao']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(1).'3',$info['xuexiao']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(2).'3',$info['zaibianrs']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(3).'3',$info['jinban']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(4).'3',$info['weijinban']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(5).'3',$info['tingkers']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(6).'3',$info['shangkecs']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(7).'3',$info['yingzongxfrc']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(8).'3',$info['shijizxfrc']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(9).'3',$info['pingjunkcdj']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(10).'3',$info['zongrencxss']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(11).'3',$info['pingjunxsdj']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(12).'3',$info['querenxfsr']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(13).'3',$info['jiaocaifei']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(14).'3',$info['shijicqzrcxs']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(15).'3',$info['biaozhunzsr']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(16).'3',$info['zongshouru']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(17).'3',$info['xueshengcql']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(18).'3',$info['shouruhb']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(19).'3',$info['kecidjhb']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(20).'3',$info['xiaoshidjhb']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(21).'3',$info['benyuezddcksr']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(22).'3',$info['shijiskcs']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(23).'3',$info['youxiaofkcddcksr']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(24).'3',$info['shijiskcs2']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(25).'3',$info['qichu']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(26).'3',$info['xinsheng']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(27).'3',$info['liushihl']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(28).'3',$info['zhuangru']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(29).'3',$info['liushi']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(30).'3',$info['tuifei']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(31).'3',$info['zhuangchu']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(32).'3',$info['qimo']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(33).'3',$info['qichuxy']);
        $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex(34).'3',$info['qimoxy']);
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
    
}