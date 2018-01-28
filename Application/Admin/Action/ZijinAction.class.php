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



















