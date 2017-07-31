<?php if (!defined('THINK_PATH')) exit();?><!--[if lte IE 8]>
<script src="js/chart/excanvas.compiled.js"></script>
<![endif]-->
<div class="line-big">
    <div class="xm12">
        <div class="alert alert-yellow">尊敬的<?php echo ($_SESSION['username']); ?>，欢迎您的使用，您的本次登录时间为 <?php echo ($_SESSION['logintime']); ?>，登录IP为 <?php echo ($_SESSION['loginip']); ?></div>
    </div>
</div>

<div class="line-big">
    <div class="xm3">
        <div class="panel one-box one-dashboard">
            <div class="clearfix">
                <div class="media media-x ">
                    <div class="float-left">
                        <div class="txt dashboard-head radius-small bg-yellow icon-bar-chart-o"></div>
                    </div>
                    <div class="media-body text-center">
                        <h2><strong><?php echo ($todayViewer); ?></strong></h2>
                        今日网站访问
                    </div>
                </div>
            </div>
        </div>
        <br>
    </div>
    <div class="xm3">
        <div class="panel one-box one-dashboard">
            <div class="clearfix">
                <div class="media media-x ">
                    <div class="float-left">
                        <div class="txt dashboard-head radius-small bg-yellow icon-bar-chart-o"></div>
                    </div>
                    <div class="media-body text-center">
                        <h2><strong><?php echo ($yesterdayViewer); ?></strong></h2>
                        昨日网站访问
                    </div>
                </div>
            </div>
        </div>
        <br>
    </div>
    <div class="xm3">
        <div class="panel one-box one-dashboard">
            <div class="clearfix">
                <div class="media media-x ">
                    <div class="float-left">
                        <div class="txt dashboard-head radius-small bg-yellow icon-bar-chart-o"></div>
                    </div>
                    <div class="media-body text-center">
                        <h2><strong><?php echo ($totalViewer); ?></strong></h2>
                       网站总访问
                    </div>
                </div>
            </div>
        </div>
        <br>
    </div>
</div>
<!--<div class="line-big">
    <div class="xm3">
        <div class="panel one-box one-dashboard">
            <div class="clearfix">
                <div class="media media-x ">
                    <div class="float-left">
                        <div class="txt dashboard-head radius-small bg-red  icon-dashboard"></div>
                    </div>
                    <div class="media-body text-center">
                        <h2><strong>40%</strong></h2>
                        安全检测
                    </div>
                </div>
            </div>
        </div>
        <br>
    </div>
    <div class="xm3">
        <div class="panel one-box one-dashboard">
            <div class="clearfix">
                <div class="media media-x ">
                    <div class="float-left">
                        <div class="txt dashboard-head radius-small bg-yellow icon-bar-chart-o"></div>
                    </div>
                    <div class="media-body text-center">
                        <h2><strong>6</strong></h2>
                        今日网站访问
                    </div>
                </div>
            </div>
        </div>
        <br>
    </div>
    <div class="xm3">
        <div class="panel one-box one-dashboard">
            <div class="clearfix">
                <div class="media media-x ">
                    <div class="float-left">
                        <div class="txt dashboard-head radius-small bg-blue icon-paw"></div>
                    </div>
                    <div class="media-body text-center">
                        <h2><strong>0</strong></h2>
                        今日蜘蛛访问
                    </div>
                </div>
            </div>
        </div>
        <br>
    </div>
    <div class="xm3">
        <div class="panel one-box one-dashboard">
            <div class="clearfix">
                <div class="media media-x ">
                    <div class="float-left">
                        <div class="txt dashboard-head radius-small bg-green icon-puzzle-piece"></div>
                    </div>
                    <div class="media-body text-center">
                        <h2><strong>0</strong></h2>
                        碎片使用数量
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>
</div>

<!--<div class="line-big">
    <div class="xm12">
        <div class="panel one-box">
            <div class="panel-head">网站近期访问概况</div>
            <div class="panel-body">
                <div style="height:200px;">
                    <canvas id="chart"></canvas>
                </div>
            </div>
        </div>
    </div>
</div>-->
<br>
<div class="line-big">
    <div class="xm6">
        <div class="panel one-box">
            <div class="panel-head"><strong>系统信息</strong>
            </div>
            <div class="table-responsive">
                <table class="table">
                    <tbody>
                        <tr>
                            <td width="100" align="right">访问地址：</td>
                            <td><a href="http://<?php echo ($_SERVER["SERVER_NAME"]); ?>" target="_blank">http://<?php echo ($_SERVER["SERVER_NAME"]); ?>/</a>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">服务器IP：</td>
                            <td><?php echo ($_SERVER["SERVER_ADDR"]); ?>:<?php echo ($_SERVER["SERVER_PORT"]); ?></td>
                        </tr>
                        <tr>
                            <td align="right">PHP版本：</td>
                            <td><?php echo (PHP_VERSION); ?></td>
                        </tr>
                        <tr>
                            <td align="right">物理路径：</td>
                            <td>E:\WAMP\www\DuxCms-2.1.0\</td>
                        </tr>
                        <tr>
                            <td align="right">脚本超时：</td>
                            <td>
                                <?php echo get_cfg_var( "max_execution_time") ; ?></a>
                            </td>
                            </tr>
                        <tr>
                            <td align="right">上传大小：</td>
                            <td>
                                <?php echo get_cfg_var( "upload_max_filesize")?get_cfg_var( "upload_max_filesize"): "不允许上传文件" ; ?>
                            </td>

                        </tr>

                        <tr>
                            <td align="right">屏蔽函数：</td>
                            <td>
                                <?php echo get_cfg_var( "disable_functions")?get_cfg_var( "disable_functions"): "无" ; ?>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <br>
    </div>
    <div class="xm6">
        <div class="panel one-box">
            <div class="panel-head"><strong>程序信息</strong>
            </div>
            <div class="table-responsive">
                <table class="table">
                    <tbody>
                        <tr>
                            <td align="right">程序版本：</td>
                            <td>1.0 (2015-04-27)</td>
                        </tr>
                        <tr>
                            <td align="right">开发作者：</td>
                            <td colspan="3" id="authorize"> <a id="checkAuthorize" class=" badge bg-main" href="javascript:;">ddmall</a></td>
                        </tr>
                        <tr>
                            <td width="110" align="right">程序支持：</td>
                            <td><a href="http://www.ddmall.com.cn" target="_blank">ddmall</a></td>
                        </tr>
                        <tr>
                            <td align="right">开发团队：</td>
                            <td><a href="http://www.ddmall.com.cn" target="_blank">ddmall</a></td>
                        </tr>
                        <tr>
                            <td align="right">公司官网：</td>
                            <td><a href="http://www.ddmall.com.cn" target="_blank">http://www.ddmall.com.cn</a></td>
                        </tr>
                        <tr>
                            <td align="right">联系电话：</td>
                            <td>ddmall</td>
                        </tr>
                        <tr>
                            <td align="right">作者Q Q：</td>
                            <td>ddmall</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

    </div>
</div>