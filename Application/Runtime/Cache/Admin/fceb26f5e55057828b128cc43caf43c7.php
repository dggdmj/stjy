<?php if (!defined('THINK_PATH')) exit();?><div  style="margin-left: 100px;margin-top: -33px;">    <form action="<?php echo U('upload');?>" enctype="multipart/form-data" method="post" >        <input type="file" name="photo" />        <input type="submit" value="导入数据" style="background-color: #337AB7;color: white;">    </form></div><form method="post" id="form" action="#">    <div class="panel one-box">        <div class="table-responsive">            <table id="table" class="table table-hover ">                <tbody>                    <tr>                        <th width="80">选择</th>                        <th width="80">编号</th>                        <th width="80">作者</th>                        <th width="180">标题</th>                        <th width="80">所属分类</th>                        <th width="80">点击次数</th>                        <th width="80">是否重要</th>                        <th width="100">发布时间</th>                        <th width="80">图片</th>                        <th width="100">操作</th>                    </tr>                    <?php if(is_array($list)): foreach($list as $key=>$v): ?><tr>                            <td>                                <input name="id[]" value="<?php echo ($v["id"]); ?>" type="checkbox">                            </td>                            <td><?php echo ($v["id"]); ?></td>                            <td><?php echo ($v["editor"]); ?></td>                            <td><?php echo ($v["title"]); ?>                                <?php if(is_array($v["attr"])): foreach($v["attr"] as $key=>$value): ?><span class="tag bg-dot" style='color:<?php echo ($value["color"]); ?>;'><?php echo ($value["name"]); ?></span>&nbsp;<?php endforeach; endif; ?>                            </td>                            <td>                                <?php if(is_array($class)): foreach($class as $key=>$c): if($c["id"] == $v['cid']): echo ($c["name"]); endif; endforeach; endif; ?>                            </td>                            <td><?php echo ($v["click"]); ?></td>                            <td>                            <?php if($v["important"]): ?>重要<?php else: ?>不重要<?php endif; ?>                            </td>                            <td><?php echo (date('y-m-d H:i',$v["time"])); ?></td>                            <td>                            <?php if(!empty($v['image'])):?>                                <a href="/stjy/Uploads/<?php echo ($v["image"]); ?>" target="_blank"><span class="tag bg-sub">查看</span></a>                            <?php endif;?>                            </td>                            <td>								<a href="preview?id=<?php echo ($v["id"]); ?>" target="_blank"><span class="tag bg-sub">查看</span></a>                                <a class="button bg-blue button-small icon-pencil" title="修改" alt="修改" href="edit/id/<?php echo ($v['id']); ?>"></a>                                <a class="button bg-red button-small icon-trash-o js-del" title="删除" alt="删除" target2="toTrash/id/<?php echo ($v['id']); ?>/type/1"></a>                            </td>                        </tr><?php endforeach; endif; ?>                </tbody>            </table>        </div>        <div class="panel-foot table-foot clearfix">            <div class="float-left">                <div class="form-inline">                    <div class="form-group">                        <div class="field">                            <select class="input" id="selectAction">                                <option value="1">删除</option>                            </select>                        </div>                    </div>                    <div class="form-button">                        <a class="button bg-blue button-small" id="selectAll" type="button" href="javascript:;">全选</a>                        <a class="button bg-blue button-small" id="reverse" type="button" href="javascript:;">反选</a>                        <a class="button bg-blue button-small" id="selectSubmit" type="submit" href="javascript:;">执行</a>                    </div>                </div>                <br>            </div>            <div class="float-right pagination pagination-small">                <?php echo ($fpage); ?>            </div>        </div>    </div></form><script>    $(function($) {        // 全选        $("#selectAll").click(function () {            $("#table :checkbox").attr("checked", true);        });        // 反选        $("#reverse").click(function () {            $("#table :checkbox").each(function () {                $(this).attr("checked", !$(this).attr("checked"));            });        });        // 执行操作        $("#selectSubmit").click(function () {            var type = $('#selectAction').val();    // 获取执行操作            if (type == 1) {                var url = "updateArticl";    // 修改文章            }            // 序列化 表单数据 后提交            $.post(url,$("form").serialize(),function(data){                // data 是 ajaxreturn 返回的 数据                if(data['status'] == 1){    // 处理成功后                    layer.alert(data['info'], {icon : 1} , function(index){                                window.location.reload();   // 刷新当前页面                        layer.close(index); // 关闭遮罩层                    });                } else {                    // 处理失败后 刷新页面                }            });        });    });</script><script>    $(function($) {    	// 绑定删除操作        $(".js-del").click(function () {            var delUrl = $(this).attr('target2');            //询问框			layer.confirm('您确定删除吗?', {				icon: 4,			    btn: ['确定','取消'] //按钮			}, function(){				$.post(delUrl,$("form").serialize(),function(data){	                layer.msg(data.info, {icon: 1});	                setTimeout("window.location.reload()",1000); // 让提示框停留一会	            });			});        });    });</script>