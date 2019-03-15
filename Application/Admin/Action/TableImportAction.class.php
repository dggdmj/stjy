<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class TableImportAction extends CommonAction{
	/**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $this->class = M('class')->order('id desc')->select();
        $data = array('info' => array('name' => '校管家表格',
            'description' => ' 管理网站数据总表',
        ),
            'menu' => array(
                array(
                    'name' => '数据总表',
                    'url' => url('TableImport/index'),
                    'icon' => 'list',
                ),
                array(
                        'name' => '学员信息表导入',
                        'url' => U('/TableImport/tableList/tid/1'),
                    ),
                array(
                        'name' => '班级信息表导入',
                        'url' => U('/TableImport/tableList/tid/2'), 
                    ),
                array(
                    'name' => '班级学员信息表导入',
                    'url' => U('/TableImport/tableList/tid/3'),
                ),
                array(
                    'name' => '收据记录表导入',
                    'url' => U('/TableImport/tableList/tid/4'),
                ),
                array(
                    'name' => '收据明细表导入',
                    'url' => U('/TableImport/tableList/tid/24'),
                ),
                array(
                    'name' => '课消明细表导入',
                    'url' => U('/TableImport/tableList/tid/5'),
                ),
                array(
                    'name' => '开班明细表导入',
                    'url' => U('/TableImport/tableList/tid/6'),
                ),
                array(
                    'name' => '学员费用预警表导入',
                    'url' => U('/TableImport/tableList/tid/7'),
                ),
                array(
                    'name' => '出勤明细表导入',
                    'url' => U('/TableImport/tableList/tid/25'),
                ),
                array(
                    'name' => '收支流水',
                    'url' => U('/TableImport/tableList/tid/26'),
                ),
                array(
                    'name' => '转出记录',
                    'url' => U('/TableImport/tableList/tid/27'),
                ),
                array(
                    'name' => '转入记录',
                    'url' => U('/TableImport/tableList/tid/28'),
                ),
                array(
                    'name' => '学习卡额度表导入',
                    'url' => U('/TableImport/tableList/tid/14'),
                ),
                array(
                    'name' => '社保表导入',
                    'url' => U('/TableImport/tableList/tid/15'),
                ),
                array(
                    'name' => '公积金表导入',
                    'url' => U('/TableImport/tableList/tid/16'),
                ),
            ),
           // 'add' => array(
           //     array('name' => '添加文章',
           //         'url' => url('Article/article'),
           //     ),
           // )
        );
        return $data;
    }

	//数据总表
	public function index(){
        // 获取当前用户的角色
        $username = $_SESSION['username'];
        $temp = M('admin')->where('username ="'.$username.'"')->find();
        $uid = $temp['id'];
        $rid = M('role_user')->where('user_id ='.$uid)->getField('role_id');
        $sid = session('sid');
        $school_id = explode(",",$sid);
        $map['sid'] = array('in',$school_id);// 查询条件
        $data = M('sjzb'); // 实例化对象
        $keywords = I('keywords','');
        $start_time = I('start_time','');
        $end_time = I('end_time','');
        $string = $this->pingWhrere($keywords,$start_time,$end_time,'stjy_sjzb');//调取拼接where
        $string ? $map['_string'] = $string : ''; 
        //开始时间
        
        // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        // !!!!!!!!!!!!!!!!!!!!!!!!!!查询条件可能需要完善!!!!!!!!!!!!!!!!!!!!!!
        // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        //  or $_SESSION['superadmin'] == true,若需要用admin查看数据,把这个加入到if里面
        //
        // if($rid == 2 or $rid == 3){
        $count = $data->join('stjy_school ON stjy_sjzb.sid=stjy_school.id')->where($map)->count();// 查询满足要求的总记录数
        // }
        $Page = new \Think\Page($count,15);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        // if($rid == 2 or $rid == 3 or $_SESSION['superadmin'] == true){
        $list = $data->join('stjy_school ON stjy_sjzb.sid=stjy_school.id')->field('stjy_sjzb.*,stjy_school.name,stjy_school.isshebao,stjy_school.isgongjijin')->where($map)->order('stjy_sjzb.qishu desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        // }
        // dump($list);
        // dump($Page->firstRow.','.$Page->listRows); 

        // 获取表明与序号对应的一维数组
        $arr = $this->getTabelnames(); 
        //把课消明细表和学员费用预警放前面
        $tmp = $arr;
        $key = array_search('kxmxb',$arr);
        $key2 = array_search('xyfyyjb',$arr);
        unset($arr[$key],$arr[$key2]);
        array_unshift($arr,'kxmxb','xyfyyjb');
        $data = array();
        foreach($arr as $vv){
            foreach($tmp as $key=>$val){
                if($vv == $val){
                    $data[$key] = $vv;
                }
            }
        }
        // 查询该学校是否需要
        $this->assign('get',$_GET);
        $this->assign('list',$list);// 赋值数据集
        $this->assign('fpage',$show);// 赋值分页输出
        $this->assign('rid',$rid);// 赋值角色id
        $this->assign('arr',$data);
        $this->adminDisplay();
    }

    //根据搜索条件拼接where条件
    //关键字，开始时间，结束时间，时间表名
    public function pingWhrere($keywords='',$start_time='',$end_time='',$table_name=''){
        $result = '';
        $keywords ? $result = " stjy_school.name like '%$keywords%' " : '';//关键字搜索
        //开始时间
        if ($start_time){
            $start_time_arr = explode('-',$start_time);
            if (strlen($start_time_arr[1]) == 1){
                $start_time_trim = $start_time_arr[0].'0'.$start_time_arr[1];
            }else{
                $start_time_trim = $start_time_arr[0].$start_time_arr[1];
            }
            $result ? $result.=" and stjy_sjzb.qishu >= '$start_time_trim'" : $result=" stjy_sjzb.qishu >= '$start_time_trim'";
        }
        // 结束时间
        if ($end_time){
            $end_time_arr = explode('-',$end_time);
            if (strlen($end_time_arr[1]) == 1){
                $end_time_trim = $end_time_arr[0].'0'.$end_time_arr[1];
            }else{
                $end_time_trim = $end_time_arr[0].$end_time_arr[1];
            }
            $result ? $result.=" and stjy_sjzb.qishu <= '$end_time_trim'" : $result=" stjy_sjzb.qishu <= '$end_time_trim'";
        }
        return $result;
    }
    
    public function index_xq(){
        $data = M('sjzb')->field('id,sid,xyxxb,bjxxb,bjxyxxb,sjjlb,kxmxb,kbmxb,xyfyyjb,xxkedb,sbmxb,gjjmxb',true)->where($_GET)->find();
        $data['school'] = M('school')->where('id ='.$_GET['sid'])->getField('name');
        // dump($data);
        $this->assign('data',$data);
        $this->adminDisplay();
    }

    // 列表页
    public function tableList(){
        $username = $_SESSION['username'];
        $temp = M('admin')->where('username ="'.$username.'"')->find();
        $uid = $temp['id'];
        $rid = M('role_user')->where('user_id ='.$uid)->getField('role_id');
        $sid = session('sid');
        $school_id = explode(",",$sid);
        $map['sid'] = array('in',$school_id);// 查询条件

        //搜索和时间选择
        $keywords = I('keywords','');
        $start_time = I('start_time','');
        $end_time = I('end_time','');
        $string = $this->pingWhrere($keywords,$start_time,$end_time,'stjy_qishu_history');//调取拼接where
        $string ? $map['_string'] = $string : ''; 
        $tid = $_GET['tid'];//获取表格类型id
        $map['_string'] ? $map['_string'] .= " and tid = ".$tid : $map['_string'] .= " tid = ".$tid;
        $data = M('qishu_history'); // 实例化对象
        $count = $data->join('LEFT JOIN stjy_table_name ON stjy_qishu_history.tid=stjy_table_name.xuhao')->join('LEFT JOIN stjy_admin ON stjy_qishu_history.uid=stjy_admin.id')->join('LEFT JOIN stjy_school ON stjy_qishu_history.sid=stjy_school.id')->where($map)->count();// 查询满足要求的总记录数
        $Page = new \Think\Page($count,15);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $list = $data->join('LEFT JOIN stjy_table_name ON stjy_qishu_history.tid=stjy_table_name.xuhao')->join('LEFT JOIN stjy_admin ON stjy_qishu_history.uid=stjy_admin.id')->join('LEFT JOIN stjy_school ON stjy_qishu_history.sid=stjy_school.id')->field('stjy_qishu_history.*,stjy_admin.nicename,stjy_school.name as school_name,stjy_school.id as sid,stjy_table_name.name,stjy_table_name.table_name')->where($map)->order('stjy_qishu_history.qishu desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign('get',$_GET);
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
            $id = M('qishu_history')->where($_GET)->getField('id');
        }
        
        $tid = $_GET['tid'];// 表格类型id
        $tablename = M("table_name")->where("id = ".$tid)->getField("table_name");
        //判断是否在分表里面获取返回的表名
        $tablename_fenbiao = $this->checkFenbiao($id,$tablename);
        $list = M($tablename_fenbiao)->field('id',true)->where("suoshudd = ".$id)->select();
        $tbnames = array_flip(array_diff($this->getComment($tablename_fenbiao),array('id','suoshudd','daorusj')));// array_diff第二个参数的数组里面写入不需要显示的字段
        $this->assign('list',$list);// 赋值数据集
        $this->assign('tbnames',$tbnames);// 赋值数据集
        $this->adminDisplay();
    }

	//数据表导入
	public function import(){
	    $tid = $_GET['tid'];    //对应数据表的序号tabel_name
        $table_info = M("table_name")->where("xuhao = ".$tid)->find();// 表明
        $qishu = M('qishu')->where('isuse = 1')->order('id desc')->select();// 期数
        $school = M('school')->where('isuse = 1')->select();// 可用校区
        $temp = M('admin')->where('username ="'.$_SESSION['username'].'"')->find();
        // $suoshuxq = $temp['school_id'];// 操作人的所属校区
        $suoshuxq = session('sid');
        $nicename =  $temp['nicename'];// 操作人昵称
        $suoshuxq = explode(',', $suoshuxq);
        foreach($suoshuxq as $v){
            foreach($school as $v1){
                if($v1['id'] == $v){
                    $data[$v]=$v1['name'];
                }
            }
        }
        if(count($_GET)>1){
            $extra['qishu'] = $_GET['qishu'];
            $extra['sid'] = $_GET['sid'];
            $this->assign("extra",$extra);
        }
        $this->assign("table_info",$table_info);
        $this->assign("qishu",$qishu);
        $this->assign("school",$data);
        $this->assign('nicename',$nicename);
		$this->adminDisplay();
	}

    //签到表导入
    public function qdb_dr(){
        header("Content-type: text/html; charset=utf-8");
        if(!empty($_FILES)){
            $_POST['uid'] = M('admin')->where('nicename ="'.$_POST['caozuoren'].'"')->getField('id');//操作人
            //上传表格并导入数据
            $config = array(
                'exts' => array('csv'),
                'maxSize' => 0,
                'rootPath' => "./Public/",
                'savePath' => 'Uploads/',
                'subName' => array('date', 'Ymd'),
            );

            $upload = new \Think\Upload($config);

            if (!$info = $upload->upload()) {
                $this->error($upload->getError());
            }
            $file_name=$upload->rootPath.$info['excel']['savepath'].$info['excel']['savename'];

            $_POST["filename"] = $file_name;
            // 查询是否已经存在该表格的导入
            $_POST["filename"] = $file_name;
            $where['tid'] = $_POST['tid'];
            $where['qishu'] = $_POST['qishu'];
            $where['sid'] = $_POST['sid'];
            $res = M('qishu_history')->where($where)->find();
            // 如果已经导入,则导入失败
            if(!empty($res)){
                unlink($file_name);// 删除excel文档
                $this->error('已经存在该表格,请删除后再导入');
            }
            $qishu_id = M("qishu_history")->add($_POST);
            $file = fopen($file_name,'r'); 
            while ($data = mb_convert_encoding(fgetcsv($file), "UTF-8", "gb2312")) { //每次读取CSV里面的一行内容
                // dump($data); //此为一个数组，要获得每一个数据，访问数组下标即可
                $data_list[] = $data;
            }
            fclose($file);
            for($i=1;$i<count($data_list);$i++){
                $tmp = array();
                $tmp['xiaoqu'] = $data_list[$i]['0'];
                $temp = explode('\\',$tmp['xiaoqu']);
                $tmp['xiaoqu'] =  $temp['1'];
                $tmp['xingming'] = $data_list[$i]['3'];
                $tmp['yingchuqts'] = $data_list[$i]['5'];
                $tmp['chuqints'] = $data_list[$i]['6'];
                $tmp['suoshudd'] =  $qishu_id;
                if ($tmp['xingming']){
                    M('qdb')->add($tmp);
                }
            }
            $this->success('导入成功！',__CONTROLLER__.'/index');//获得成功跳转的链接
        }
    }

    /**
   * 读取CSV文件
   * @param string $csv_file csv文件路径
   * @param int $lines       读取行数
   * @param int $offset      起始行数
   * @return array|bool
   */
    public function read_csv_lines($csv_file = '', $lines = 0, $offset = 0)
    {
        if (!$fp = fopen($csv_file, 'r')) {
            return false;
        }
        $i = $j = 0;
        while (false !== ($line = fgets($fp))) {
            if ($i++ < $offset) {
                continue;
            }
            break;
        }
        $data = array();
        while (($j++ < $lines) && !feof($fp)) {
            $data[] = mb_convert_encoding(fgetcsv($fp),"UTF-8", "gb2312");
        }
        fclose($fp);
        return $data;
     }

    //数据导入
    public function dataUpload() {
        if (!empty($_FILES)) {
            // dump($_FILES);die;
            $s_status = M('school')->where(array('id'=>$_POST['sid']))->getField('isuse');
            if($s_status != 1){
                $this->error('当前校区已被禁用，请联系管理员');exit;
            }
            $name = explode('.',$_FILES['excel']['name'])[0];// 获取上传excel文档的文档名
            
            $tablename = $_POST["table_name"];  //excel表对应的数据表的表名
            // dump($_POST);die;
            // 获取对应数据库里面注释(与excel字段相同)和字段名拼接的数组
            
            $tablenames = $this->getTabelnames(2,[1,3,4]);// common控制器的方法,默认获取表明首字母拼音,2获取中文名

            $tid = $_POST["tid"];  //表名对应的序号
            $num = count(explode(explode('表',$tablenames[$tid])[0],$name));// 判断上传表格是否正确的条件,如果上传表名含有需要上传表格名的关键字段,即num>=2,若<2就是非正确的上传表名

            // $_POST['suoshufx'] = M('school')->where('id ='.$_POST['suoshufx'])->getField('name');//所属校区
            $_POST['uid'] = M('admin')->where('nicename ="'.$_POST['caozuoren'].'"')->getField('id');//操作人

            $config = array(
                'exts' => array('xlsx', 'xls'),
                'maxSize' => 8145728,
                'rootPath' => "./Public/",
                'savePath' => 'Uploads/',
                'subName' => array('date', 'Ymd'),
            );

            $upload = new \Think\Upload($config);
            $upload->autoSub = true;
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

            if($_POST['tid'] == 3){
                $res_xyxxb = M('qishu_history')->where('qishu ='.$_POST['qishu'].' and sid ='.$_POST['sid'].' and tid=1')->find();
                if(empty($res_xyxxb)){
                    unlink($file_name);// 删除excel文档
                    $this->error('请先上传学员信息表后再上传班级学员信息表');
                }
            }

//             dump($tablename);die;

            //在qishu_history中增加
            $_POST["filename"] = $file_name;
            $where['tid'] = $_POST['tid'];
            $where['qishu'] = $_POST['qishu'];
            $where['sid'] = $_POST['sid'];
            
            // 查询是否已经存在该表格的导入
            $res = M('qishu_history')->where($where)->find();

             // 如果已经导入,则导入失败
            if(!empty($res)){
                unlink($file_name);// 删除excel文档
                $this->error('已经存在该表格,请删除后再导入');
            }

            // 查询数据总表是否有该期数和分校
            $where2['qishu'] = $_POST['qishu'];
            $where2['sid'] = $_POST['sid'];
            $sjzb['qishu'] = $_POST['qishu'];
            $sjzb['sid'] = $_POST['sid'];
            $sjzb[$tablename] = 2;
            $res2 = M('sjzb')->where($where2)->find();
            if($count != 1){
                if($res2['kxmxb'] != 2 && $_POST['tid'] != 5){
                    unlink($file_name);// 删除excel文档
                    $this->error('请先导入课消明细表');
                }
                if($res2['xyfyyjb'] != 2 && $_POST['tid'] != 7 &&  $_POST['tid'] != 5){
                    unlink($file_name);// 删除excel文档
                    $this->error('请先导入学员费用预警表');
                }
                if($res2['xyxxb'] != 2 && $_POST['tid'] == 3){
                    unlink($file_name);// 删除excel文档
                    $this->error('请先导入学员信息表');
                }
            }

            // 若查询到无记录则添加,否则就更新数据
            if(empty($res2)){
                M('sjzb')->add($sjzb);
            }else{
                M('sjzb')->where($where2)->save($sjzb);
            }
            $count = M('sjzb')->where($where2)->count();//判断是否是第一次提交
            $sjzb[$tablename] = 1;
            $qishu_id = M("qishu_history")->add($_POST);
            //判断是否是分表
            $new_tablename = $this->checkFenbiao($qishu_id,$tablename);
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
            if($tid == 15){
                $excel_data = $this->getExcelData2($objPHPExcel,$highestRow,$colsNum,$qishu_id);
            }else{
                // 获取excel里面的所有字段
                $ziduan = $this->getExcelZiduan($objPHPExcel,$colsNum);
                // 检测必须列
                $cha = $this->checkBixu($new_tablename,$ziduan);
                if(!empty($cha)){
                    $notice = implode(',',$cha);

                    // 删除数据总表和期数的记录
                    // --------------删除操作执行开始--------------
                    M("qishu_history")->where("id = ".$qishu_id)->delete();// 从qishu_history删除记录
                    unset($where);
                    $where['qishu'] = $_POST['qishu'];// 期数
                    $where['sid'] = $_POST['sid'];// 学校id
                    // 对应数据总表的该字段状态改为1,就是未导入
                    $temp[$tablename] = 1;
                    M('sjzb')->where($where)->save($temp);
                    unlink($file_name);// 删除存放的excel表
                    // --------------删除操作执行结束--------------
                    $this->error('缺少必须列'.$notice);
                }
                
                $newTemp = $this->getComment($new_tablename);// 如['学号'=>'xuehao',...]
                // dump($cha);die;
                // 获取excel里面除字段以外的数据
                $excel_data = $this->getExcelData($objPHPExcel,$highestRow,$tid,$qishu_id,$ziduan,$newTemp);
            }
            // dump($excel_data);
            // die;
            // 将获取数组插入到数据库相应的表里面
            // $res = M($tablename)->addAll($excel_data);
            $error = array();//异常名单
            //验证学号是否重复
            if($_POST['tid'] == 1 || $_POST['tid'] == 3){
                $xuehao = array();
                foreach($excel_data as $val){
                    if(in_array($val['xuehao'],$xuehao)){
                        $val['yichangbz'] = '学号重复';
                        $error[] = $val;
                    }else{
                        $xuehao[] = $val['xuehao'];
                    }
                }
            }
            $school_name = M('school')->where(array('id'=>$_POST['sid']))->getField('name');
            $nian = substr($_POST['qishu'],0,4);
            
            //验证学员信息表
            if($_POST['tid'] == 1){
                //获取课消明细表的学号
                $kxmxb_id = $this->getQishuId($_POST['qishu'],$_POST['sid'],5);
                $kxmxb_list = M('kxmxb_'.$nian)->field('xuehao')->where(array('suoshudd'=>$kxmxb_id))->select();
                $kxmxb = array();
                foreach($kxmxb_list as $val){
                    $kxmxb[] = $val['xuehao'];
                }
                //获取学员费用预警
                $xyfyyjb_id = $this->getQishuId($_POST['qishu'],$_POST['sid'],7);
                $xyfyyjb_list = M('xyfyyjb_'.$nian)->field('xuehao,shengyugmsl,shengyuzssl,feiyong')->where(array('suoshudd'=>$xyfyyjb_id))->select();
                //验证就读学校和年纪
                foreach($excel_data as $key=>$val){
                    if($val['jiuduxx'] == '' || $val['nianji'] == ''){
                        $val['yichangbz'] = '就读学校、年级为空';
                        $error[] = $val;
                        unset($list[$key]);
                    }
                    //判断是否是本月在读学生
                    if ($val['shoucixfrq'] && $val['zhuangtai'] == '在读' && $val['xiaoqu'] == $school_name && $val['shifouzxzrdjb'] != '是'){
                        if(!in_array($val['xuehao'],$kxmxb)){
                            $val['yichangbz'] = '本月无课销记录，请操作休学或退学';
                            $error[] = $val;
                        }
                        if($val['zhuangtai'] == '在读' || $val['zhuangtai'] == '休学'){
                            foreach($xyfyyjb_list as $vv){
                                if($val['xuehao'] == $vv['xuehao']){
                                    $val['shuliang'] += $vv['shengyugmsl'] + $vv['shengyuzssl'];
                                    $val['feiyong'] += $vv['feiyong'];
                                }
                            }
                            if($val['shuliang'] <= 0 && $val['feiyong'] <= 0 && $val['lengxing'] == ''){
                                $val['yichangbz'] = '该学员已无课次学费，请操作退学';
                                $error[] = $val;
                            }
                        }
                    }
                }
            }
            //验证班级学员信息表
            if($_POST['tid'] == 3){
                $xyxxb_id = $this->getQishuId($_POST['qishu'],$_POST['sid'],1);
                $xyxxb_list = M('xyxxb_'.$nian)->field('xuehao,xingming,zhuangtai,shoucixfrq,xiaoqu,shifouzxzrdjb')->where("suoshudd='$xyxxb_id' and xiaoqu='$school_name' and shoucixfrq != '' and shifouzxzrdjb != '是' and zhuangtai = '在读'")->select();
                $bjxyxxb = array();
                $xyxxb = array();
                foreach($xyxxb_list as $val){
                    $xyxxb[] = $val['xuehao'];
                }
                foreach($excel_data as $val){
                    $bjxyxxb[] = $val['xuehao'];
                    if(!in_array($val['xuehao'],$xyxxb)){
                        $val['yichangbz'] = '非本月在读学生，请在校管家操作分出班级';
                        $error[] = $val;
                    }
                }
                foreach($xyxxb_list as $val){
                    if(!in_array($val['xuehao'],$bjxyxxb)){
                        $val['yichangbz'] = '在读学生未在班级里，请在校管家操作分进班级';
                        $error[] = $val;
                    }
                }

            }
            //验证收据记录
            if($_POST['tid'] == 4){
                $cplx = array();
                $sjcplx = M('sjcplx')->field('xiangmu')->select();
                foreach($sjcplx as $val){
                    $val['xiangmu'] = str_replace('(','（',$val['xiangmu']);
                    $val['xiangmu'] = str_replace(')','）',$val['xiangmu']);
                    $cplx[] = $val['xiangmu'];
                }
                foreach($excel_data as $val){
                    $val['chanpinlx'] = str_replace('(','（',$val['chanpinlx']);
                    $val['chanpinlx'] = str_replace(')','）',$val['chanpinlx']);
                    $val['chanpinlx'] = str_replace(',','，',$val['chanpinlx']);
                    if(!in_array($val['chanpinlx'],$cplx) && !strpos($val['chanpinlx'],'，')){
                        $val['yichangbz'] = '收据类型未添加';
                        $error[] = $val;
                    }
                }
                
            }
            //验证课消明细
            if($_POST['tid'] == 5){
                $banjibh = M('banjibianhao')->field('jingdujb')->select();
                $bianhao = array();
                foreach($banjibh as $val){
                    $bianhao[] = $val['jingdujb'];
                }
                //班级&时间
                $banjisj = array();
                $banjisj2 = array();
                foreach($excel_data as $val){
                    $tmp = '';
                    $tmp = substr($val['banji'],0,3);
                    $tsp = $val['banji'].$val['shangkesj'];
                    if(!in_array($tmp,$bianhao)){
                        $banjisj[] = $tmp;
                        $val['yichangbz'] = $tmp.'班级编号未添加';
                        $error[] = $val;
                    }
                    if(!in_array($tsp,$banjisj)){
                        $banjisj[] = $tsp;
                        $banjisj2[ $tsp ]['shangkels'] = $val['shangkels'];
                        $banjisj2[ $tsp ]['zhujiao'] = $val['zhujiao'];
                        // $banjisj2[ $tsp ]['xingming'] = $val['xingming'];
                        // $banjisj2[ $tsp ]['xuehao'] = $val['xuehao'];
                        // $banjisj2[ $tsp ]['banji'] = $val['banji'];
                        // $banjisj2[ $tsp ]['shangkesj'] = $val['shangkesj'];
                    }else{
                        if($val['zhujiao'] != $banjisj2[$tsp]['zhujiao'] || $val['shangkels'] != $banjisj2[$tsp]['shangkels']){
                            $temp = explode($val['zhujiao']);
                            $temps = explode($banjisj2[$tsp]['zhujiao']);
                            if($val['shangkels'] != $banjisj2[$tsp]['shangkels']){
                                $val['yichangbz'] = '班级&时间，上课老师不一致';
                                $error[] = $val;
                            }elseif(($temp['0'] != $temps['0'] && $temp['0'] != $temps['1']) && ($temp['1'] != $temps['0'] && $temp['1'] != $temps['1'])){
                                $val['yichangbz'] = '班级&时间，助教老师不一致';
                                $error[] = $val;
                            }
                        }
                    }
                }
            }

            //验证开班明细表
            if($_POST['tid'] == 6){
                $banji = array();
                $kxmxb_id = $this->getQishuId($_POST['qishu'],$_POST['sid'],5);
                $kxmxb = M('kxmxb_'.$nian)->field('shangkesc,banji')->where(array('suoshudd'=>$kxmxb_id))->select(); 
                foreach($excel_data as $val){
                    $tmp = '';
                    $tmp = $val['jingjiangxs'] + $val['fanduxs'] + $val['waijiaoxs'];
                    if(!$val['jingjiangls']){
                        $val['yichangbz'] = '精讲老师不能为空';
                        $error[] = $val;
                    }
                    if(!$val['fanduls']){
                        $val['yichangbz'] = '泛读老师不能为空';
                        $error[] = $val;
                    }
                    if(!$val['waijiaols']){
                        $val['yichangbz'] = '外教老师不能为空';
                        $error[] = $val;
                    }
                    if($tmp != $val['shangkexss']){
                        $val['yichangbz'] = '上课时长和分配时间不一致';
                        $error[] = $val;
                    }
                    foreach($kxmxb as $vv){
                        if($vv['banji'] == $val['banjimc']){
                            $shangkesc = mb_substr($vv['shangkesc'],0,-2,'UTF-8');
                            if($shangkesc != $val['shangkexss']){
                                $val['yichangbz'] = '课消明细表的上课时长和开班明细表的上课时间不一致';
                                $error[] = $val;
                            }
                        }
                    }
                    if(in_array($val['banji'],$banji)){
                        $val['yichangbz'] = '班级名称重复';
                        $error[] = $val;
                    }else{
                        $banji[] = $val['banji'];
                    }
                }
            }
            //验证进出库明细
            if($_POST['tid'] == 34){
                $wpqd = M('wupinqd')->field('mingcheng')->select();
                $wupinqd = array();
                foreach($wpqd as $val){
                    $wupinqd[] = $val['mingcheng'];
                }
                foreach($excel_data as $val){
                    if(!in_array($val['mingcheng'],$wupinqd)){
                        $val['yichangbz'] = '物品清单未添加此名称';
                        $error[] = $val;
                    }
                }
            }
            if($error && $count != 1){
                M('qishu_history')->where(array('id'=>$qishu_id))->delete();
                M('sjzb')->where($where2)->save($sjzb);
                $this->yichangmd($error,$_POST['tid']);
                exit;
            }

            //获取分表年份表名
            foreach($excel_data as $v){
                M($new_tablename)->add($v);
            }


            // 位置不能移动,要等班级学员信息表执行完才有其$id_bjxyxxb
            // 校验导入表格
            // *****完成之后要加删除原导入数据
            // switch ($_POST['tid']) {
            //     case 1:
            //         $res = $this->checkXyxxb($_POST);
            //         if($res == 'error'){
            //             return 'error';
            //         }
            //     break;
            //     case 2:
            //         $res = $this->checkBjxxb($_POST);
            //         if($res == 'error'){
            //             return 'error';
            //         }
            //     break;
            //     case 3:
            //         $res = $this->checkBjxyxxb($_POST);
            //         if($res == 'error'){
            //             return 'error';
            //         }
            //     break;
            //     case 4:
            //         $res = $this->checkSjjlb($_POST);
            //         if($res == 'error'){
            //             return 'error';
            //         }
            //     break;
            //     case 24:
            //         $res = $this->checkSjmxb($_POST);
            //         if($res == 'error'){
            //             return 'error';
            //         }
            //     break;
                
            // }

            $this->success('导入成功！',__CONTROLLER__.'/index');//获得成功跳转的链接
        }else{
            $this->error("请选择上传的文件");
        }
    }

    //异常名单查看
    public function yichangmd($data,$tid){
        $list = array();
        if($tid == 1 || $tid == 3){
            $title = array('学号','姓名','状态','首次消费日期','校区','异常情况');
            foreach($data as $key=>$val){
                $list[$key]=array($val['xuehao'],$val['xingming'],$val['zhuangtai'],$val['shoucixfrq'],$val['xiaoqu'],$val['yichangbz']);
            }
        }
        if($tid == 6){
            $title = array('班级名称','上课时间段','上课时间','上课时长','精读小时','泛读小时','外教小时','异常情况');
            foreach($data as $key=>$val){
                $list[$key]=array($val['banjimc'],$val['shangkesjd'],$val['shangkesj'],$val['shangkesc'],$val['jingduxs'],$val['fanduxs'],$val['waijiaoxs'],$val['yichangbz']);
            }
        }
        if($tid == 5){
            $title = array('学号','姓名','班级','上课时间','上课老师','助教','异常情况');
            foreach($data as $key=>$val){
                $list[$key]=array($val['xuehao'],$val['xingming'],$val['banji'],$val['shangkesj'],$val['shangkels'],$val['zhujiao'],$val['yichangbz']);
            }
        }
        if($tid == 4){
            $title = array('缴费日期','收据号','学号','姓名','产品类型','异常情况');
            foreach($data as $key=>$val){
                $list[$key]=array($val['jiaofeirq'],$val['shoujuhao'],$val['xuehao'],$val['xingming'],$val['chanpinlx'],$val['yichangbz']);
            }
        }
        if($tid == 34){
            $title = array('日期','操作','仓库','类别','名称','金额','异常情况');
            foreach($data as $key=>$val){
                $list[$key]=array($val['riqi'],$val['couzuo'],$val['cangku'],$val['leibie'],$val['mingcheng'],$val['jine'],$val['yichangbz']);
            }
        }

        $this->assign('title',$title);
        $this->assign('list',$list);
        $this->adminDisplay('yichangmd');
    }

    //异常名单下载
    public function download_ycmd(){
        $data = $_POST['jsons'];
        $data = json_decode($data);

        vendor("PHPExcel.PHPExcel");// 引入phpexcel插件
        $filename = '异常名单';
        $template = __ROOT__.'Public/template/template_ycmd.xlsx';
        $objPHPExcel = \PHPExcel_IOFactory::load($template);     //加载excel文件,设置模板
        $objWriter = new \PHPExcel_Writer_Excel2007($objPHPExcel);  //设置保存版本格式
        //接下来就是写数据到表格里面去
        $objActSheet = $objPHPExcel->getActiveSheet();
        // $objActSheet->setCellValue('A1',$filename); 
        $i = 1;
        foreach($data as $val){
            $k = 0;
            foreach($val as $vv){
                $objActSheet->setCellValue(\PHPExcel_Cell::stringFromColumnIndex($k).$i,$vv);$k++;
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

    // 退费表专用上传方法
    public function dataUpload2() {
        if (!empty($_FILES)) {
            
            $name = explode('.',$_FILES['excel']['name'])[0];// 获取上传excel文档的文档名
            
            $tablename = $_POST["table_name"];  //excel表对应的数据表的表名
            // dump($tablename);die;
            // 获取对应数据库里面注释(与excel字段相同)和字段名拼接的数组
            $newTemp = $this->getComment($tablename);// 如['学号'=>'xuehao',...]
            // dump($newTemp);die;
            $tablenames = $this->getTabelnames(2,[2]);// common控制器的方法,默认获取表明首字母拼音,2获取中文名
            
            $tid = $_POST["tid"];  //表名对应的序号
            $sid = $_POST["sid"];
            $num = count(explode(explode('表',$tablenames[$tid])[0],$name));// 判断上传表格是否正确的条件,如果上传表名含有需要上传表格名的关键字段,即num>=2,若<2就是非正确的上传表名

            // $_POST['suoshufx'] = M('school')->where('id ='.$_POST['suoshufx'])->getField('name');//所属校区
            $_POST['uid'] = M('admin')->where('nicename ="'.$_POST['caozuoren'].'"')->getField('id');//操作人

            $config = array(
                'exts' => array('xlsx', 'xls'),
                'maxSize' => 3145728,
                'rootPath' => "./Public/",
                'savePath' => 'Uploads/',
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

            // 判断该是否已锁定
            // $map['qishu'] = $_POST['qishu'];
            // $map['sid'] = $_POST['sid'];
            // $status_xzjl = M('sjzb')->where($map)->getField('status_xzjl');
            // if($status_xzjl == 2){
            //     unlink($file_name);// 删除excel文档
            //     $this->error('上传功能已锁定,请解锁后继续','',10);
            // }

            $qishu_id = $this->getQishuId($_POST['qishu'],$_POST['sid'],13);
            if (!$qishu_id){
                $qishu_id = $this->insertQishuHistory(13,$_POST['qishu'],$_POST['sid']);
            }
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

            
            
            
            
            $excel_data = $this->getTuifeiExcelData($objPHPExcel,$highestRow,$colsNum,$qishu_id,$sid);
            // if(!$excel_data){
            //      unlink($file_name);
            //      $this->error("尚未进行扣款设置",'',10);
            // }
            // unlink($file_name);
            // dump($excel_data);
            // die;

            /* 可能要加个校验的方法 */

            // 将获取数组插入到数据库相应的表里面
            foreach($excel_data as $v){
                $where['xuehao'] = $v['xuehao'];
                $where['xuhao'] = $v['xuhao'];
                $where['suoshudd'] = $qishu_id;
                $res = M("tfb")->where($where)->find();
                $v['suoshudd'] = $qishu_id;
                if(!empty($res)){
                    M("tfb")->where($where)->save($v);
                }else{
                    M("tfb")->add($v);
                }
                
            }

            // 删除上传的文件
            unlink($file_name);

            $this->success('导入成功！',__MODULE__.'/TableCount/index');//获得成功跳转的链接
        }else{
            $this->error("请选择上传的文件");
        }
    }

    public function checkBixu($tablename,$ziduan){
        $bixu = $this->getComment($tablename);
        $bixu = array_flip(array_diff($bixu,['id','suoshudd','daorusj','shifouzxzrdjb']));
        $cha = array_diff($bixu,$ziduan);
        if(!empty($cha)){
            return $cha;
        }else{
            return false;
        }
    }

    // 判断学员信息表中的（校区）列为本校区，然后（状态）列为除去空白的，最后（就读学校）列和（年纪）列不能为空的
    public function getXyxxbYc($postData){
        $postData['tid'] = 1;
        $id_xyxxb = $this->getQishuId($postData['qishu'],$postData['sid'],1);
        $map['suoshudd'] = $id_xyxxb;
        $map['xiaoqu'] = $this->getInfo($postData['qishu'],$postData['sid'])['school'];
        $map['zhuangtai'] = '';
        $res_xyxxb = M('xyxxb')->field('id,suoshudd,daorusj',true)->where($map)->select();
        // dump($res_xyxxb);
        foreach($res_xyxxb as $v){
            if(empty($v['jiuduxx']) || empty($v['nianji'])){
                $list_error[] = $v;
            }
        }
        // dump($list_error);die;
        $arr['error'] = $list_error;
        $arr['postData'] = $postData;
        return $arr;
    }

    public function checkXyxxb($postData){
        $arr = $this->getXyxxbYc($postData);
        // dump($arr);die;
        
        if(!empty($arr['error'])){
            $this->assign('list_error',$arr['error']);
            $tbnames = array_flip(array_diff($this->getComment('xyxxb'),array('id','suoshudd','daorusj')));// array_diff第二个参数的数组里面写入不需要显示的字段
            // dump($arr['error']);die;
            $this->assign('tbnames',$tbnames);// 赋值数据集
            $this->assign('postData',$arr['postData']);
            $this->adminDisplay('table_xq_xyxxb_error');
            return 'error';
        }
    }

    // （班级信息表）的班级编码要进行判断，1：根据我们的班级编码结构进行判断，然后错误需要提示并生成excel表格下载，没有修改拒绝上传
    public function getBjxxbYc($postData){
        $jingdujb = [];
        $fandujb1 = [];
        $fandujb2 = [];
        $fandujb3 = [];
        $shifoutsb = [];
        $xueshengnj = [];
        // 获取编码表数据
        $data_bmb = M('banjibianhao')->field('id',true)->select();
        foreach($data_bmb as $v){
            if(!empty($v['jingdujb'])){
                $jingdujb[] = $v['jingdujb'];
            }
            if(!empty($v['fandujb1'])){
                $fandujb1[] = $v['fandujb1'];
            }
            if(!empty($v['fandujb2'])){
                $fandujb2[] = $v['fandujb2'];
            }
            if(!empty($v['fandujb3'])){
                $fandujb3[] = $v['fandujb3'];
            }
            if(!empty($v['shifoutsb'])){
                $shifoutsb[] = $v['shifoutsb'];
            }
            if(!empty($v['xueshengnj'])){
                $xueshengnj[] = $v['xueshengnj'];
            }
        }
        $shifoutsb = array_flip(array_flip($shifoutsb));
        $xueshengnj = array_flip(array_flip($xueshengnj));
        $fandujb = array_merge($fandujb1,$fandujb2,$fandujb3);

        $postData['tid'] = 2;
        $id_bjxxb = $this->getQishuId($postData['qishu'],$postData['sid'],2);
        $res_bjxxb = M('bjxxb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$id_bjxxb)->select();
        // dump($res_bjxxb);die;
        $list_banjimc = [];
        foreach($res_bjxxb as $v){
            $bjbm = $v['banjimc'];
            if(substr($bjbm,0,3) != mb_substr($bjbm,0,3)){
                continue;
            }
            $jingdu = substr($bjbm,0,3);
            $fandu = substr($bjbm,3,3);
            $tsb = substr($bjbm,6,1);
            $nianji = substr($bjbm,7,2);
            if(!in_array($jingdu,$jingdujb) || !in_array($fandu,$fandujb) || !in_array($tsb,$shifoutsb) || !in_array($nianji,$xueshengnj)){
                $list_banjimc[] = $v;
            }
            // if(!in_array($jingdu,$jingdujb)){
            //     $list_banjimc[] = $v;
            // }
        }
        
        $arr['banjimc'] = $list_banjimc;
        $arr['postData'] = $postData;
        return $arr;
    }

    public function checkBjxxb($postData){
        $arr = $this->getBjxxbYc($postData);
        // dump($arr['banjimc']);
        
        if(!empty($arr['banjimc'])){
            $this->assign('list_banjimc',$arr['banjimc']);
            $tbnames = array_flip(array_diff($this->getComment('bjxxb'),array('id','suoshudd','daorusj')));// array_diff第二个参数的数组里面写入不需要显示的字段
            $this->assign('tbnames',$tbnames);// 赋值数据集
            $this->assign('postData',$arr['postData']);
            $this->adminDisplay('table_xq_bjxxb_error');
            return 'error';
        }
    }

    // 获取班级学员信息表异常数据
    public function getBjxyxxbYc($postData){
        $postData['tid'] = 1;
        $id_xyxxb = $this->getQishuId($postData['qishu'],$postData['sid'],1);
        $data_xyxxb_zaidu = M('xyxxb')->field('xuehao')->where('suoshudd ='.$id_xyxxb.' and zhuangtai="在读"')->select();// 查询出学员信息表当月在读学员
        $data_xyxxb_tuixue = M('xyxxb')->field('xuehao')->where('suoshudd ='.$id_xyxxb.' and zhuangtai="已退学"')->select();
        $xiaoqu = $this->getInfo($postData['qishu'],$postData['sid'])['school'];// 查询出学员信息表当月已退学学员
        $data_xyxxb_benxiaozaidu = M('xyxxb')->field('xuehao')->where('suoshudd ='.$id_xyxxb.' and zhuangtai="在读" and xiaoqu ="'.$xiaoqu.'"')->select();// 查询出学员信息表当月在读学员
        $id_bjxyxxb = M('qishu_history')->where('qishu ='.$postData['qishu'].' and sid ='.$postData['sid'].' and tid=3')->getField('id');
        $data_bjxyxxb = M('bjxyxxb')->field('xuehao')->where('suoshudd ='.$id_bjxyxxb)->select();// 查询出当月班级学员信息表在班学员
        
        $list_xyxxb_zaidu = $this->getXuehao($data_xyxxb_zaidu);
        $list_xyxxb_tuixue = $this->getXuehao($data_xyxxb_tuixue);
        $list_bjxyxxb = $this->getXuehao($data_bjxyxxb);
        $list_xyxxb_benxiaozaidu = $this->getXuehao($data_xyxxb_benxiaozaidu);

        $weijinban = array_diff($list_xyxxb_benxiaozaidu,$list_bjxyxxb);// 本校在读而未出现在本校班级学员信息表的,未进班
        // dump($list_xyxxb_benxiaozaidu);
        // dump($list_bjxyxxb);
        // die;
        $zhuanchu = array_diff($list_xyxxb_zaidu,$list_xyxxb_benxiaozaidu);// 在读非本校的学员,即转出
        // 转出和已退学的合并
        $out = array_merge($list_tuixue,$zhuanchu);
        $out = array_flip(array_flip($out));// 去除重复
        $yichang = array_intersect($list_bjxyxxb,$out);// 既出现在本校班级学员信息表,又出现在转出和已退学里面的,异常
        if(empty($weijinban)){
            $weijinban = [];
        }
        if(empty($yichang)){
            $yichang = [];
        }
        $arr['yichang'] = $yichang;
        $arr['weijinban'] = $weijinban;
        $arr['postData'] = $postData;
        return $arr;
    }

    public function checkBjxyxxb($postData){
        $arr = $this->getBjxyxxbYc($postData);
        $id_xyxxb = $this->getQishuId($postData['qishu'],$postData['sid'],1);
        $yichang = $arr['yichang'];
        $weijinban = $arr['weijinban'];
        // dump($yichang);
        // dump($weijinban);
        // die;
        // dump($yichang);
        if(!empty($yichang) || !empty($weijinban)){
            // foreach($yichang as $v){
            //     $_yichang[] = '"'.$v.'"';
            // }
            // $yc = '['.implode(',',$_yichang).']';
            if(!empty($yichang)){
                if(isset($map)){
                    unset($map);
                }
                $map['xuehao'] = array('in',$yichang);
                $list_yichang = M('xyxxb')->field('id',true)->where($map)->where("suoshudd = ".$id_xyxxb)->select();
                $this->assign('list_yichang',$list_yichang);// 赋值数据集
            }
            if(!empty($weijinban)){
                if(isset($map)){
                    unset($map);
                }
                $map['xuehao'] = array('in',$weijinban);
                $list_weijinban = M('xyxxb')->field('id',true)->where($map)->where("suoshudd = ".$id_xyxxb)->select();
                $this->assign('list_weijinban',$list_weijinban);// 赋值数据集
            }
            
            // dump($id);
            $tbnames = array_flip(array_diff($this->getComment('xyxxb'),array('id','suoshudd','daorusj')));// array_diff第二个参数的数组里面写入不需要显示的字段
            
            $this->assign('tbnames',$tbnames);// 赋值数据集
            $this->assign('postData',$postData);
            // unlink($file_name);// 删除excel文档
            // --------------删除操作执行开始--------------
            // $id_del = M('qishu_history')->where('qishu ='.$postData['qishu'].' and sid='.$postData['sid'].' and tid=3')->getField('id');
            // $res1 = M($tablename)->where("suoshudd = ".$id_del)->delete();// 从表明里删除所属id对应的数据
            // $res2 = M("qishu_history")->where("id = ".$id_del)->delete();// 从qishu_history删除记录
            // unlink($filename);// 删除存放的excel表
    
            // // 对应数据总表的该字段状态改为1,就是未导入
            // if(isset($temp)){
            //     unset($temp);
            // }
            // $temp[$tablename] = 1;
            // M('sjzb')->where($where)->save($temp);
            // --------------删除操作执行结束--------------
            $this->adminDisplay('table_xq_error');
            return 'error';
        }
    }

    // 获取收据记录表异常数据
    public function getSjjlbYc($postData){
        $postData['tid'] = 4;
        $id_sjjlb = $this->getQishuId($postData['qishu'],$postData['sid'],4);
        $res_sjjlb = M('sjjlb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$id_sjjlb)->select();
        // dump($res_sjjlb);die;
        foreach($res_sjjlb as $v){
            $beizhu = $this->filterBeizhu($v['beizhu']);
            if(!$beizhu['status']){
                if($beizhu['error'] == 2){
                    $list_beizhu[] = $v;
                }elseif($beizhu['error'] == 3){
                    $list_beizhu2[] = $v;
                }
                
            }
            if($v['yejigsr'] == ''){
                $list_guishuren[] = $v;
            }
        }
        if(empty($list_beizhu)){
            $list_beizhu = [];
        }
        if(empty($list_beizhu2)){
            $list_beizhu2 = [];
        }
        if(empty($list_guishuren)){
            $list_guishuren = [];
        }
        $arr['beizhu'] = $list_beizhu;
        $arr['beizhu2'] = $list_beizhu2;
        $arr['guishuren'] = $list_guishuren;
        $arr['postData'] = $postData;
        return $arr;
    }

    // 渲染数据记录表异常页面
    public function checkSjjlb($postData){
        $arr = $this->getSjjlbYc($postData);
        // dump($list_beizhu);die;
        if(!empty($arr['beizhu']) || !empty($arr['beizhu2']) || !empty($arr['guishuren'])){
            if(!empty($arr['beizhu'])){
                $this->assign('list_beizhu',$arr['beizhu']);
            }
            if(!empty($arr['beizhu2'])){
                $this->assign('list_beizhu2',$arr['beizhu2']);
            }
            if(!empty($arr['guishuren'])){
                $this->assign('list_guishuren',$arr['guishuren']);
            }
            
            $tbnames = array_flip(array_diff($this->getComment('sjjlb'),array('id','suoshudd','daorusj')));// array_diff第二个参数的数组里面写入不需要显示的字段
            $this->assign('tbnames',$tbnames);// 赋值数据集
            $this->assign('postData',$arr['postData']);
            $this->adminDisplay('table_xq_sjjlb_error');
            return 'error';
        }
    }

    // 渲染数据记录表异常页面
    public function checkSjmxb($postData){

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
    public function getExcelData($objPHPExcel,$highestRow,$tid,$qishu_id,$ziduan,$newTemp){
        // 从第2行开始,到最后一行
        for($j=2;$j<=$highestRow;$j++){
            // 跳过空白行
            // 必须设置$col,否则会跳过所有
            foreach($ziduan as $k=>$v){// 遍历字段数组
                switch($tid){
                    case 1:
                        if($v == '学号'){// 设置字段为学号的列如果值为空就跳过,其他跟这个原理一样
                            $col = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($k).$j)->getValue();
                        }
                    break;
                    case 2:
                        if($v == '班级名称'){
                            $col = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($k).$j)->getValue();
                        }
                    break;
                    case 3:
                        if($v == '学号'){
                            $col = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($k).$j)->getValue();
                        }
                    break;
                    case 4:
                        if($v == '收据号'){
                            $col = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($k).$j)->getValue();
                        }
                    break;
                    case 24:
                        if($v == '收据号'){
                            $col = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($k).$j)->getValue();
                        }
                    break;
                    case 25:
                        if($v == '班级'){
                            $col = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($k).$j)->getValue();
                        }
                    break;
                    case 26:
                        if($v == '收据号'){
                            $col = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($k).$j)->getValue();
                        }
                    break;
                    case 27:
                        if($v == '学号'){
                            $col = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($k).$j)->getValue();
                        }
                    break;
                    case 28:
                        if($v == '学号'){
                            $col = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($k).$j)->getValue();
                        }
                    break;
                    case 5:
                        if($v == '学号'){
                            $col = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($k).$j)->getValue();
                        }
                    break;
                    case 6:
                        if($v == '班级名称'){
                            $col = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($k).$j)->getValue();
                        }
                    break;
                    case 7:
                        if($v == '学号'){
                            $col = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($k).$j)->getValue();
                        }
                    break;
                    case 14:
                        if($v == '姓名'){
                            $col = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($k).$j)->getValue();
                        }
                    break;
                    case 16:
                        if($v == '证件号'){
                            $col = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($k).$j)->getValue();
                        }
                    break;
                    case 34:
                        if($v == '日期'){
                            $col = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($k).$j)->getValue();
                        }
                    break;
                     case 36:
                        if($v == '学号'){
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
                $data['suoshudd'] = $qishu_id;  //所属订单id
                $data['daorusj'] = date('Y-m-d H:i:s');
            }
            // dump($data);
            // die;
            $list[] = $data;
            unset($data);
        }
        // dump($list);
        return $list;
    }

    public function getExcelData2($objPHPExcel,$highestRow,$colsNum,$qishu_id){

        // 从第2行开始,到最后一行
        for($j=2;$j<=$highestRow;$j++){
            $col = trim($objPHPExcel->getActiveSheet()->getCell('C'.$j)->getValue());
            // 上面得出$col的值如果是空就跳过
            if(empty(trim($col))){
                continue;
            }
            for($i=0;$i<=$colsNum;$i++){
                // 自动判断单元格是时间格式
                $cell = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j);
                $value = $cell->getValue();

                if(is_object($value)){
                    $value= $value->__toString();
                }

                // $cell->getCoordinate()当前单元格,如A1

                // 自动识别单元格为日期格式
                if($cell->getDataType()==\PHPExcel_Cell_DataType::TYPE_NUMERIC){
                    $cellstyleformat=$objPHPExcel->getActiveSheet()->getStyle( $cell->getCoordinate() )->getNumberFormat();
                    $formatcode=$cellstyleformat->getFormatCode();
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
                    }
                }



                // $data[$j] = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j)->getValue();


                // 如果开头是'='的数据就是公式,使用getOldCalculatedValue()函数读取公式后的值
                if(substr($value,0,1) == '='){
                    $value = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j)->getOldCalculatedValue();
                }

                switch($i){
                    case 0:
                        $data['bumen'] = $value;
                    break;
                    case 1:
                        $data['xingming'] = $value;
                    break;
                    case 2:
                        $data['shenfenzhm'] = $value;
                    break;
                    case 3:
                        $data['danweihj'] = $value;
                    break;
                    case 4:
                        $data['gerenhj'] = $value;
                    break;
                    case 5:
                        $data['yingjiaoje'] = $value;
                    break;
                    case 6:
                        $data['nashuirmc'] = $value;
                    break;
                    case 7:
                        $data['shuifeisssq'] = $value;
                    break;
                }

                $data['suoshudd'] = $qishu_id;  //所属订单id
                $data['daorusj'] = date('Y-m-d H:i:s');
            }

            $list[] = $data;
            unset($data);

        }
        // dump($list);die;
        return $list;
    }

    public function getTuifeiExcelData_bak($objPHPExcel,$highestRow,$colsNum,$qishu_id,$sid){

        // 从第3行开始,到最后一行
        for($j=3;$j<=$highestRow;$j++){

            $col = trim($objPHPExcel->getActiveSheet()->getCell('E'.$j)->getValue());
            // 上面得出$col的值如果是空就跳过
            if(empty(trim($col))){
                continue;
            }
            for($i=0;$i<=$colsNum;$i++){
                // 自动判断单元格是时间格式
                $cell = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j);
                $value = $cell->getValue();

                if(is_object($value)){
                    $value= $value->__toString();
                }

                // $cell->getCoordinate()当前单元格,如A1

                // 自动识别单元格为日期格式
                if($cell->getDataType()==\PHPExcel_Cell_DataType::TYPE_NUMERIC){
                    $cellstyleformat=$objPHPExcel->getActiveSheet()->getStyle( $cell->getCoordinate() )->getNumberFormat();
                    $formatcode=$cellstyleformat->getFormatCode();
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
                    }
                }



                // $data[$j] = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j)->getValue();


                // 如果开头是'='的数据就是公式,使用getOldCalculatedValue()函数读取公式后的值
                if(substr($value,0,1) == '='){
                    $value = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j)->getValue();
                }

                

                switch($i){
                    case 0:
                        $data['xuhao'] = $value;
                    break;
                    case 1:
                        $data['yuefen'] = $value;
                    break;
                    case 2:
                        $data['fenxiao'] = $value;
                    break;
                    case 3:
                        $data['tuifeilx'] = $value;
                    break;
                    case 4:
                        $data['xuehao'] = $value;
                    break;
                    case 5:
                        $data['xingming'] = $value;
                    break;
                    case 6:
                        $data['sicikqh'] = $value;
                    break;
                    case 7:
                        $data['jiesuanlx'] = $value;
                    break;
                    case 8:
                        $data['banjibh'] = $value;
                    break;
                    case 9:
                        $data['bencitfkcdjfsj'] = $value;
                    break;
                    case 10:
                        $data['shenqingtfsj'] = $value;
                    break;
                    case 11:
                        $data['tuifeikc'] = $value;
                    break;
                    case 12:
                        $data['dingjin'] = $value;
                    break;
                    case 13:
                        $data['tuixuefje'] = $value;
                    break;
                    case 14:
                        $data['jiaocaifei'] = $value;
                    break;
                    // case 15:
                    //     $data['xiaoji'] = (double)$data['dingjin']+(double)$data['tuixuefje']+(double)$data['jiaocaifei'];
                    // break;
                    case 16:
                        $data['beizhu'] = $value;
                    break;
                    case 17:
                        $data['jiazhangxm'] = $value;
                    break;
                    case 18:
                        $data['lianxidh'] = $value;
                    break;
                    case 19:
                        $data['kaihuhang'] = $value;
                    break;
                    case 20:
                        $data['yinhangzh'] = $value;
                    break;
                    case 21:
                        $data['tuifeiyy'] = $value;
                    break;
                    case 22:
                        $data['dianhuaqr'] = $value;
                    break;
                    case 23:
                        $data['jingdulsxm'] = $value;
                    break;
                    // case 24:
                    //     if($data['sicikqh'] == '四次课前'){
                    //         $data['jingdulsykje'] = $koukuan['jingduls1'];
                    //     }elseif($data['sicikqh'] == '四次课后'){
                    //         $data['jingdulsykje'] = $koukuan['jingduls2'];
                    //     }
                    // break;
                    case 25:
                        $data['jingdulsqr'] = $value;
                    break;
                    case 26:
                        $data['fandulsxm'] = $value;
                    break;
                    // case 27:
                    //     if($data['sicikqh'] == '四次课前'){
                    //         $data['fandulsykje'] = $koukuan['fanduls1'];
                    //     }elseif($data['sicikqh'] == '四次课后'){
                    //         $data['fandulsykje'] = $koukuan['fanduls2'];
                    //     }
                    // break;
                    case 28:
                        $data['fandulsqr'] = $value;
                    break;
                    case 29:
                        $data['jiaoxuezzxm'] = $value;
                    break;
                    // case 30:
                    //     if($data['sicikqh'] == '四次课前'){
                    //         $data['jiaoxuezzykje'] = $koukuan['jiaoxuezzykje1'];
                    //     }elseif($data['sicikqh'] == '四次课后'){
                    //         $data['jiaoxuezzykje'] = $koukuan['jiaoxuezzykje2'];
                    //     }
                    // break;
                    case 31:
                        $data['jiaoxuezzqr'] = $value;
                    break;
                    case 32:
                        $data['jiaowuzrxm'] = $value;
                    break;
                    // case 33:
                    //     if($data['sicikqh'] == '四次课前'){
                    //         $data['jiaowuzrykje'] = $koukuan['jiaowuzr1'];
                    //     }elseif($data['sicikqh'] == '四次课后'){
                    //         $data['jiaowuzrykje'] = $koukuan['jiaowuzr2'];
                    //     }
                    // break;
                    case 34:
                        $data['jiaowuzrqr'] = $value;
                    break;
                    case 35:
                        $data['jiaoxuefxzxm'] = $value;
                    break;
                    // case 36:
                    //     if($data['sicikqh'] == '四次课前'){
                    //         $data['jiaoxuefxzykje'] = $koukuan['jiaoxuefxz1'];
                    //     }elseif($data['sicikqh'] == '四次课后'){
                    //         $data['jiaoxuefxzykje'] = $koukuan['jiaoxuefxz2'];
                    //     }
                    // break;
                    case 37:
                        $data['jiaoxuefxzqr'] = $value;
                    break;
                    case 38:
                        $data['zhaoshengzrxm'] = $value;
                    break;
                    case 39:
                        $data['zhiwei'] = $value;
                    break;
                    // case 40:
                    //     $data['zhaoshengzrykje'] = $value;
                    // break;
                    case 41:
                        $data['zhaoshengzrqr'] = $value;
                    break;
                    case 42:
                        $data['zhaoshengfxzxm'] = $value;
                    break;
                    // case 43:
                    //     $data['zhaoshengfxzykje'] = $value;
                    // break;
                    case 44:
                        $data['zhaoshengfxzqr'] = $value;
                    break;
                    case 45:
                        $data['dianzhangzjxm'] = $value;
                    break;
                    // case 46:
                    //     $data['dianzhangzjykje'] = $value;
                    // break;
                    case 47:
                        $data['dianzhangzjqr'] = $value;
                    break;
                    case 48:
                        $data['quyuzjxm'] = $value;
                    break;
                    // case 49:
                    //     $data['quyuzjykje'] = $value;
                    // break;
                    case 50:
                        $data['quyuzjqr'] = $value;
                    break;
                    // case 51:
                    //     $data['koukuanhj'] = $value;
                    // break;
                    
                }
            }
            
            $data['xiaoji'] = (double)$data['dingjin']+(double)$data['tuixuefje']+(double)$data['jiaocaifei'];
            $koukuan = M('koukuan')->where('sid ='.$sid)->find();
            if(empty($koukuan)){
                return false;
            }

            // 生成数据初始化
            $data['jingdulsykje'] = null;
            $data['fandulsykje'] = null;
            $data['jiaoxuezzykje'] = null;
            $data['jiaowuzrykje'] = null;
            $data['jiaoxuefxzykje'] = null;
            $data['zhaoshengzrykje'] = null;
            $data['zhaoshengfxzykje'] = null;
            $data['dianzhangzjykje'] = null;
            $data['quyuzjykje'] = null;

            // 4次课前后对应的扣款
            if($data['sicikqh'] == '4次课前'){
                if(!empty($data['jingdulsyxm'])){
                    $data['jingdulsykje'] = $koukuan['jingduls1'];
                }
                if(!empty($data['fandulsxm'])){
                    $data['fandulsykje'] = $koukuan['fanduls1'];
                }
                if(!empty($data['jiaoxuezzxm'])){
                    $data['jiaoxuezzykje'] = $koukuan['jiaoxuezz1'];
                }
                if(!empty($data['jiaowuzrxm'])){
                    $data['jiaowuzrykje'] = $koukuan['jiaowuzr1'];
                }
                if(!empty($data['jiaoxuefxzxm'])){
                    $data['jiaoxuefxzykje'] = $koukuan['jiaoxuefxz1'];
                }
            }elseif($data['sicikqh'] == '4次课后'){
                if(!empty($data['jingdulsyxm'])){
                    $data['jingdulsykje'] = $koukuan['jingduls2'];
                }
                if(!empty($data['fandulsxm'])){
                    $data['fandulsykje'] = $koukuan['fanduls2'];
                }
                if(!empty($data['jiaoxuezzxm'])){
                    $data['jiaoxuezzykje'] = $koukuan['jiaoxuezz2'];
                }
                if(!empty($data['jiaowuzrxm'])){
                    $data['jiaowuzrykje'] = $koukuan['jiaowuzr2'];
                }
                if(!empty($data['jiaoxuefxzxm'])){
                    $data['jiaoxuefxzykje'] = $koukuan['jiaoxuefxz2'];
                }
            }

            // 招生顾问应扣
            // =IF(OR(D3="退差额",L3="初三",L3="高一",L3="高二",L3="高三"),0,IF(H3="非学习卡",IF(OR(AN3="招生主任",AN3="招生副校长"),(M3+N3)*5%,(M3+N3)*4%),VLOOKUP(H3,CS:CT,2,0)*(M3+N3)))
            $duiyingbl = array('1期秒杀'=>0.2,'买三送二'=>0.08,'一年国际会员'=>0.12,'二年国际会员'=>0.1,'三年拼单会员'=>0.1,'五年国际会员'=>0.12,'预定游学优惠读'=>0.12,'预定游学免费读'=>0.05,'创始会员'=>0.05);
            if(in_array($data['tuifeikc'],['高一','高二','高三']) || $data['tuifeilx'] == '退差额'){
                if(!empty($data['zhaoshengzrxm'])){
                    $data['zhaoshengzrykje'] = 0;
                }
            }else{
                if($data['jiesuanlx'] == '非学习卡'){
                    if(in_array($data['zhiwei'],['招生主任','招生副校长'])){
                        if(!empty($data['zhaoshengzrxm'])){
                            $data['zhaoshengzrykje'] = ($data['dingjin']+$data['tuixuefje'])*5/100;
                        }
                    }else{
                        if(!empty($data['zhaoshengzrxm'])){
                            $data['zhaoshengzrykje'] = ($data['dingjin']+$data['tuixuefje'])*4/100;
                        }
                    }
                }else{
                    if(!empty($data['zhaoshengzrxm'])){
                        $data['zhaoshengzrykje'] = ($data['dingjin']+$data['tuixuefje'])*$duiyingbl[$data['jiesuanlx']];
                    }
                }
            }

            // 招生副校长应扣
            // =IF(OR(D3="退差额",L3="初三",L3="高一",L3="高二",L3="高三"),0,(M3+N3)*1%)
            if(in_array($data['tuifeikc'],['初三','高一','高二','高三']) || $data['tuifeilx'] == '退差额'){
                if(!empty($data['zhaoshengfxzxm'])){
                    $data['zhaoshengfxzykje'] = 0;
                }
            }else{
                if(!empty($data['zhaoshengfxzxm'])){
                    $data['zhaoshengfxzykje'] = ($data['dingjin']+$data['tuixuefje'])*1/100;
                }
            }

            // 店长总监与区域总监应扣
            if(!empty($data['dianzhangzjxm'])){
                $data['dianzhangzjykje'] = $data['tuixuefje']*0.025;
            }
            if(!empty($data['quyuzjxm'])){
                $data['quyuzjykje'] = $data['tuixuefje']*0.025;
            }
            // 扣款合计
            $data['koukuanhj'] = $data['jingdulsykje']+$data['fandulsykje']+$data['jiaoxuezzykje']+$data['jiaowuzrykje']+$data['jiaoxuefxzykje']+$data['zhaoshengzrykje']+$data['zhaoshengfxzykje']+$data['dianzhangzjykje']+$data['quyuzjykje'];

            $data['suoshudd'] = $qishu_id;  //所属订单id
            $data['daorusj'] = date('Y-m-d H:i:s');
            $list[] = $data;
            unset($data);

        }
        // dump($list);die;
        return $list;
    }

    public function getTuifeiExcelData($objPHPExcel,$highestRow,$colsNum,$qishu_id,$sid){

        // 从第3行开始,到最后一行
        for($j=3;$j<=$highestRow;$j++){

            $col = trim($objPHPExcel->getActiveSheet()->getCell('E'.$j)->getValue());
            // 上面得出$col的值如果是空就跳过
            if(empty(trim($col))){
                continue;
            }
            for($i=0;$i<=$colsNum;$i++){
                // 自动判断单元格是时间格式
                $cell = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j);
                $value = $cell->getValue();

                if(is_object($value)){
                    $value= $value->__toString();
                }

                // $cell->getCoordinate()当前单元格,如A1

                // 自动识别单元格为日期格式
                if($cell->getDataType()==\PHPExcel_Cell_DataType::TYPE_NUMERIC){
                    $cellstyleformat=$objPHPExcel->getActiveSheet()->getStyle( $cell->getCoordinate() )->getNumberFormat();
                    $formatcode=$cellstyleformat->getFormatCode();
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
                    }
                }



                // $data[$j] = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j)->getValue();


                // 如果开头是'='的数据就是公式,使用getOldCalculatedValue()函数读取公式后的值
                if(substr($value,0,1) == '='){
                    $value = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j)->getOldCalculatedValue();
                }

                

                switch($i){
                    case 0:
                        $data['xuhao'] = $value;
                    break;
                    case 1:
                        $data['yuefen'] = $value;
                    break;
                    case 2:
                        $data['fenxiao'] = $value;
                    break;
                    case 3:
                        $data['tuifeilx'] = $value;
                    break;
                    case 4:
                        $data['xuehao'] = $value;
                    break;
                    case 5:
                        $data['xingming'] = $value;
                    break;
                    case 6:
                        $data['nianji'] = $value;
                    break;
                    case 7:
                        $data['shifouxxkjs'] = $value;
                    break;
                    case 8:
                        $data['jiesuanlx'] = $value;
                    break;
                    case 9:
                        $data['banjibh'] = $value;
                    break;
                    case 10:
                        $data['bencitfkcdjfsj'] = $value;
                    break;
                    case 11:
                        $data['shenqingtfsj'] = $value;
                    break;
                    case 12:
                        $data['tuifeikc'] = $value;
                    break;
                    case 13:
                        $data['dingjin'] = $value;
                    break;
                    case 14:
                        $data['tuixuefje'] = $value;
                    break;
                    case 15:
                        $data['jiaocaifei'] = $value;
                    break;
                    //小计
                    case 16:
                        $data['xiaoji'] = $value;
                    break;
                    case 17:
                        $data['beizhu'] = $value;
                    break;
                    case 18:
                        $data['jiazhangxm'] = $value;
                    break;
                    case 19:
                        $data['lianxidh'] = $value;
                    break;
                    case 20:
                        $data['kaihuhang'] = $value;
                    break;
                    case 21:
                        $data['yinhangzh'] = $value;
                    break;
                    case 22:
                        $data['tuifeiyy'] = $value;
                    break;
                    case 23:
                        $data['dianhuaqr'] = $value;
                    break;
                    case 24:
                        $data['zhaoshenggwxm'] = $value;
                    break;
                    case 25:
                        $data['zhaoshenggwzw'] = $value;
                    break;
                    case 26:
                        //应扣金额1
                        $data['zhaoshenggwykje'] = $value;
                    break;
                    case 27:
                        $data['jingdulsxm'] = $value;
                    break;
                    case 28:
                        //应扣金额2
                        $data['jingdulsykje'] = $value;
                    break;
                    case 29:
                        $data['fandulsxm'] = $value;
                    break;
                    case 30:
                        //应扣金额3
                        $data['fandulsykje'] = $value;
                    break;
                    case 31:
                        $data['jiaowuzrxm'] = $value;
                    break;
                    case 32:
                        //应扣金额4
                        $data['jiaowuzrykje'] = $value;
                    break;
                    case 33:
                        $data['zhaoshengfxzxm'] = $value;
                    break;
                    case 34:
                        //应扣金额5
                        $data['zhaoshengfxzje'] = $value;
                    break;
                    case 35:
                        $data['dianzhangzjxzxm'] = $value;
                    break;
                    case 36:
                        //应扣金额6
                        $data['dianzhangzjxzje'] = $value;
                    break;
                    case 37:
                        $data['quyujxzjxm'] = $value;
                    break;
                    case 38:
                        //应扣金额7
                        $data['quyujxzjje'] = $value;
                    break;
                    case 39:
                        $data['quyuzjxm'] = $value;
                    break;
                    case 40:
                    //      应扣金额8
                        $data['quyuzjykje'] = $value;
                    break;
                    case 41:
                        //扣款合计
                        $data['koukuanhj'] = $value;
                    break;
                }
            }
            // $koukuan = M('koukuan')->where('sid ='.$sid)->find();
            // if(empty($koukuan)){
            //     return false;
            // }

            $data['suoshudd'] = $qishu_id;  //所属订单id
            $data['daorusj'] = date('Y-m-d H:i:s');
            $list[] = $data;
            unset($data);

        }
        // dump($list);die;
        return $list;
    }

    public function getExcelData3($objPHPExcel,$highestRow,$colsNum,$qishu_id){
        
        // 从第2行开始,到最后一行
        for($j=2;$j<=$highestRow;$j++){
            $col = trim($objPHPExcel->getActiveSheet()->getCell('C'.$j)->getValue());
            // 上面得出$col的值如果是空就跳过
            if(empty(trim($col))){
                continue;
            }
            for($i=0;$i<=$colsNum;$i++){
                // 自动判断单元格是时间格式
                $cell = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j);
                $value = $cell->getValue();

                if(is_object($value)){
                    $value= $value->__toString();
                }

                // $cell->getCoordinate()当前单元格,如A1

                // 自动识别单元格为日期格式
                if($cell->getDataType()==\PHPExcel_Cell_DataType::TYPE_NUMERIC){
                    $cellstyleformat=$objPHPExcel->getActiveSheet()->getStyle( $cell->getCoordinate() )->getNumberFormat();
                    $formatcode=$cellstyleformat->getFormatCode();
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
                    }
                }



                // $data[$j] = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j)->getValue();


                // 如果开头是'='的数据就是公式,使用getOldCalculatedValue()函数读取公式后的值
                if(substr($value,0,1) == '='){
                    $value = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j)->getOldCalculatedValue();
                }

                switch($i){
                    case 0:
                        $data['bumen'] = $value;
                    break;
                    case 1:
                        $data['xingming'] = $value;
                    break;
                    case 2:
                        $data['shenfenzhm'] = $value;
                    break;
                    case 3:
                        $data['danweihj'] = $value;
                    break;
                    case 4:
                        $data['gerenhj'] = $value;
                    break;
                    case 5:
                        $data['yingjiaoje'] = $value;
                    break;
                    case 6:
                        $data['nashuirmc'] = $value;
                    break;
                    case 7:
                        $data['shuifeisssq'] = $value;
                    break;
                }

                $data['suoshudd'] = $qishu_id;  //所属订单id
                $data['daorusj'] = date('Y-m-d H:i:s');
            }

            $list[] = $data;
            unset($data);

        }
        // dump($list);die;
        return $list;
    }

    //彻底删除
    public function del() {
        if(isset($_GET['id'])){
            $id = (int)$_GET['id'];// 订单id
        }else{
            $id = M('qishu_history')->where($_GET)->getField('id');
        }
        $tid = $_GET['tid'];// 表格id
        $where['qishu'] = $_GET['qishu'];// 期数
        $where['sid'] = $_GET['sid'];// 学校id
        $status_xz = M('sjzb')->where($where)->getField('status_xz');// 获取数据总表的行政状态
        if($status_xz == 2){// 如果行政状态为2,就是已经提交给行政经理,不允许操作,直接提示删除失败
            $arr['status'] = false;
            $arr['info'] = '表格已提交,删除失败';
            $this->ajaxReturn($arr);
        }
        $filename = M('qishu_history')->where('id ='.$id)->getField('filename');// 从qishu_history里面拿出excel表的存放路径
        $tablename = M("table_name")->where("id = ".$tid)->getField("table_name");// 从table_name里面取出相应的表名(拼音)

        // --------------删除操作执行开始--------------
        $tablename_fenbiao = $this->checkFenbiao($id,$tablename);
        $res1 = M($tablename_fenbiao)->where("suoshudd = ".$id)->delete();// 从表明里删除所属id对应的数据
        $res2 = M("qishu_history")->where("id = ".$id)->delete();// 从qishu_history删除记录
        unlink($filename);// 删除存放的excel表

        // 对应数据总表的该字段状态改为1,就是未导入
        $temp[$tablename] = 1;
        M('sjzb')->where($where)->save($temp);
        // --------------删除操作执行结束--------------

        // 返回删除成功信息
        $arr['status'] = true;
        $arr['info'] = '删除成功';
        $this->ajaxReturn($arr);
    }

    // 删除总表行操作(重写)
    public function delRow(){
        $tablenames = $this->getTabelnames();// 获取序号和导入表名对应的一维数组
        $field = implode(',',$tablenames);// 组成筛选条件
        $data = M('sjzb')->field($field)->where($_GET)->find();// 获取表格导入情况
        // 若所有表格导入再进行操作
        $count = 0;
        $i = 1;
        // 计算出所有上传表格的状态,表格上传状态为2,若所有表格上传,即是2*7=14,所有$count=14是左右表格都上传的状态
        foreach($data as $v){
           $count += $v;
           $i++;
        }
        if($count == 15){
            // 删除此行在sjzb的记录
            M('sjzb')->where($_GET)->delete();

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

}
?>
