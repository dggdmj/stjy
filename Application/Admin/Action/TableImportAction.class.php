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
                    'name' => '学习卡额度表导入',
                    'url' => U('/TableImport/tableList/tid/14'),
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
        $school_id = explode(",",$temp['school_id']);
        $map['sid'] = array('in',$school_id);// 查询条件
        $data = M('sjzb'); // 实例化对象
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
        $count = $data->where($map)->count();// 查询满足要求的总记录数
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

        // 查询该学校是否需要

        $this->assign('list',$list);// 赋值数据集
        $this->assign('fpage',$show);// 赋值分页输出
        $this->assign('rid',$rid);// 赋值角色id
        $this->assign('arr',$arr);
        $this->adminDisplay();
    }
    
    public function index_xq(){
        // dump($_GET);
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
        $school_id = explode(",",$temp['school_id']);
        $map['sid'] = array('in',$school_id);// 查询条件

        $tid = $_GET['tid'];//获取表格类型id
        $data = M('qishu_history'); // 实例化对象
        $count = $data->where($map)->where("tid = ".$tid)->count();// 查询满足要求的总记录数
        $Page = new \Think\Page($count,15);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $list = $data->join('LEFT JOIN stjy_table_name ON stjy_qishu_history.tid=stjy_table_name.xuhao')->join('LEFT JOIN stjy_admin ON stjy_qishu_history.uid=stjy_admin.id')->join('LEFT JOIN stjy_school ON stjy_qishu_history.sid=stjy_school.id')->field('stjy_qishu_history.*,stjy_admin.nicename,stjy_school.name as school_name,stjy_school.id as sid,stjy_table_name.name,stjy_table_name.table_name')->where($map)->where("tid = ".$tid)->order('stjy_qishu_history.qishu desc')->limit($Page->firstRow.','.$Page->listRows)->select();
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
        $list = M($tablename)->field('id',true)->where("suoshudd = ".$id)->select();
        // dump($id);
        $tbnames = array_flip(array_diff($this->getComment($tablename),array('id','suoshudd','daorusj')));// array_diff第二个参数的数组里面写入不需要显示的字段
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
        $suoshuxq = $temp['school_id'];// 操作人的所属校区
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

    //数据导入
    public function dataUpload() {
        if (!empty($_FILES)) {
//             dump($_FILES);die;
            $name = explode('.',$_FILES['excel']['name'])[0];// 获取上传excel文档的文档名

            $tablename = $_POST["table_name"];  //excel表对应的数据表的表名
            // dump($tablename);die;
            // 获取对应数据库里面注释(与excel字段相同)和字段名拼接的数组
            $newTemp = $this->getComment($tablename);// 如['学号'=>'xuehao',...]
            // dump($newTemp);die;
            $tablenames = $this->getTabelnames(2,[1,3,4]);// common控制器的方法,默认获取表明首字母拼音,2获取中文名

            $tid = $_POST["tid"];  //表名对应的序号

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

            // dump($tablename);die;

            //在qishu_history中增加
            $_POST["filename"] = $file_name;
            $where['tid'] = $_POST['tid'];
            $where['qishu'] = $_POST['qishu'];
            $where['sid'] = $_POST['sid'];
            $where2['qishu'] = $_POST['qishu'];
            $where2['sid'] = $_POST['sid'];
            $sjzb['qishu'] = $_POST['qishu'];
            $sjzb['sid'] = $_POST['sid'];
            $sjzb[$tablename] = 2;
            // 查询是否已经存在该表格的导入
            $res = M('qishu_history')->where($where)->find();
            // 查询数据总表是否有该期数和分校
            $res2 = M('sjzb')->where($where2)->find();
            // 若查询到无记录则添加,否则就更新数据
            if(empty($res2)){
                M('sjzb')->add($sjzb);
            }else{
                M('sjzb')->where($where2)->save($sjzb);
            }
            // 如果已经导入,则导入失败
            if(!empty($res)){
                unlink($file_name);// 删除excel文档
                $this->error('已经存在该表格,请删除后再导入');
            }
            $qishu_id = M("qishu_history")->add($_POST);

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
                $cha = $this->checkBixu($tablename,$ziduan);
                
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
                // dump($cha);die;
                // 获取excel里面除字段以外的数据
                $excel_data = $this->getExcelData($objPHPExcel,$highestRow,$tid,$qishu_id,$ziduan,$newTemp);
            }
            // dump($excel_data);
            // die;
            // 将获取数组插入到数据库相应的表里面
            // $res = M($tablename)->addAll($excel_data);
            foreach($excel_data as $v){
                M($tablename)->add($v);
            }

            // 位置不能移动,要等班级学员信息表执行完才有其$id_bjxyxxb
            // 校验导入表格
            // *****完成之后要加删除原导入数据
            switch ($_POST['tid']) {
                case 1:
                    $res = $this->checkXyxxb($_POST);
                    if($res == 'error'){
                        return 'error';
                    }
                break;
                case 2:
                    $res = $this->checkBjxxb($_POST);
                    if($res == 'error'){
                        return 'error';
                    }
                break;
                case 3:
                    $res = $this->checkBjxyxxb($_POST);
                    if($res == 'error'){
                        return 'error';
                    }
                break;
                case 4:
                    $res = $this->checkSjjlb($_POST);
                    if($res == 'error'){
                        return 'error';
                    }
                break;
                
            }

            $this->success('导入成功！',__CONTROLLER__.'/index');//获得成功跳转的链接
        }else{
            $this->error("请选择上传的文件");
        }
    }

    public function checkBixu($tablename,$ziduan){
        $bixu = $this->getComment($tablename);
        $bixu = array_flip(array_diff($bixu,['id','suoshudd','daorusj']));
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
                        $value=\PHPExcel_Style_NumberFormat::toFormattedString($value,$formatcode);
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
        $res1 = M($tablename)->where("suoshudd = ".$id)->delete();// 从表明里删除所属id对应的数据
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

    // 删除总表行操作
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
        if($count == 8){
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
