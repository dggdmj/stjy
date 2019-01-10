<?php
/**
 * Created by PhpStorm.
 * User: mao
 * Date: 2017/6/25
 * Time: PM1:47
 */
namespace Admin\Action;
use Think\Action;
header('Content-type:text/html;charset=utf-8');
class WxAction extends Action
{
    #严重说明：  上面的命名空间给引入类要换成自己的路径
    private $corpid = 'ww7242ccaa00648d78';
    private $corpsecret = 'm5V6j_14RA5iH4j0OErqhscwgFZmsCr4LaGrDPfRrxg';

    public function __construct()
    {
        $ac = file_get_contents($_SERVER["DOCUMENT_ROOT"]."/wxtoken.txt");
        $ac_arr = json_decode($ac,true);
        if(empty($ac_arr['expires_time']) || (time() - $ac_arr['expires_time']) > 3600 ){
            $url = "https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid=".$this->corpid."&corpsecret=".$this->corpsecret;
            $res = $this->https_request($url);
            $ac_arr = json_decode($res,true);
            $ac_arr['expires_time'] = time();
            file_put_contents($_SERVER["DOCUMENT_ROOT"]."/wxtoken.txt",json_encode($ac_arr));
        }
        define("ACCESS_TOKEN",$ac_arr['access_token']);
    }

    public function index()
    {
        echo ACCESS_TOKEN;die;
        header('Content-type:text');
        $this->responseMsg();
    }

    public function login(){
        if(!$_GET['code']){
            $url = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=".$this->corpid."&redirect_uri=http://stl.oabangong.net/index.php/Wx/login&response_type=code&scope=snsapi_base&state=STATE#wechat_redirect";
            header('Location:'.$url);
        }
        $url = "https://qyapi.weixin.qq.com/cgi-bin/user/getuserinfo?access_token=".ACCESS_TOKEN."&code=".$_GET['code'];
        $res = $this->https_request($url);
        $result = json_decode($res,true);
        if($result['errode'] == 0){
            $url = "https://qyapi.weixin.qq.com/cgi-bin/user/get?access_token=".ACCESS_TOKEN."&userid=".$result['UserId'];
            $res = $this->https_request($url);
            session('wx_userinfo', json_decode($res,true));

            echo "用户信息拉取成功<br/>";
            dump(json_decode($res,true));
        }else{
            echo "请求失败：".$res;
        }
    }

    public function responseMsg()
    {
        $postStr = $GLOBALS["HTTP_RAW_POST_DATA"];
        if (!empty($postStr)) {
            $this->logger("R " . $postStr);
            $postObj = simplexml_load_string($postStr, 'SimpleXMLElement', LIBXML_NOCDATA);
            $RX_TYPE = trim($postObj->MsgType);

            switch ($RX_TYPE) {
                case "event":
                    return;
                    $result = $this->receiveEvent($postObj);
                    break;
                case "text":
                    return;
                    $result = $this->receiveText($postObj);
                    break;
            }
            $this->logger("T " . $result);
            echo $result;
        } else {
            echo "";
            exit;
        }
    }

    public function https_request($url)
    {
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        $data = curl_exec($curl);
        if (curl_errno($curl)) {
            return 'ERROR ' . curl_error($curl);
        }
        curl_close($curl);
        return $data;
    }

}





































