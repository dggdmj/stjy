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
    
}