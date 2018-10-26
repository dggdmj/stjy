<?php
/**
 * Created by Lf.
 * User: Administrator
 * Date: 2015/8/13
 * Time: 17:37
 */
namespace Admin\Action;
use Think\Action;
class CurlAction extends Action {
    /**
     * 模拟post进行url请求
     * @param string $url
     * @param string $param
     */
    public function request_post($url = '', $param = array()) {
        if (empty($url) || empty($param)) {
            return false;
        }
        $headers = array("Content-type: application/json;charset='utf-8'","Accept: application/json","Cache-Control: no-cache","Pragma: no-cache");
        $postUrl = $url;
        $curlPost = json_encode($param);
        $ch = curl_init();//初始化curl
        curl_setopt($ch, CURLOPT_URL,$postUrl);//抓取指定网页
        curl_setopt($ch, CURLOPT_HEADER, 0);//设置header
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);//要求结果为字符串且输出到屏幕上
        curl_setopt($ch, CURLOPT_POST, 1);//post提交方式
        curl_setopt($ch, CURLOPT_POSTFIELDS, $curlPost);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers); 
        $data = curl_exec($ch);//运行curl
        curl_close($ch);
        return $data;
    }

    //HTTP请求（支持HTTP/HTTPS，支持GET/POST）
    protected function http_request($url, $data = null)
    {
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
        if (!empty($data)){
            curl_setopt($curl, CURLOPT_POST, 1);
            curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
        }
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, TRUE);
        $output = curl_exec($curl);
        curl_close($curl);
        return $output;
    }


    //获取accessToken
    public function getAccessToken(){
        $url = 'https://www.yunzhijia.com/gateway/oauth2/token/getAccessToken';
        $data['appId'] = '500068006';
        $data['secret'] = 'CloudHubJ2eeDemo';
        $data['timestamp'] = (string)$this->getMillisecond();
        $data['scope'] = 'app';
        $data = json_encode($data);
        dump($data);
        $result = $this->http_request($url,$data);
        dump($result);
    }

    /* 
     * 
     *返回字符串的毫秒数时间戳 
     */  
    public function getMillisecond() {
        list($t1, $t2) = explode(' ', microtime());
        return (float)sprintf('%.0f',(floatval($t1)+floatval($t2))*1000);
    }

    //云之家错误码转文字
    public function error_msg($error=''){
        $error_arr = [
                        '100'=>'成功',
                        '101'=>'重复请求',
                        '102'=>'eid为空',
                        '103'=>'非法eid，未在mcloud注册',
                        '104'=>'数据加密错误',
                        '105'=>'导入数据量超标',
                        '106'=>'业务异常，需查看详情',
                        '107'=>'数据库异常',
                        '108'=>'数据为空',
                        '109'=>'Data格式错误',
                        '110'=>'您无权限访问以下企业',
                        '111'=>'openId关联失败',
                        '201'=>'导入组织已存在',
                        '202'=>'组织导入成功',
                        '203'=>'更新组织ID为空',
                        '204'=>'更新组织成功',
                        '205'=>'删除组织成功',
                        '206'=>'导入人员已存在',
                        '207'=>'参数导入人员无对应组织',
                        '208'=>'数据中心导入人员无对应组织',
                        '209'=>'人员导入成功',
                        '210'=>'需更新人员不存在',
                        '211'=>'人员无对应关系，无法更新关系',
                        '212'=>'更新组织ID为空',
                        '213'=>'人员更新成功',
                        '214'=>'人员删除成功',
                        '215'=>'用户名，用户ID，人员ID，saltType不能为空',
                        '216'=>'关系已存在，关系更新成功',
                        '217'=>'关系导入成功',
                        '218'=>'人员不存在',
                        '219'=>'手机号码已经存在，不能重复',
                        '220'=>'手机号码已经存在，不能重复',
                        '221'=>'原组织长名称不存在',
                        '222'=>'组织长名称修改成功',
                        '223'=>'组织长名称修改失败',
                        '224'=>'原部门有下级组织无法修改',
                        '225'=>'手机号码格式不正确',
                        '226'=>'手机号码重复',
                        '227'=>'openId&phone为空',
                        '228'=>'原组织长名称为公司名称无法修改',
                        '229'=>'新旧手机都已被激活无法更改手机号码',
                        '230'=>'移动人员，组织不存在',
                        '231'=>'移动人员失败',
                        '232'=>'人员疑似重复',
                        '233'=>'不支持修改的人员状态类型',
                        '234'=>'人员当前状态和修改类型不匹配',
                        '235'=>'修改状态，type字段不能为空',
                        '236'=>'状态不为1（在职）的人员，不让修改信息',
                        '237'=>'开通ERP同步权限的企业，组织和人员不允许修改',
                        '238'=>'新手机号已经是云之家用户',
                        '239'=>'当前用户有多个工作圈',
                        '300'=>'没有权限访问',
                        '301'=>'访问权限已到期'
                    ];
        return $error_arr[$error];
    }
}