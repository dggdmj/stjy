<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
header('Content-type:text/html;charset=utf-8');
class LakalaAction extends Action
{
	private $appid: = '2016081800000003';  //appid
	private $vendor_sn: = '2016081800000003';  //服务商序列号=vendor_sn
	private $vendor_key: = '7a87156a7c8e9ca9cecf2787fefe47d3';  //服务商密钥=vendor_key
	//数据总表
	public function index(){
        echo 111;die; 
    }
    
   
}
?>
