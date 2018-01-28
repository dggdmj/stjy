<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class ZijinAction extends CommonAction{
    /**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $this->class = M('class')->order('id desc')->select();
        $data = array('info' => array('name' => '资金管理',
            'description' => '资金管理',
        ),
            // 'menu' => array(
            //     array('name' => '人事列表',
            //         'url' => url('Renshi/renshi'),
            //         'icon' => 'list',
            //     ),

            // ),
            // 'add' => array(
            //     array('name' => '添加人事',
            //         'url' => url('Renshi/renshi_add'),
            //     ),
            // ),
        );
        return $data;
    }

    public function index(){
        $data = M('pczb'); // 实例化对象
        $count = $data->count();// 查询满足要求的总记录数
        $Page = new \Think\Page($count,15);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $list = $data->order('stjy_pczb.qishu desc,stjy_pczb.pici desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        // dump($list);

         // 获取表明与序号对应的一维数组
        $arr = $this->getTabelnames(1,[6]);

        // 查询该学校是否需要

        $this->assign('list',$list);// 赋值数据集
        $this->assign('fpage',$show);// 赋值分页输出
        $this->assign('arr',$arr);
        $this->adminDisplay();
    }

    // 列表页
    public function tableList(){
        // $username = $_SESSION['username'];
        // $temp = M('admin')->where('username ="'.$username.'"')->find();
        // $uid = $temp['id'];
        // $rid = M('role_user')->where('user_id ='.$uid)->getField('role_id');
        // $school_id = explode(",",$temp['school_id']);
        // $map['sid'] = array('in',$school_id);// 查询条件

        $tid = $_GET['tid'];//获取表格类型id
        $data = M('pici_history'); // 实例化对象
        // $count = $data->where($map)->where("tid = ".$tid)->count();// 查询满足要求的总记录数
        $count = $data->where("tid = ".$tid)->count();
        $Page = new \Think\Page($count,15);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $list = $data->join('LEFT JOIN stjy_table_name ON stjy_pici_history.tid=stjy_table_name.xuhao')->join('LEFT JOIN stjy_admin ON stjy_pici_history.uid=stjy_admin.id')->field('stjy_pici_history.*,stjy_admin.nicename,stjy_table_name.name,stjy_table_name.table_name')->where("tid = ".$tid)->order('stjy_pici_history.pici desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign('list',$list);// 赋值数据集
        $this->assign('fpage',$show);// 赋值分页输出
        $this->assign('tid',$tid);
        $this->adminDisplay();
    }

    // 详情页
    public function table_xq(){
        if(isset($_GET['id'])){
            $id = $_GET['id'];// 订单id
        }else{
            $id = M('pici_history')->where($_GET)->getField('id');
        }

        $tid = $_GET['tid'];// 表格类型id
        $where['qishu'] = $_GET['qishu'];// 期数
        $where['pici'] = $_GET['pici'];// 批次
        $tablename = M("table_name")->where("id = ".$tid)->getField("table_name");
        $list = M($tablename)->field('id,addTime,intQiShu,intCreateDate',true)->where($where)->select();
        // dump($list);
        // die;
        // dump($id);
        $tbnames = array_flip(array_diff($this->getComment($tablename),['id','addTime','intQiShu','intCreateDate']));// array_diff第二个参数的数组里面写入不需要显示的字段
        // dump($tbnames);
        // die;
        $this->assign('list',$list);// 赋值数据集
        $this->assign('tbnames',$tbnames);// 赋值数据集
        $this->adminDisplay();
    }

    //数据表导入
    public function import(){
        $tid = $_GET['tid'];    //对应数据表的序号tabel_name
        $table_info = M("table_name")->where("xuhao = ".$tid)->find();// 表名
        $qishu = M('qishu')->where('isuse = 1')->order('id desc')->select();// 可用期数
        $temp = M('admin')->where('username ="'.$_SESSION['username'].'"')->find();
        $nicename =  $temp['nicename'];// 操作人昵称

        if(count($_GET)>1){
            $extra['qishu'] = $_GET['qishu'];
            $extra['pici'] = $_GET['pici'];
            $this->assign("extra",$extra);
        }
        $this->assign("table_info",$table_info);
        $this->assign("qishu",$qishu);
        $this->assign('nicename',$nicename);
        $this->adminDisplay();
    }

    // public function dataUpload() {
    //     // dump($_POST);
    //     if(empty($_POST['qishu'])){
    //         $this->error('请选择期数');
    //     }
    //     if(empty($_POST['pici'])){
    //         $this->error('请选择批次');
    //     }
    //     if (!empty($_FILES)) {
    //         // dump($_FILES);die;
    //     }
    //     // die;
    // }

    // public function dataUpload() {
    //     dump($_POST);
    // }

    //数据导入
    public function dataUpload() {
        // 如果期数为空提示错误
        if(empty($_POST['qishu'])){
            $this->error('请选择期数');
        }
        // 如果批次为空提示错误
        if(empty($_POST['pici'])){
            $this->error('请选择批次');
        }
        // 以上正确开始上传
        // dump($_POST);die;
        if (!empty($_FILES)) {
            // dump($_FILES);die;
            $name = explode('.',$_FILES['excel']['name'])[0];// 获取上传excel文档的文档名

            $tablename = $_POST["table_name"];  //excel表对应的数据表的表名
            // dump($tablename);die;
            // 获取对应数据库里面注释(与excel字段相同)和字段名拼接的数组
            $newTemp = $this->getComment($tablename);// 如['学号'=>'xuehao',...]
            // dump($newTemp);die;
            $tablenames = $this->getTabelnames(2,[6]);// common控制器的方法,默认获取表明首字母拼音,2获取中文名

            $tid = $_POST["tid"];  //表名对应的序号

            $num = count(explode(explode('表',$tablenames[$tid])[0],$name));// 判断上传表格是否正确的条件,如果上传表名含有需要上传表格名的关键字段,即num>=2,若<2就是非正确的上传表名

            // $_POST['suoshufx'] = M('school')->where('id ='.$_POST['suoshufx'])->getField('name');//所属校区
            $_POST['uid'] = M('admin')->where('nicename ="'.$_POST['caozuoren'].'"')->getField('id');//操作人

            $config = array(
                'exts' => array('xlsx', 'xls'),
                'maxSize' => 3145728,
                'rootPath' => "./Public/",
                'savePath' => 'Uploads/'.$_POST['qishu'].'/',
                'subName' => array('date', 'Ymd'),
            );

            $upload = new \Think\Upload($config);
            $upload->autoSub = false;
            if (!$info = $upload->upload()) {
                $this->error($upload->getError());
            }

            $file_name=$upload->rootPath.$info['excel']['savepath'].$info['excel']['savename'];

            // dump($num);
            // 判断上传的表格是否正确
            if($num < 2){
                unlink($file_name);// 删除excel文档
                $this->error('上传失败,请检查上传的文档是否正确');
            }



            // dump($tablename);die;

            //在pici_history中增加
            $_POST["filename"] = $file_name;
            $where['pici'] = $_POST['pici'];
            $where['tid'] = $_POST['tid'];
            $where['qishu'] = $_POST['qishu'];

            // 查询是否已经存在该表格的导入
            $res = M('pici_history')->where($where)->find();

            // 如果已经导入,则导入失败
            if(!empty($res)){
                unlink($file_name);// 删除excel文档
                $this->error('已经存在该表格,请删除后再导入');
            }

            $where2['qishu'] = $_POST['qishu'];
            $where2['pici'] = $_POST['pici'];
            $pczb['qishu'] = $_POST['qishu'];
            $pczb['pici'] = $_POST['pici'];
            $pczb[$tablename] = 2;

            // 查询批次总表是否有该期数和批次
            $res2 = M('pczb')->where($where2)->find();
            // 若查询到无记录则添加,否则就更新数据
            if(empty($res2)){
                M('pczb')->add($pczb);
            }else{
                M('pczb')->where($where2)->save($pczb);
            }

            $pici_id = M("pici_history")->add($_POST);

            // 如果已经导入,则导入失败
            // $pici = $_POST['pici'];
            // $qishu = $_POST['qishu'];
            // $res = M($tablename)->where('addTime ='.$pici.' and intQiShu ='.$qishu)->select();
            // if(!empty($res)){
            //     unlink($file_name);// 删除excel文档
            //     $this->error('已经存在该表格,请删除后再导入');
            // }

            // excel文档超大对应设置
            if($_FILES['excel']['size']>307200){
                ini_set('memory_limit', '512M');
            }

            vendor("PHPExcel.PHPExcel");// 引入phpexcel插件
            $inputFileType = \PHPExcel_IOFactory::identify($file_name);
            $objReader = \PHPExcel_IOFactory::createReader($inputFileType);
            // $objReader->setReadDataOnly(true);
            $objPHPExcel = $objReader->load($file_name);
            $sheet = $objPHPExcel->getSheet(0);// 取得默认第一张工作表
            $highestRow = $sheet->getHighestRow(); // 取得最高行数,则总行数
            $highestColumn = $sheet->getHighestColumn(); // 取得最高列数,则总列数(英文)
            $colsNum= \PHPExcel_Cell::columnIndexFromString($highestColumn); // 获取总列数(数字)


            // 获取excel里面的所有字段
            $ziduan = $this->getExcelZiduan($objPHPExcel,$colsNum);
            // 检测必须列
            $cha = $this->checkBixu($tablename,$ziduan);

            if(!empty($cha)){
                $notice = implode(',',$cha);

                // 删除数据总表和期数的记录
                // --------------删除操作执行开始--------------
                M("pici_history")->where("id = ".$pici_id)->delete();// 从pici_history删除记录
                if(isset($where)){
                    unset($where);
                }
                $where['qishu'] = $_POST['qishu'];// 期数
                $where['pici'] = $_POST['pici'];// 学校id
                // 对应批次总表的该字段状态改为1,就是未导入
                $temp[$tablename] = 1;
                M('pczb')->where($where)->save($temp);
                unlink($file_name);// 删除excel文档
                // --------------删除操作执行结束--------------
                $this->error('缺少必须列'.$notice);
            }
            // dump($cha);die;
            // 获取excel里面除字段以外的数据
            $excel_data = $this->getExcelData($objPHPExcel,$highestRow,$tid,$_POST['qishu'],$_POST['pici'],$ziduan,$newTemp);

            // dump($excel_data);
            // die;
            // 将获取数组插入到数据库相应的表里面
            // $res = M($tablename)->addAll($excel_data);
            foreach($excel_data as $v){
                M($tablename)->add($v);
            }

            // 导入完成之后删除文件
            // unlink($file_name);
            $this->success('导入成功！',__CONTROLLER__.'/index');//获得成功跳转的链接
        }else{
            $this->error("请选择上传的文件");
        }
    }

    public function checkBixu($tablename,$ziduan){
        $bixu = $this->getComment($tablename);
        if($tablename == 'lklb'){
            $bixu = array_flip(array_diff($bixu,['id','addTime','intQiShu','strAccountName','strAccountBank','intCreateDate']));
        }else if($tablename == 'sqbb'){
            $bixu = array_flip(array_diff($bixu,['id','addTime','intQiShu','intCreateDate']));
        }

        $cha = array_diff($bixu,$ziduan);
        if(!empty($cha)){
            return $cha;
        }else{
            return false;
        }
    }

    /* $objPHPExcel:phpexcel对象;$colsNum:获取总列数(数字);*/
    public function getExcelZiduan($objPHPExcel,$colsNum){
        // 获取excel里面的所有字段
        for($i=0;$i<$colsNum;$i++){// 从第一行获取所有字段
            $cell_val = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).'1')->getValue();

            // 如果取出的obj,则转为string
            if(is_object($cell_val)){
                $cell_val= $cell_val->__toString();
            }
            // echo $cell_val.'<br>';
            $ziduan[] = trim($cell_val);
        }
        return $ziduan;
    }

    /* $objPHPExcel:phpexcel对象;$highestRow:取得最高行数,则总行数;$tid:表格的id;$qishu_id:qishu_history里面的id;$ziduan:excel的字段数组;$newTemp:获取对应数据库里面注释(与excel字段相同)和字段名拼接的数组; */
    public function getExcelData($objPHPExcel,$highestRow,$tid,$qishu,$pici,$ziduan,$newTemp){
        // 从第2行开始,到最后一行
        for($j=2;$j<=$highestRow;$j++){
            // 跳过空白行
            // 必须设置$col,否则会跳过所有
            foreach($ziduan as $k=>$v){// 遍历字段数组
                switch($tid){
                    case 21:
                        if($v == '商户订单号'){// 设置字段为学号的列如果值为空就跳过,其他跟这个原理一样
                            $col = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($k).$j)->getValue();
                        }
                    break;
                    case 22:
                        if($v == '商户号'){// 设置字段为学号的列如果值为空就跳过,其他跟这个原理一样
                            $col = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($k).$j)->getValue();
                        }
                    break;
                }
            }

            // 如果$col是对象就转换成字符串
            if(is_object($col)){
                $col= $col->__toString();
            }

            // 上面得出$col的值如果是空就跳过
            if(empty(trim($col))){
                continue;
            }
            // dump($ziduan);
            // dump($newTemp);
            for($i=0;$i<count($ziduan);$i++){
                if(array_key_exists($ziduan[$i], $newTemp)){
                    $cell = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j);
                    $value = $cell->getValue();
                    // dump(\PHPExcel_Cell::stringFromColumnIndex($i).$j);
                    // dump($value);
                    if(is_object($value)){
                        $value= $value->__toString();
                    }

                    // $cell->getCoordinate()当前单元格,如A1

                    // 自动识别单元格为日期格式
                    if($cell->getDataType()==\PHPExcel_Cell_DataType::TYPE_NUMERIC){
                        $cellstyleformat=$objPHPExcel->getActiveSheet()->getStyle( $cell->getCoordinate() )->getNumberFormat();
                        // dump($value);
                        // dump($cellstyleformat);
                        $formatcode=$cellstyleformat->getFormatCode();
                        // dump($formatcode);
                        if (preg_match('/^([$[A-Z]*-[0-9A-F]*])*[hmsdy]/i', $formatcode)) {
                            $value=gmdate("Y-m-d", \PHPExcel_Shared_Date::ExcelToPHP($value));
                        }else{
                            $value= \PHPExcel_Style_NumberFormat::toFormattedString($value,$formatcode);
                            $val_arr = explode(',',$value);
                            $val = '';
                            if(count($val_arr)>=2){
                                foreach($val_arr as $v){
                                    $val.=$v;
                                }
                                $value = (double)$val;
                            }
                            // unset($var_arr);

                        }
                    }

                    // $data[$temp2] = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j)->getValue();


                    // 如果开头是'='的数据就是公式,使用getOldCalculatedValue()函数读取公式后的值
                    if(substr($value,0,1) == '='){
                        $value = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j)->getOldCalculatedValue();
                    }

                    // $temp1 = $ziduan[$i];// 字段名称
                    // $temp2 = $newTemp[$temp1];// 数组newTemp里面字段名称对应的拼音,则数据库对应表的字段名称
                    $data[$newTemp[$ziduan[$i]]] = trim($value);
                }
                $data['addTime'] = $pici;  // 批次
                $data['intQiShu'] = $qishu; // 期数
                if($tid==22){
                    $data['strAccountName'] = explode('/',$data['strAccount'])[1];
                    $data['strAccountBank'] = explode('/',$data['strAccount'])[2];
                }
                $data['intCreateDate'] = date('Y-m-d H:i:s');
            }
            // dump($data);
            // die;
            $list[] = $data;
            unset($data);
        }
        // dump($list);
        return $list;
    }

    //彻底删除
    public function del() {
        // if(isset($_GET['id'])){
        //     $id = (int)$_GET['id'];// 订单id
        // }else{
        //     $id = M('pici_history')->where($_GET)->getField('id');
        // }

        // --待改--
        $tid = $where['tid'] = $_GET['tid'];// 表格id
        $where2['intQiShu'] = $where['qishu'] = $_GET['qishu'];// 期数
        $where2['addTime'] = $where['pici'] = $_GET['pici'];// 批次
        // $status_xz = M('pczb')->where($where)->getField('status_xz');// 获取数据总表的行政状态
        // if($status_xz == 2){// 如果行政状态为2,就是已经提交给行政经理,不允许操作,直接提示删除失败
        //     $arr['status'] = false;
        //     $arr['info'] = '表格已提交,删除失败';
        //     $this->ajaxReturn($arr);
        // }

        $filename = M('pici_history')->where($where)->getField('filename');// 从qishu_history里面拿出excel表的存放路径
        $tablename = M("table_name")->where("id = ".$tid)->getField("table_name");// 从table_name里面取出相应的表名(拼音)

        // --------------删除操作执行开始--------------
        $res1 = M($tablename)->where($where2)->delete();// 从表明里删除所属id对应的数据
        $res2 = M("pici_history")->where($where)->delete();// 从qishu_history删除记录
        unlink($filename);// 删除存放的excel表

        // 对应数据总表的该字段状态改为1,就是未导入
        $temp[$tablename] = 1;
        M('pczb')->where($where)->save($temp);
        // --------------删除操作执行结束--------------

        // 返回删除成功信息
        $arr['status'] = true;
        $arr['info'] = '删除成功';
        $this->ajaxReturn($arr);
    }

    // 删除总表行操作
    public function delRow(){
        $tablenames = $this->getTabelnames(1,[6]);// 获取序号和导入表名对应的一维数组
        $field = implode(',',$tablenames);// 组成筛选条件
        $data = M('pczb')->field($field)->where($_GET)->find();// 获取表格导入情况
        // 若所有表格导入再进行操作
        $count = 0;
        $i = 1;
        // 计算出所有上传表格的状态,表格上传状态为2,若所有表格上传,即是2*7=14,所有$count=14是左右表格都上传的状态
        foreach($data as $v){
           $count += $v;
           $i++;
        }
        // dump($count);die;
        if($count == 2){
            // 删除此行在sjzb的记录
            M('pczb')->where($_GET)->delete();

            $arr['status'] = true;
            $arr['info'] = '操作成功';
            $this->ajaxReturn($arr);
        }else{
            // $this->error('请导入所有表格后再通知财务');
            $arr['status'] = false;
            $arr['info'] = '请把此行表格都删除再执行此操作';
            $this->ajaxReturn($arr);
        }
    }

    // 下载导入表格
    public function download(){
        $data = M('pici_history')->join('stjy_table_name ON stjy_pici_history.tid=stjy_table_name.id')->field('stjy_pici_history.*,stjy_table_name.name')->where($_GET)->find();
        $file_url = $data['filename'];
        // dump($file_url);die;

        if(!isset($file_url)||trim($file_url)==''){
            return '500';
        }
        if(!file_exists($file_url)){ //检查文件是否存在
            return '404';
        }
        $filename = $data['qishu'].'-'.$data['pici'].'-'.$data['name'];
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
/*****************************************************************************
 *
 *	收款汇总信息
 *	2018-01-22
 *
 *
 *****************************************************************************/

 	public function zijinListQishu(){
		$count = M('qishu')->where('isUse',1)->order('name desc,id desc')->count();
        $Page = new \Think\Page($count,15);
        $show = $Page->show();
		
		$list = M('qishu')->where('isUse',1)->order('name desc,id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
		
		$this->assign('list',$list);
		$this->assign('fpage',$show);
		$this->adminDisplay();
		
	}
	

 	public function zijinListDay(){
		$qishu = $_GET['qishu'];
		if(intval($qishu)>0){
		
			$strDate=$qishu."01";
			$intDays = date('t', strtotime($strDate));
			
			$this->assign('qishu',$qishu);
			$this->assign('intDays',$intDays);
			$this->adminDisplay();
		}	
	}
	
	public function zijinHuizong_QiShu(){
		$qishu = $_GET['qishu'];
		if(intval($qishu)>0){

			$list = M('shoufei_info')->where("intQiShu = '".intval($strQishu)."'" )->order('id asc')->select();
			foreach($list as $key => $val)
			{
				if(!in_array($val["sid"],$arrSid))
					$listSchool[$key] = M('school')->where('id="'.$val["sid"].'"')->find();
	
				if(!in_array($val["aid"],$arrAid))
					$listAccount[$key] = M('account_detail')->where('id="'.$val["aid"].'"')->find();
					
				$arrSid[$key]=$val["sid"];	
				$arrAid[$key]=$val["aid"];	
			}
			foreach($listSchool as $Key => $Value){
				foreach($listAccount as $KeyA => $ValueA){
								
					$listHZBJ[$Value["id"]][$ValueA["id"]] = M('shoufei_info')->where("addTime = '".intval($strPici)."' and intQiShu = '".intval($strQishu)."' and sid = '".$Value["id"]."' and aid = '".$ValueA["id"]."' ")->find();
				}						
			}
					
				
		}	
	}
	
	
    public function zijinHuizong(){

		$strQishu = $_GET['qishu'];
		$strPici  = $_GET['pici'];
		
		//测试数据-参数设置
		//$strQishu="201710";
		//$strPici="8";
		
		if(intval($strQishu)>0 && intval($strPici)>0)
			$listSF = M('shoufei_info')->where("addTime = '".intval($strPici)."' and intQiShu = '".intval($strQishu)."'" )->order('id asc')->select();
		else
			$this->error("数据操作有误，请检查！");
			
		//if(intval($strQishu)>0 && intval($strPici)=="")
		//	$listSF = M('shoufei_info')->where("'intQiShu = '".intval($strQishu)."'" )->order('id asc')->select();
		
		if(is_array($listSF) && !empty($listSF))
		{
			//$listSF = M('shoufei_info')->where("addTime = '".intval($strPici)."' and intQiShu = '".intval($strQishu)."'" )->order('id asc')->select();
			//dump($listSF);
			foreach($listSF as $key => $val)
			{
				if(!in_array($val["sid"],$arrSid))
					$listSchool[$key] = M('school')->where('id="'.$val["sid"].'"')->find();
	
				if(!in_array($val["aid"],$arrAid))
					$listAccount[$key] = M('account_detail')->where('id="'.$val["aid"].'"')->find();
					
				$arrSid[$key]=$val["sid"];	
				$arrAid[$key]=$val["aid"];	
			}
			foreach($listSchool as $Key => $Value){
				foreach($listAccount as $KeyA => $ValueA){
					$listHZBJ[$Value["id"]][$ValueA["id"]] = M('shoufei_info')->where("addTime = '".intval($strPici)."' and intQiShu = '".intval($strQishu)."' and sid = '".$Value["id"]."' and aid = '".$ValueA["id"]."' ")->find();
				}						
			}
		}
		else
		{
			$listSchool = M('school')->where('isuse',1)->order('id desc')->select();//
			$listAccount = M('account_detail')->where('isUse',1)->order('intOrderID asc,id desc')->select();//
			
			$listLklb = M('lklb')->where("intqishu = '".intval($strQishu)."' and addtime = '".intval($strPici)."'")->select();//
			
			if(intval($strQishu)>0 && intval($strPici)>0 && is_array($listLklb) && !empty($listLklb))
			{
				foreach($listSchool as $Key => $Value){
					foreach($listAccount as $KeyA => $ValueA){			
						$listHZBJ_D = M('lklb')->where("strmername = '".$Value["subname"]."' and intqishu = '".intval($strQishu)."' and addtime = '".intval($strPici)."' and straccountname = '".$ValueA["strname"]."' and straccountbank = '".$ValueA["strbankname"]."'")->sum('douHZBJ');
						$listSXF_D = M('lklb')->where("strmername = '".$Value["subname"]."' and intqishu = '".intval($strQishu)."' and addtime = '".intval($strPici)."' and straccountname = '".$ValueA["strname"]."' and straccountbank = '".$ValueA["strbankname"]."'")->sum('douSXF');
						
						//echo  M('lklb')->getLastSql();
						//echo "<br>";
						$arrData["sid"]	= $Value["id"];
						$arrData["aid"]	= $ValueA["id"];
						
						$arrData["douSF"]	= floatval($listHZBJ_D);
						$arrData["douSFHJ"]	= floatval($listHZBJ_D) - abs(floatval($listSXF_D));
						$arrData["douSXF"]	= floatval($listSXF_D);
						
						$arrData["addTime"]	= intval($strPici);
						$arrData["intQiShu"]	= intval($strQishu);
						$arrData["intCreateDate"]	= date('Y-m-d H:i:s');
						
						M('shoufei_info')->add($arrData);
					}						
				}
				
				foreach($listSchool as $Key => $Value){
					foreach($listAccount as $KeyA => $ValueA){
									
						$listHZBJ[$Value["id"]][$ValueA["id"]] = M('shoufei_info')->where("addTime = '".intval($strPici)."' and intQiShu = '".intval($strQishu)."' and sid = '".$Value["id"]."' and aid = '".$ValueA["id"]."' ")->find();
					}						
				}	
				//dump($listSXF);
			}
		}
		
		foreach($listAccount as $K => $Val){
			$shoufei_total[$Val["id"]]=M("shoufei_info")->where("addtime = '".intval($strPici)."' and intQiShu = '".intval($strQishu)."' and aid='".intval($Val["id"])."'")->field(" sum(`douSF`) as `douSF_total`, sum(`douSFHJ`) as `douSFHJ_total`, sum(`douXJSR`) as `douXJSR_total`, sum(`douXXK`) as `douXXK_total`, sum(`douRZK`) as `douRZK_total`, sum(`douQTSR`) as `douQTSR_total`, sum(`douSXF`) as `douSXF_total` ")->find();
		}
		
		foreach($listSchool as $K => $Val){
			$School_total[$Val["id"]]=M("shoufei_info")->where("addtime = '".intval($strPici)."' and intQiShu = '".intval($strQishu)."' and sid='".intval($Val["id"])."'")->find();
		}
		
		
		$this->assign('listHZBJ',$listHZBJ);
		$this->assign('listSXF',$listSXF);
		
		$this->assign('listSchool',$listSchool);
		$this->assign('listAccount',$listAccount);
		$this->assign('shoufei_total',$shoufei_total);
		
		$this->assign('qishu',$strQishu);
		$this->assign('pici',$strPici);
		
		$this->adminDisplay();
		
	}
	
	public function zijin_num_ajax(){
	
		$douSF_Z_js	= $_POST["douSF_Z_js"]*100;	//电子总收入
		$douSF_D_js	= $_POST["douSF_D_js"]*100;	//最后计算结果
		
		$douXJSR_js	= $_POST["douXJSR_js"]*100;	//现金收入
		$douXXK_js	= $_POST["douXXK_js"]*100;	//学习卡
		$douRZK_js	= $_POST["douRZK_js"]*100;	//融资款
		
		$floSXF_js	= abs($_POST["floSXF_js"])*100;	//手续费
		
		$strFieldName_js = substr($_POST["strFieldName_js"], 0, -2);
		$strFieldValue_js = floatval($_POST["strFieldValue_js"]);
		$intID_js = intval($_POST["intID_js"]);
		
		//$intID_js=1;

		if(abs($douSF_Z_js)>0)
		{
			$douSFHJ = number_format(($douSF_Z_js + $douXJSR_js - $douXXK_js - $douRZK_js - $floSXF_js)/100,2,".","");
			$arrData[$strFieldName_js]	= $strFieldValue_js;
			$arrData["douSFHJ"]	= $douSFHJ;
			M('shoufei_info')->where("id = '".$intID_js."'")->save($arrData);
			
			$reA = M('shoufei_info')->where("id = '".$intID_js."'")->find();

			$douTotal = M("shoufei_info")->where("addtime = '".intval($reA["addtime"])."' and intQiShu = '".intval($reA["intqishu"])."' and aid='".intval($reA["aid"])."'")->field(" sum(`douSF`) as `douSF_total`, sum(`douSFHJ`) as `douSFHJ_total`, sum(`douXJSR`) as `douXJSR_total`, sum(`douXXK`) as `douXXK_total`, sum(`douRZK`) as `douRZK_total`, sum(`douQTSR`) as `douQTSR_total`, sum(`douSXF`) as `douSXF_total` ")->find();

			//最终收费 = 读取收费+现金-学习卡-融资款-手续费
			$temp["arrTotal"] = $douTotal;
			$temp["aid"] = $reA["aid"];
			$temp["msg"] = $douSFHJ;
			$temp["status"] = 'OK';
		}
		else
		{
			$temp['msg'] 	= '请在正确的收款平台下填写！';
			$temp['status'] = 'NO';
		}
		echo json_encode($temp); 
		//dump($temp);
	}
	
	public function addZijinHuizong(){
	
		$sid	= $_POST["sid"];
		$aid	= $_POST["aid"];
		
		$douSF		= $_POST["douSF"];
		$douSFHJ	= $_POST["douSFHJ"];
		$douXJSR	= $_POST["douXJSR"];
		$douXXK		= $_POST["douXXK"];
		$douRZK		= $_POST["douRZK"];
		$douQTSR	= $_POST["douQTSR"];
		$douSXF		= $_POST["douSXF"];
		
		$addTime	= $_POST["addTime"];
		$intQiShu	= $_POST["intQiShu"];

		$intCreateDate	= $_POST["intCreateDate"];
		
		$intID	= $_POST["intID"];
		
		if(!empty($intID) && is_array($intID))
		{
			foreach($intCreateDate as $key=>$val)
			{
				//$arrData["sid"]	= $sid[$key];
				//$arrData["aid"]	= $aid[$key];
				
				$arrData["douSF"]	= $douSF[$key];
				$arrData["douSFHJ"]	= $douSFHJ[$key];
				$arrData["douXJSR"]	= $douXJSR[$key];
				$arrData["douXXK"]	= $douXXK[$key];
				$arrData["douRZK"]	= $douRZK[$key];
				$arrData["douQTSR"]	= $douQTSR[$key];
				$arrData["douSXF"]	= $douSXF[$key];
				
				//$arrData["addTime"]	= $addTime[$key];
				//$arrData["intQiShu"]= $intQiShu[$key];
				
				$arrData["intCreateDate"]	= $intCreateDate[$key];
				
				$fid	= $intID[$key];

				M('shoufei_info')->where(array('id'=>$fid))->save($arrData);

				$uQiShu	=	$intQiShu[$key];
			}
			
			$this->success('修改成功',U('zijinListDay',array('qishu'=>$uQiShu)));

        }
        else 
		{
			foreach($intCreateDate as $key=>$val)
			{
				$arrData["sid"]	= $sid[$key];
				$arrData["aid"]	= $aid[$key];
				
				$arrData["douSF"]	= $douSF[$key];
				$arrData["douSFHJ"]	= $douSFHJ[$key];
				$arrData["douXJSR"]	= $douXJSR[$key];
				$arrData["douXXK"]	= $douXXK[$key];
				$arrData["douRZK"]	= $douRZK[$key];
				$arrData["douQTSR"]	= $douQTSR[$key];
				$arrData["douSXF"]	= $douSXF[$key];
				
				$arrData["addTime"]	= $addTime[$key];
				$arrData["intQiShu"]= $intQiShu[$key];
				
				$arrData["intCreateDate"]	= $intCreateDate[$key];
			
				M('shoufei_info')->add($arrData);
				
				$uQiShu	=	$intQiShu[$key];
			}
			$this->success('保存成功',U('zijinListDay',array('qishu'=>$uQiShu)));
           
        }
			
	}
	
	public function zijin_rem_ajax(){
	
		$textPiZhu_js	= $_POST["textPiZhu"];
		$intID_js	= $_POST["intID"];
		$fieldName_js	= $_POST["fieldName"];


		$rsRem = M('shoufei_info')->where("id = '".intval($intID_js)."'" )->find();
		if($rsRem["dousf"]>0)
		{
			if(strlen(trim($textPiZhu_js))==0)
			{
				//$rsRem = M('shoufei_info')->where("id = '".intval($intID_js)."'")->find();
				$temp["msg"] = $rsRem[strtolower($fieldName_js)];
				$temp["status"] = 'OK';
			}
			else
			{
				$arrData[$fieldName_js]=$textPiZhu_js;
				
				M('shoufei_info')->where("id = '".intval($intID_js)."'")->save($arrData);
				
				$temp["msg"] = '添加 批注信息 成功！';
				$temp["status"] = 'OK';
			}
		}
		else
		{
			$temp['msg'] 	= '此项没有内容，无法添加批注！';
			$temp['status'] = 'NO';
		}
		
		echo json_encode($temp); 
		//dump($temp);
	}
	
	public function zijin_reset_ajax(){
	
		$intQishu = $_GET['qishu'];
		$intPici  = $_GET['pici'];
		if(intval($intQishu)>0 && intval($intPici)>0)
		{
			M("shoufei_info")->where("addtime = '".intval($intPici)."' and intQiShu = '".intval($intQishu)."'")->delete();
			$arr['status'] = true;
			$arr['info'] = '重置成功';
		}
		else
		{
			$arr['status'] = false;
			$arr['info'] = '操作失败！';
			
		}
		$this->ajaxReturn($arr);
	}
	
	
	
	public function showphpinfo(){
			
		$intQishu = 201710;
		$intPici  = 11;
		$intAid	= 1;
		
		
		$listAccount = M('account_detail')->where('isUse',1)->order('intOrderID asc,id desc')->select();//
		
		foreach($listAccount as $K => $Val){
			$shoufei_total[$Val["id"]]=M("shoufei_info")->where("addtime = '".intval($intPici)."' and intQiShu = '".intval($intQishu)."' and aid='".intval($Val["id"])."'")->field(" sum(`douSF`) as `douSF_total`, sum(`douSFHJ`) as `douSFHJ_total`, sum(`douXJSR`) as `douXJSR_total`, sum(`douXXK`) as `douXXK_total`, sum(`douRZK`) as `douRZK_total`, sum(`douQTSR`) as `douQTSR_total`, sum(`douSXF`) as `douSXF_total` ")->find();
			
			echo  M('shoufei_info')->getLastSql();
			echo "<br><br>";
		}
		dump($shoufei_total);
		/*
		M("shoufei_info")
			->where("addtime = '".intval($intPici)."' and intQiShu = '".intval($intQishu)."' and aid='".intval($intAid)."'")
			->field(" sum(`douSF`) as `douSF_total`,
					  sum(`douSFHJ`) as `douSFHJ_total`,
					  sum(`douXJSR`) as `douXJSR_total`,
					  sum(`douXXK`) as `douXXK_total`,
					  sum(`douRZK`) as `douRZK_total`,
					  sum(`douQTSR`) as `douQTSR_total`,
					  sum(`douSXF`) as `douSXF_total`
				   ")
			->find();
		*/
		//phpinfo();

		
		
		//echo "<br>";
	}

}
?>



















