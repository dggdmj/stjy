 //根据身份证获取基本信息
$('input[name="shenfenzhm[]"]').on('change',function(){
	var sfz = $(this).val();
	var ts = $(this);
    $.post('/index.php/WagesScb/getSf',{'sfz':sfz},function(data){
        if(data){
        	// $(ts).parent().siblings().eq(0).children('input').val(1);
        	// $(ts).parent().siblings().eq(0).children('input').val(data.yuefen);
        	// $(ts).parent().siblings().eq(0).children('input').val(data.fenxiao);
        	$(ts).parent().siblings().eq(3).children('input').val(data.bumen);
        	$(ts).parent().siblings().eq(4).children('input').val(data.zhiwei);
        	$(ts).parent().siblings().eq(5).children('input').val(data.gangweilx);
        	$(ts).parent().siblings().eq(6).children('input').val(data.zaizhizt);
        	$(ts).parent().siblings().eq(7).children('input').val(data.xingming);
        	// $(ts).parent().siblings().eq(8).children('input').val(data.shenfenzhm);
        	$(ts).parent().siblings().eq(8).children('input').val(data.gongzuonx);
        	$(ts).parent().siblings().eq(9).children('input').val(data.ruzhisj);
        }else{
            layer.msg('未在人事表中找到这个人',{icon:2});
        }
    })
})
$('td').each(function(k,v){
    var ts = $(this);
    if($(v).attr('data-text')){
        $(ts).children('span').css('color','red');
    }
})
$('input').on('change ',function(){
    savess()
})
