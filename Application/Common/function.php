<?php

/**
 * 字符串转方法数组
 * @param string $str
 * @return array
 */
function get_method_array($str = ''){
    $strArray = array();
    if(!empty($str)){
        $strArray = explode('/', $str, 3);
    }
    $strCount = count($strArray);
    switch ($strCount) {
            case 1:
                $Mname = MODULE_NAME;
                $controller = CONTROLLER_NAME;
                $action = $strArray[0];
                break;
            case 2:
                $Mname = MODULE_NAME;
                $controller = $strArray[0];
                $action = $strArray[1];
                break;
            case 3:
                $Mname = $strArray[0];
                $controller = $strArray[1];
                $action = $strArray[2];
                break;
            default:
                $Mname = MODULE_NAME;
                $controller = CONTROLLER_NAME;
                $action = ACTION_NAME;
                break;
        }
        return array(
            'Mname' => strtolower($Mname),
            'controller' => $controller,
            'action' => $action,
            );
}
/**
 * 补全URL地址
 * @return string $url 当前访问控制器
 */
function url($url) {
    return __APP__. '/' . $url;
}
/**
 * 获取文件或文件大小
 * @param string $directoty 路径
 * @return int
 */
function dir_size($directoty)
{
    $dir_size = 0;
    if ($dir_handle = @opendir($directoty)) {
        while ($filename = readdir($dir_handle)) {
            $subFile = $directoty . DIRECTORY_SEPARATOR . $filename;
            if ($filename == '.' || $filename == '..') {
                continue;
            } elseif (is_dir($subFile)) {
                $dir_size += dir_size($subFile);
            } elseif (is_file($subFile)) {
                $dir_size += filesize($subFile);
            }
        }
        closedir($dir_handle);
    }
    return ($dir_size);
}

function node_merge($node,$access=null,$pid=0) {
	$arr=array();
	foreach($node as $v) {
		if(is_array($access)) {
			$v['access']=in_array($v['id'],$access)?1:0;
		}
		if($v['pid']==$pid) {
			$v['child']=node_merge($node,$access,$v['id']);
			$arr[]=$v;
		}
	}
	return $arr;
}
function node_getChildsId($node,$pid) {
	$arr=array();
	foreach($node as $v) {
		if($v['pid']==$pid) {
			$arr[]=$v['id'];
			$arr=array_merge($arr,node_getChildsId($node,$v['id']));
		}
	}
	return $arr;
}
function node_unlimitedForLevel($node,$html='--',$pid=0) 
{
	$arr=array();
	foreach($node as $v) {
		if($v['pid']==$pid) {
			$v['html']=str_repeat($html,$v['level']-1);
			$arr[]=$v;
			$arr=array_merge($arr,node_unlimitedForLevel($node,$html,$v['id']));
		}
	}
	return $arr;
}