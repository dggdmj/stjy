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
	
	public function zijinHuizongQishu(){
		$intQishu = intval($_GET['qishu']);
		
		if($intQishu>0){
			$listSF = M('shoufei_info')->where(" intQiShu = '".$intQishu."'" )->order('id asc')->select();

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
					$listQishu_HZ[$Value["id"]][$ValueA["id"]]=M('shoufei_info')->field(" sum(`douSF`) as `douSF_qs`, sum(`douSFHJ`) as `douSFHJ_qs`, sum(`douXJSR`) as `douXJSR_qs`, sum(`douXXK`) as `douXXK_qs`, sum(`douRZK`) as `douRZK_qs`, sum(`douQTSR`) as `douQTSR_qs`, sum(`douSXF`) as `douSXF_qs` ")->where(" intQiShu = '".$intQishu."' and sid = '".$Value["id"]."' and aid = '".$ValueA["id"]."'")->find();
				}
				$listQishu_HZ[$Value["id"]]["chayi"]=M("shoufei_chayi")->field(" sum(`douXGJ`) as `douXGJ_qs`, sum(`douCY`) as `douCY_qs` ")->where(" intQiShu = '".$intQishu."' and sid='".$Value["id"]."'")->find();	
				$listQishu_HZ[$Value["id"]]["chayi"]["dousfhj_qs"]=M("shoufei_info")->where(" intQiShu = '".intval($intQishu)."' and sid='".intval($Value["id"])."'")->sum('douSFHJ');					
			}
			
			
			foreach($listAccount as $K => $Val){
				$listQishu_HZ["total"][$Val["id"]]=M("shoufei_info")->where(" intQiShu = '".intval($intQishu)."' and aid='".intval($Val["id"])."'")->field(" sum(`douSF`) as `douSF_total`, sum(`douSFHJ`) as `douSFHJ_total`, sum(`douXJSR`) as `douXJSR_total`, sum(`douXXK`) as `douXXK_total`, sum(`douRZK`) as `douRZK_total`, sum(`douQTSR`) as `douQTSR_total`, sum(`douSXF`) as `douSXF_total` ")->find();
			}

			
			$listQishu_HZ["total"]["chayi"]["douSFHJ_total"]=M("shoufei_info")->where(" intQiShu = '".intval($intQishu)."' ")->sum("douSFHJ");
			$listQishu_HZ["total"]["chayi"]["douXGJ_total"]=M("shoufei_chayi")->where(" intQiShu = '".intval($intQishu)."' ")->sum("douXGJ");
			$listQishu_HZ["total"]["chayi"]["douCY_total"]=M("shoufei_chayi")->where(" intQiShu = '".intval($intQishu)."' ")->sum("douCY");

			//dump($listQishu_HZ);

		}else{
			$this->error("数据操作有误，请检查！");
		}
		
		$this->assign('listSchool',$listSchool);
		$this->assign('listAccount',$listAccount);
		
		$this->assign('listQishu_HZ',$listQishu_HZ);
		$this->adminDisplay();
	}
	
	
	
    public function zijinHuizong(){

		$strQishu = $_GET['qishu'];
		$strPici  = $_GET['pici'];
		
		//测试数据-参数设置
		//$strQishu="201710";
		//$strPici="8";
		
		if(intval($strQishu)>0 && intval($strPici)>0){
			$listSF = M('shoufei_info')->where("addTime = '".intval($strPici)."' and intQiShu = '".intval($strQishu)."'" )->order('id asc')->select();
			$isReset = M('shoufei_info')->where("addTime = '".intval($strPici)."' and intQiShu = '".intval($strQishu)."'" )->sum('douSF');
		}else{
			$this->error("数据操作有误，请检查！");
		}

		//if(intval($strQishu)>0 && intval($strPici)=="")
		//	$listSF = M('shoufei_info')->where("'intQiShu = '".intval($strQishu)."'" )->order('id asc')->select();
		
		//if(is_array($listSF) && !empty($listSF) && abs($isReset)>0)
		if(abs($isReset)>0)
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
			$listSchool = M('school')->where('isuse',1)->order('id desc')->select();
			$listAccount = M('account_detail')->where('isUse',1)->order('intOrderID asc,id desc')->select();
			
			$listLklb = M('lklb')->where("intqishu = '".intval($strQishu)."' and addtime = '".intval($strPici)."'")->select();
			
			if(intval($strQishu)>0 && intval($strPici)>0 && is_array($listLklb) && !empty($listLklb))
			{
				foreach($listSchool as $Key => $Value){
					foreach($listAccount as $KeyA => $ValueA){
						$listHZBJ_D = M('lklb')->where("strmername = '".$Value["subname"]."' and intqishu = '".intval($strQishu)."' and addtime = '".intval($strPici)."' and straccountname = '".$ValueA["strname"]."' and straccountbank = '".$ValueA["strbankname"]."'")->sum('douHZBJ');
						$listSXF_D = M('lklb')->where("strmername = '".$Value["subname"]."' and intqishu = '".intval($strQishu)."' and addtime = '".intval($strPici)."' and straccountname = '".$ValueA["strname"]."' and straccountbank = '".$ValueA["strbankname"]."'")->sum('douSXF');
						
						//echo  M('lklb')->getLastSql();
						//echo "<br>";
						
						if(is_array($listSF) && !empty($listSF)){
							$rs_SF=M('shoufei_info')->where("intqishu = '".intval($strQishu)."' and addtime = '".intval($strPici)."' and sid = '".$Value["id"]."' and aid = '".$ValueA["id"]."'")->find();
							
							$arrData["douSF"]	= floatval($listHZBJ_D);
							$arrData["douSFHJ"]	= floatval($listHZBJ_D) + floatval($rs_SF["douxjsr"]) - floatval($rs_SF["douxxk"]) - floatval($rs_SF["dourzk"]) - abs(floatval($listSXF_D));
							//dousfhj=dousf+douxjsr-douxxk-dourzk-dousxf
							$arrData["douSXF"]	= floatval($listSXF_D);

							M('shoufei_info')->where("intqishu = '".intval($strQishu)."' and addtime = '".intval($strPici)."' and sid = '".$Value["id"]."' and aid = '".$ValueA["id"]."'")->save($arrData);

							$douSFHJ_total = M("shoufei_info")->where("addtime = '".intval($strPici)."' and intQiShu = '".intval($strQishu)."' and sid='".intval($Value["id"])."'")->sum('douSFHJ');
							$arrCY = M("shoufei_chayi")->where("addtime = '".intval($strPici)."' and intQiShu = '".intval($strQishu)."' and sid='".intval($Value["id"])."'")->find();
							$douCY =  number_format((floatval($douSFHJ_total)*100-floatval($arrCY["douxgj"]))/100,2,".","");

							$arrDataCY["douCY"]=$douCY;
							M('shoufei_chayi')->where("id = '".intval($intID_js)."'")->save($arrDataCY);
							
						}else{
							$arrData["sid"]	= $Value["id"];
							$arrData["aid"]	= $ValueA["id"];
							
							$arrData["douSF"]	= floatval($listHZBJ_D);
							$arrData["douSFHJ"]	= floatval($listHZBJ_D) - abs(floatval($listSXF_D));
							$arrData["douSXF"]	= floatval($listSXF_D);
							
							$arrData["addTime"]	= intval($strPici);
							$arrData["intQiShu"]	= intval($strQishu);
							$arrData["intCreateDate"]	= date('Y-m-d H:i:s');
							
							$addID = M('shoufei_info')->add($arrData);
						}
					}
					
					$listCY = M("shoufei_chayi")->where("addtime = '".intval($strPici)."' and intQiShu = '".intval($strQishu)."' and sid='".intval($Value["id"])."'")->select();
					if(empty($listCY)){
						$arrDataCY["sid"]=$Value["id"];
						$arrDataCY["addTime"]=intval($strPici);
						$arrDataCY["intQiShu"]=intval($strQishu);
						$arrDataCY["intCreateDate"]=date('Y-m-d H:i:s');
						M('shoufei_chayi')->add($arrDataCY);
					}							
				}
				
				foreach($listSchool as $Key => $Value){
					foreach($listAccount as $KeyA => $ValueA){		
						$listHZBJ[$Value["id"]][$ValueA["id"]] = M('shoufei_info')->where("addTime = '".intval($strPici)."' and intQiShu = '".intval($strQishu)."' and sid = '".$Value["id"]."' and aid = '".$ValueA["id"]."' ")->find();
					}						
				}	
			}
		}

		foreach($listAccount as $K => $Val){
			$shoufei_total[$Val["id"]]=M("shoufei_info")->where("addtime = '".intval($strPici)."' and intQiShu = '".intval($strQishu)."' and aid='".intval($Val["id"])."'")->field(" sum(`douSF`) as `douSF_total`, sum(`douSFHJ`) as `douSFHJ_total`, sum(`douXJSR`) as `douXJSR_total`, sum(`douXXK`) as `douXXK_total`, sum(`douRZK`) as `douRZK_total`, sum(`douQTSR`) as `douQTSR_total`, sum(`douSXF`) as `douSXF_total` ")->find();
		}
		
		foreach($listSchool as $K => $Val){
			$listHZBJ[$Val["id"]]["douSFHJ_total"]=M("shoufei_info")->where("addtime = '".intval($strPici)."' and intQiShu = '".intval($strQishu)."' and sid='".intval($Val["id"])."'")->sum('douSFHJ');
			$listHZBJ[$Val["id"]]["douXJSR_total"]=M("shoufei_info")->where("addtime = '".intval($strPici)."' and intQiShu = '".intval($strQishu)."' and sid='".intval($Val["id"])."'")->sum('douXJSR');
		}
		
		foreach($listSchool as $K => $Val){
			$listHZBJ[$Val["id"]]["chayi"]=M("shoufei_chayi")->where("addtime = '".intval($strPici)."' and intQiShu = '".intval($strQishu)."' and sid='".intval($Val["id"])."'")->find();
		}
		
		$listCY_HZ["douSFHJ_total"]=M("shoufei_info")->where("addtime = '".intval($strPici)."' and intQiShu = '".intval($strQishu)."' ")->sum("douSFHJ");
		$listCY_HZ["douXGJ_total"]=M("shoufei_chayi")->where("addtime = '".intval($strPici)."' and intQiShu = '".intval($strQishu)."' ")->sum("douXGJ");
		$listCY_HZ["douCY_total"]=M("shoufei_chayi")->where("addtime = '".intval($strPici)."' and intQiShu = '".intval($strQishu)."' ")->sum("douCY");
		

		//dump($listHZBJ);
		
		$this->assign('listHZBJ',$listHZBJ);
		$this->assign('listSXF',$listSXF);
		$this->assign('listCY_HZ',$listCY_HZ);
		
		$this->assign('listSchool',$listSchool);
		$this->assign('listAccount',$listAccount);
		$this->assign('shoufei_total',$shoufei_total);
		//$this->assign('school_total',$school_total);
		
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
			//最终收费 = 读取收费+现金-学习卡-融资款-手续费
			$douSFHJ = number_format(($douSF_Z_js + $douXJSR_js - $douXXK_js - $douRZK_js - $floSXF_js)/100,2,".","");
			
			$arrData[$strFieldName_js]	= $strFieldValue_js;
			$arrData["douSFHJ"]	= $douSFHJ;
			M('shoufei_info')->where("id = '".$intID_js."'")->save($arrData);
			
			$reA = M('shoufei_info')->where("id = '".$intID_js."'")->find();

			$douTotal = M("shoufei_info")->where("addtime = '".intval($reA["addtime"])."' and intQiShu = '".intval($reA["intqishu"])."' and aid='".intval($reA["aid"])."'")->field(" sum(`douSF`) as `douSF_total`, sum(`douSFHJ`) as `douSFHJ_total`, sum(`douXJSR`) as `douXJSR_total`, sum(`douXXK`) as `douXXK_total`, sum(`douRZK`) as `douRZK_total`, sum(`douQTSR`) as `douQTSR_total`, sum(`douSXF`) as `douSXF_total` ")->find();
			
			$douTotal_s = M("shoufei_info")->where("addtime = '".intval($reA["addtime"])."' and intQiShu = '".intval($reA["intqishu"])."' and sid='".intval($reA["sid"])."'")->sum('douSFHJ');
			
			$rsCY = M("shoufei_chayi")->where("addtime = '".intval($reA["addtime"])."' and intQiShu = '".intval($reA["intqishu"])."' and sid='".intval($reA["sid"])."'")->find();
			if(floatval($rsCY["douxgj"]>0)){
				$douCY= floatval($douTotal_s) - floatval($rsCY["douxgj"]);
			}else{
				$douCY="";
			}
			$arrData["douCY"]=$douCY;
			M('shoufei_chayi')->where("id = '".$rsCY["id"]."'")->save($arrData);
			
			$douSFHJ_total_s=M("shoufei_info")->where("addtime = '".intval($reA["addtime"])."' and intQiShu = '".intval($reA["intqishu"])."' ")->sum("douSFHJ");
			$douXGJ_total_s=M("shoufei_chayi")->where("addtime = '".intval($reA["addtime"])."' and intQiShu = '".intval($reA["intqishu"])."' ")->sum("douXGJ");
			$douCY_total_s=M("shoufei_chayi")->where("addtime = '".intval($reA["addtime"])."' and intQiShu = '".intval($reA["intqishu"])."' ")->sum("douCY");
			
			$temp["douSFHJ_total_s"] = $douSFHJ_total_s;
			$temp["douXGJ_total_s"] = $douXGJ_total_s;
			$temp["douCY_total_s"] = $douCY_total_s;
			
			$temp["arrTotal"] = $douTotal;
			$temp["douTotal_s"] = $douTotal_s;
			
			$temp["cyid"]=$rsCY["id"];
			$temp["douCY"]=$douCY;
			
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
	
	
	public function zijin_chayi_ajax(){
	
		$douXGJ_js	= abs($_POST["douXGJ_js"]*100);
		$intID_js= $_POST["intID_js"];

		//$intID_js=1;

		if(intval($intID_js)>0)
		{
			$rsCY=M("shoufei_chayi")->where("id = '".intval($intID_js)."'")->find();
			if($douXGJ_js>0){
				$douSFHJ_total = M("shoufei_info")->where("addtime = '".intval($rsCY["addtime"])."' and intQiShu = '".intval($rsCY["intqishu"])."' and sid='".intval($rsCY["sid"])."'")->sum('douSFHJ');
				$douCY =  number_format((floatval($douSFHJ_total)*100-floatval($douXGJ_js))/100,2,".","");
				$arrData["douCY"]=$douCY;
			}else{
				$arrData["douCY"]="";
			}
			$arrData["douXGJ"]=number_format($douXGJ_js/100,2,".","");
			M('shoufei_chayi')->where("id = '".intval($intID_js)."'")->save($arrData);
			
			$douXGJ_total=M("shoufei_chayi")->where("addtime = '".intval($rsCY["addtime"])."' and intQiShu = '".intval($rsCY["intqishu"])."' ")->sum("douXGJ");
			$douCY_total=M("shoufei_chayi")->where("addtime = '".intval($rsCY["addtime"])."' and intQiShu = '".intval($rsCY["intqishu"])."' ")->sum("douCY");
			
			//douTotal_s
			$temp["douXGJ_total"] = $douXGJ_total;
			$temp["douCY_total"] = $douCY_total;
			$temp["msg"] = $douCY;
			$temp["status"] = 'OK';
		}
		else
		{
			$temp['msg'] 	= '非法操作！';
			$temp['status'] = 'NO';
		}
		echo json_encode($temp); 
		//dump($temp);
	}
	
	public function zijin_chayi_rem_ajax(){
	
		$textRemarks_js	= $_POST["textRemarks_js"];
		$intID_js	= $_POST["intID_js"];

		$rsRem = M('shoufei_chayi')->where("id = '".intval($intID_js)."'" )->find();
		if(is_array($rsRem) && !empty($rsRem) && $textRemarks_js!="")
		{
			$arrData["textRemarks"]=$textRemarks_js;
			M('shoufei_chayi')->where("id = '".intval($intID_js)."'")->save($arrData);
			
			//$temp['msg'] 	= '！';
			//$temp['status'] = 'OK';
		}
		else
		{
			//$temp['msg'] 	= '！';
			//$temp['status'] = 'NO';
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
		
		
		$douXGJ	= $_POST["douXGJ"];
		$douCY	= $_POST["douCY"];
		$textRemarks = $_POST["textRemarks"];

		
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

				$arrData_CY["douXGJ"]	= $douXGJ[$key];
				$arrData_CY["douCY"]	= $douCY[$key];
				$arrData_CY["textRemarks"]	= $textRemarks[$key];
				M('shoufei_chayi')->where("sid = '".$sid."' and addTime = '".$addTime."' and intQiShu = '".$intQiShu."'")->save($arrData_CY);

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
			if(strlen(trim($textPiZhu_js))>0){
				$arrData[$fieldName_js]=$textPiZhu_js;
				
				M('shoufei_info')->where("id = '".intval($intID_js)."'")->save($arrData);
				
				$temp["msg"] = '添加 批注信息 成功！';
				$temp["status"] = 'OK';
			}else{

				$temp["msg"] = '批注信息不能为空！';
				$temp["status"] = 'NO';
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
	
	public function zijin_getrem_ajax(){

		$intID_js	= $_POST["intID"];
		$fieldName_js	= $_POST["fieldName"];

		$rsRem = M('shoufei_info')->where("id = '".intval($intID_js)."'" )->find();
		if($rsRem["dousf"]>0)
		{		
			if($rsRem[strtolower($fieldName_js)]!=""){
				$temp["msg"] = $rsRem[strtolower($fieldName_js)];
			}
			$temp["status"] = 'OK';
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
			//M("shoufei_info")->where("addtime = '".intval($intPici)."' and intQiShu = '".intval($intQishu)."'")->delete();
			//M("shoufei_chayi")->where("addtime = '".intval($intPici)."' and intQiShu = '".intval($intQishu)."'")->delete();
			$arrData["douSF"]	= "";
			$arrData["douSFHJ"]	= "";
			$arrData["douSXF"]	= "";
			
			M("shoufei_info")->where("addtime = '".intval($intPici)."' and intQiShu = '".intval($intQishu)."'")->save($arrData);
			//M("shoufei_chayi")->where("addtime = '".intval($intPici)."' and intQiShu = '".intval($intQishu)."'")->save();

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



















