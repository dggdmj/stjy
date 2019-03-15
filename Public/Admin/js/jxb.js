    $('input[name="xuelihyyz8zjnx"]').on('change',function(){
        var ruzhisj = $(this).parent().prev().prev().prev().prev().prev().prev().children('input').val()
        var rushutqnxzd = $(this).parent().prev().prev().prev().prev().prev().children('input').val()
        var dqsj = $('input[name="by_sj"]').val(); 
        var sjc = datedifference(dqsj,ruzhisj);
        sjc = sjc / 365;
        sjc = new Number(sjc);
        sjc = sjc.toFixed(1);
        var gongzuonx = parseFloat(sjc ? sjc : 0) + parseFloat(rushutqnxzd ? rushutqnxzd : 0) + parseFloat($(this).val() ? $(this).val() : 0);
        gongzuonx = new Number(gongzuonx);
        gongzuonx = gongzuonx.toFixed(2);
        biyegznx = parseFloat(sjc ? sjc : 0) + (parseFloat(rushutqnxzd ? rushutqnxzd : 0) / 0.8);
        biyegznx = new Number(biyegznx);
        biyegznx = biyegznx.toFixed(2);
        $(this).parent().prev().prev().prev().prev().children('input').val(gongzuonx);//工作年限
        $(this).parent().prev().prev().prev().children('input').val(biyegznx);//毕业工作年限
        var nianxianjcamb = 0;
        if(gongzuonx < 2){
            nianxianjcamb = '0%';
        }else if(gongzuonx < 3){
            nianxianjcamb = '0.2%';
        }else if(gongzuonx < 4){
            nianxianjcamb = '0.4%';
        }else{
            nianxianjcamb = '0.8%';
        }
        $(this).parent().next().children('input').val(nianxianjcamb);
     })

    $('.dialogss').click(function(){
        var title = $(this).prev().attr('title');
        var arr = title.split(':');
        var val = $(this).parent().attr('data-text');
        $(this).parent().addClass('da_id');
        layer.open({
            type: 1,
            title:arr[1]+'-批注',
            skin: 'layui-layer-rim', //加上边框
            area: ['420px', '240px'], //宽高
            content: '<textarea name="" id="" cols="30" rows="10" class="pz_text">'+val+'</textarea><br/><div style="text-align:center"><input type="button" value="保存" class="button bg-sub layui-layer-close1 layui-layer-close" onclick="inp_save()"/></div>'
        });
    })

    $('input[name="xingming"]').on('change',function(){
        var ts = $(this);
        var sid = $('input[name="sid"]').val(); 
        var qishu = $('input[name="qishu"]').val(); 
        var quyu = $('input[name="quyu"]').val();
        if($(this).val() == ''){
            return false;
        }
        if(quyu == ''){
            layer.msg('请填写区域',{'icon':2});
            $(this).val('');
            return false;
        }
        $.post('/index.php/WagesJxb/getInfo',{'sid':sid,'xingming':$(this).val(),'qishu':qishu,'quyu':quyu},function(data){
            $(ts).parent().siblings().eq(0).children('input').val(1);
            $(ts).parent().siblings().eq(1).children('input').val(data.yuefen);
            $(ts).parent().siblings().eq(2).children('input').val(data.fenxiao);
            $(ts).parent().siblings().eq(3).children('input').val(data.bumen);
            $(ts).parent().siblings().eq(4).children('input').val(data.erjibm);
            $(ts).parent().siblings().eq(5).children('input').val(data.zhiwei);
            $(ts).parent().siblings().eq(6).children('input').val(data.gangweilx);
            $(ts).parent().siblings().eq(7).children('input').val(data.zaizhizt);
            // $(ts).parent().siblings().eq(8).children('input').val(data.xingming);
            $(ts).parent().siblings().eq(8).children('input').val(data.shenfenzhm);
            $(ts).parent().siblings().eq(9).children('input').val(data.ruzhisj);
            $(ts).parent().siblings().eq(10).children('input').val(data.rushutqnxzd);
            $(ts).parent().siblings().eq(11).children('input').val(data.gongzuonx);
            $(ts).parent().siblings().eq(12).children('input').val(data.biyegznx);
            $(ts).parent().siblings().eq(13).children('input').val(data.yingchuqts);
            $(ts).parent().siblings().eq(14).children('input').val(data.shijicqts);
            $(ts).parent().siblings().eq(15).children('input').val(data.xuelihyyz8zjnx);
            $(ts).parent().siblings().eq(16).children('input').val(data.nianxianjcamb);
            $(ts).parent().siblings().eq(17).children('input').val(data.shoufeikcdbxss);
            $(ts).parent().siblings().eq(18).children('input').val(data.qizhongjddbxss);
            $(ts).parent().siblings().eq(19).children('input').val(data.xiaoshis);
            $(ts).parent().siblings().eq(20).children('input').val(data.amibtzbl);
            $(ts).parent().siblings().eq(21).children('input').val(data.xiaoxuezh);
            $(ts).parent().siblings().eq(22).children('input').val(data.chuzhongzh);
            $(ts).parent().siblings().eq(23).children('input').val(data.xiaoxue);
            $(ts).parent().siblings().eq(24).children('input').val(data.chuzhong);
            $(ts).parent().siblings().eq(25).children('input').val(data.wanchenggs);
            $(ts).parent().siblings().eq(26).children('input').val(data.alibtzbl2);
            $(ts).parent().siblings().eq(27).children('input').val(data.defen);
            $(ts).parent().siblings().eq(28).children('input').val(data.alibtzbl3);
            $(ts).parent().siblings().eq(29).children('input').val(data.xiaoxue2);
            $(ts).parent().siblings().eq(30).children('input').val(data.chuzhong2);

            $(ts).parent().siblings().eq(31).children('input').val(data.xiaoxueskrcxs);
            $(ts).parent().siblings().eq(32).children('input').val(data.chuzhongskrcxs);
            $(ts).parent().siblings().eq(32).children('input').val(data.rencixspjdj);
            $(ts).parent().siblings().eq(34).children('input').val(data.amibqrsr);
            $(ts).parent().siblings().eq(35).children('input').val(data.amibfc);
            $(ts).parent().siblings().eq(36).children('input').val(data.yiduiybkzzjlfc);
            $(ts).parent().siblings().eq(37).children('input').val(data.jiaowujlfc);
            $(ts).parent().siblings().eq(38).children('input').val(data.zhengjiaxsxfyyefc);
            $(ts).parent().siblings().eq(39).children('input').val(data.miaoshazhyyejsfc);
            $(ts).parent().siblings().eq(40).children('input').val(data.xufeiyye);
            $(ts).parent().siblings().eq(41).children('input').val(data.jidukhrt);

            $(ts).parent().siblings().eq(42).children('input').val(data.bumenambpjfc);
            $(ts).parent().siblings().eq(43).children('input').val(data.baohel);
            $(ts).parent().siblings().eq(44).children('input').val(data.baohelkhfc);
            $(ts).parent().siblings().eq(45).children('input').val(data.benyueysje);

            $(ts).parent().siblings().eq(46).children('input').val(data.shangyuemzjzds);
            $(ts).parent().siblings().eq(47).children('input').val(data.yuemozjzds);
            $(ts).parent().siblings().eq(48).children('input').val(data.zhengjiazdgmbh);
            $(ts).parent().siblings().eq(49).children('input').val(data.yuemozjzdsjlfc);
            $(ts).parent().siblings().eq(50).children('input').val(data.xinshengwjbb);
            $(ts).parent().siblings().eq(51).children('input').val(data.tuanduixflrtkhfc);
            $(ts).parent().siblings().eq(52).children('input').val(data.xufeilrtkffc);
            $(ts).parent().siblings().eq(53).children('input').val(data.zengsongkjjdzskcxsdetc);
            $(ts).parent().siblings().eq(54).children('input').val(data.prtjpgkk);
            $(ts).parent().siblings().eq(55).children('input').val(data.liushijtfjxjs);
            $(ts).parent().siblings().eq(56).children('input').val(data.kaoqin);
            $(ts).parent().siblings().eq(57).children('input').val(data.suzhijj);
            $(ts).parent().siblings().eq(58).children('input').val(data.koufajl);
            $(ts).parent().siblings().eq(59).children('input').val(data.yufa);
            $(ts).parent().siblings().eq(60).children('input').val(data.fudonghj);
            $(ts).parent().siblings().eq(61).children('input').val(data.yueduyfzj);
            $(ts).parent().siblings().eq(62).children('input').val(data.gongjij);
            $(ts).parent().siblings().eq(63).children('input').val(data.gerensb);
            $(ts).parent().siblings().eq(64).children('input').val(data.gerensds);
            $(ts).parent().siblings().eq(65).children('input').val(data.yuedusfzj);
            $(ts).parent().siblings().eq(66).children('input').val(data.yuedusfjbgz);
            $(ts).parent().siblings().eq(67).children('input').val(data.yuedusfyj);
            $(ts).parent().siblings().eq(68).children('input').val(data.beizhu);
            if(!data){
                layer.msg('找不到'+$(ts).val()+'的相关信息',{'icon':2});
            }
        })
    })

    $('input[name="wanchenggs"]').on('change',function(){
        $('input[name="alibtzbl2"]').each(function(k,v){
            if($('input[name="zhiwei"]').eq(k).val() != '教务主任'){
                if($('input[name="zaizhizt"]').eq(k).val() == '正式期'){
                    if($('input[name="wanchenggs"]').eq(k).val() >= 24){
                        $(v).val( 0 );
                    }else{
                        $(v).val('-2%');
                    }
                }else{
                    if($('input[name="wanchenggs"]').eq(k).val() >= 60){
                        $(v).val( 0 );
                    }else{
                        $(v).val('-2%');
                    }
                }
            }else{
                $(v).val(0);
            }
        }) 
    })

    //获取小学标准收入提成比
    $('input[name="shoufeikcdbxss"]').on('change',function(){
        var ts = $(this);
        var r = $(this).val();
        var s = $(this).parent().next().children('input').val();
        var xxzh = $(this).parent().next().next().next().next().children('input').val();
        var czzh = $(this).parent().next().next().next().next().children('input').val();
        if (r && s){
            $.post('/index.php/WagesJxb/getXxbzsrtcb',{'r':r,'s':s,'xxzh':xxzh},function(data){
                if(data.status){
                    $(ts).parent().next().next().next().next().next().next().children('input').val(data.data);
                    jisuan();
                }
            })
            $.post('/index.php/WagesJxb/getCzbzsrtcb',{'r':r,'s':s,'xxzh':czzh},function(data){ 
                if(data.status){
                    $(ts).parent().next().next().next().next().next().next().children('input').val(data.data);
                    jisuan();
                }
            })
        }
    })
    //其中精读
    $('input[name="qizhongjddbxss"]').on('change',function(){
        var ts = $(this);
        var s = $(this).val();
        var r = $(this).parent().prev().children('input').val();
        var xxzh = $(this).parent().next().next().next().children('input').val();
        var czzh = $(this).parent().next().next().next().next().children('input').val();
        if (r && s){
            $.post('/index.php/WagesJxb/getXxbzsrtcb',{'r':r,'s':s,'xxzh':xxzh},function(data){ 
                if(data.status){
                    $(ts).parent().next().next().next().next().next().children('input').val(data.data);
                    jisuan();
                }
            })
            $.post('/index.php/WagesJxb/getCzbzsrtcb',{'r':r,'s':s,'xxzh':czzh},function(data){ 
                if(data.status){
                    $(ts).parent().next().next().next().next().next().next().children('input').val(data.data);
                    jisuan();
                }
            })
        }
    })
    //根据区域获取单价
    $('input[name="quyu"]').on('change ',function(){
        var quyu = $(this).val();
        $.post('/index.php/WagesJxb/getDanjia',{'quyu':quyu},function(data){
            console.log(data)
            if(data.status){
                $('input[name="rencixspjdj"]').val(data.danjia);
                jisuan();
            }
        })
    })
    //根据得分得出阿米巴标准调整比例
    $('input[name="defen"]').on('change ',function(){
        var defen = $(this).val();
        var ts = $(this);
        $.post('/index.php/WagesJxb/getJnpfbl',{'defen':defen},function(data){
            if(data.status){
                $(ts).parent().next().children('input').val(data.data);
                jisuan();
            }
        })
    })
    
    $('input').on('change',function(){
        //纵向合计
        jisuan();
    })

    