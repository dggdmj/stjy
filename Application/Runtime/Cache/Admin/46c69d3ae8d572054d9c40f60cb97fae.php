<?php if (!defined('THINK_PATH')) exit();?><form method="post" enctype="multipart/form-data" class="form-x one-form form-auto" id="form" action="<?php echo U('/Article/addArticle',array('id'=>$article['id']));?>">
	 <div class="panel one-box  active">
        <div class="panel-head">
            <strong>数据表导入</strong>
        </div>
        <div class="panel-body">	
			<div class="form-group">
                <div class="label">
                    <label>所属分类</label>
                </div>
                <div class="field">
                    <input type="text" class="input" name="table_name" size="60" value="<?php echo ($table_info["name"]); ?>" readonly>
                    <input type="hidden" class="input" name="ta" size="60" value="<?php echo ($table_info["name"]); ?>">
                </div>
            </div>
			<div class="form-group">
                <div class="label">
                    <label>操作人</label>
                </div>
                <div class="field">
                    <input type="text" class="input" name="editor" size="60" value="<?php echo ($article["editor"]); ?>" readonly>
                </div>
            </div>
			<div class="form-group">
                <div class="label">
                    <label>所属校区
                    </label>
                </div>
                <div class="field">
                    <input type="text" class="input" name="title" size="60" value="<?php echo ($article["title"]); ?>">
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>封面</label>
                </div>
                <div class="field">
                    <input type="text" class="input" id="image" name="image" readonly="readonly" size="38" value="<?php echo ($article["image"]); ?>">
                    <a class="button bg-blue button-small  js-img-upload" data="image" id="image_upload" preview="image_preview""><span class="icon-upload"> 上传</span></a>
                    <a class="button bg-blue button-small icon-picture-o" id="image_preview" href="javascript:;" > 预览</a>
                    <div class="input-note">封面图片尺寸370x294</div>
                </div>
            </div>
        </div>
        <div class="panel-foot">
            <div class="form-button">
                <div id="tips"></div>
				<button class="button bg-main" id="ajaxForm" type='submit'>保存</button>
				<?php if(ACTION_NAME == "article"): ?><button class="button bg" type="reset">重置</button><?php endif; ?>
            </div>
        </div>
    </div>
</form>

<script>
    KindEditor.ready(function(K) {
        var editor1 = K.create('textarea[name="content"]', {
            cssPath : '/stjy/Public/Admin/keditor/plugins/code/prettify.css',
            uploadJson : '/stjy/Public/Admin/keditor/php/upload_json.php',
            fileManagerJson : '/stjy/Public/Admin/keditor/php/file_manager_json.php',
            allowFileManager : true
        });
        prettyPrint();
    });
</script>

<script type="text/javascript" src="/stjy/Public/Admin/webuploader/FileUpload.js"></script>