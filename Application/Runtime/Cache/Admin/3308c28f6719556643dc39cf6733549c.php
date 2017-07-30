<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>oneCMS 1.0 - 网站后台管理</title>
    <!-- import style css -->
    <link rel="stylesheet" type="text/css" href="/Public/Admin/css/pingtu.css" />
    <link rel="stylesheet" type="text/css" href="/Public/Admin/css/admin.css" />
    <!-- import style js -->
    <script type="text/javascript" src="/Public/Admin/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="/Public/Admin/js/pingtu.js"></script>
    <!-- 因IE8不支持CSS的媒体查询，因此需引入respond.js才能使其实现媒体查询功能。  -->
    <script type="text/javascript" src="/Public/Admin/js/respond.js"></script>
    <!-- Layer WEB弹窗插件 -->
    <script type="text/javascript" src="/Public/Admin/js/layer/layer.min.js"></script>
    <!-- KindEditor 在线编辑器 -->
    <link rel="stylesheet" href="/Public/Admin/keditor/themes/default/default.css" />
    <link rel="stylesheet" href="/Public/Admin/keditor/plugins/code/prettify.css" />
    <script charset="utf-8" src="/Public/Admin/keditor/kindeditor-all-min.js"></script>
    <script charset="utf-8" src="/Public/Admin/keditor/lang/zh-CN.js"></script>
    <script charset="utf-8" src="/Public/Admin/keditor/plugins/code/prettify.js"></script>
    <!-- webUploader 上传图片和文件插件 -->
    <link rel="stylesheet" type="text/css" href="/Public/Admin/webuploader/webuploader.css">
    <script type="text/javascript" src="/Public/Admin/webuploader/webuploader.min.js"></script>
	<!-- dateTime 插件 -->
	<link rel="stylesheet" type="text/css" href="/Public/Admin/time/jquery.datetimepicker.css"/ >

    <style>
        body {overflow-x:hidden; background-color: #eff3f6;}
    </style>
</head>
<body>
    <div class="one-tools">
        <div class="bread-head"><?php echo ($infoModule["info"]["name"]); ?>
            <span class="small"><?php echo ($infoModule["info"]["description"]); ?></span>
        </div>

        <?php if($infoModule["menu"] != null): ?><br> 
        <div class="tools-function clearfix">
            <div class="float-left">
                <?php if(is_array($infoModule["menu"])): $i = 0; $__LIST__ = $infoModule["menu"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo['url'] == $self): ?><a class="button button-small bg-main icon-<?php echo ($vo["icon"]); ?>" href="<?php echo ($vo["url"]); ?>">
                    <?php else: ?>
                        <a class="button button-small bg-back icon-<?php echo ($vo["icon"]); ?>" href="<?php echo ($vo["url"]); ?>"><?php endif; ?>
                    <?php echo ($vo["name"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?>
            </div>
            <?php if($infoModule["add"] != null): ?><div class="button-group float-right">
                    <a class="button button-small bg-dot icon-plus dropdown-toggle"> 添加 <span class="downward"></span></a> 
                    <ul class="drop-menu pull-right">
                        <?php if(is_array($infoModule["add"])): $i = 0; $__LIST__ = $infoModule["add"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["url"]); ?>"><?php echo ($vo["name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                    </ul>
                </div><?php endif; ?>
        </div><?php endif; ?>
        
    </div>
        
    <div class="admin-main">
    <!--common-->
    </div>
    
</body>
</html>