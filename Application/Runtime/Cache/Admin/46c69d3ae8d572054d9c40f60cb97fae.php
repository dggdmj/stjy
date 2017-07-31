<?php if (!defined('THINK_PATH')) exit();?><form method="post" enctype="multipart/form-data" class="form-x one-form form-auto" id="form" action="<?php echo U('/TableImport/dataUpload',array('id'=>$article['id']));?>">
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
                    <input type="text" class="input" name="name" size="60" value="<?php echo ($table_info["name"]); ?>" readonly>
                    <input type="hidden" class="input" name="table_name" size="60" value="<?php echo ($table_info["table_name"]); ?>">
                    <input type="hidden" class="input" name="tid" size="60" value="<?php echo ($table_info["id"]); ?>">
                </div>
            </div>
			<div class="form-group">
                <div class="label">
                    <label>当前期数</label>
                </div>
                <div class="field">
                    <input type="text" class="input" name="qishu" size="60" value="201706">
                    <div class="input-note">例如:201706</div>
                </div>
            </div>
			<div class="form-group">
                <div class="label">
                    <label>操作人</label>
                </div>
                <div class="field">
                    <input type="text" class="input" name="caozuoren" size="60" value="梅梅" readonly>
                </div>
            </div>
			<div class="form-group">
                <div class="label">
                    <label>所属校区
                    </label>
                </div>
                <div class="field">
                    <input type="text" class="input" name="suoshufx" size="60" value="华景分校">
                </div>
            </div>
            <div class="form-group">
                <div class="label">
                    <label>EXCEL表</label>
                </div>
                <div class="field">
                    <input type="file" class="input" name="excel" />
                    <!--<a class="button bg-blue button-small icon-picture-o" id="image_preview" href="javascript:;" > 预览</a>-->
                    <div class="input-note">请导入EXCEL文件</div>
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
            cssPath : '/Public/Admin/keditor/plugins/code/prettify.css',
            uploadJson : '/Public/Admin/keditor/php/upload_json.php',
            fileManagerJson : '/Public/Admin/keditor/php/file_manager_json.php',
            allowFileManager : true
        });
        prettyPrint();
    });
</script>

<script type="text/javascript" src="/Public/Admin/webuploader/FileUpload.js"></script>