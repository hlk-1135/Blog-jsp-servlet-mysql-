/**
 * 后台管理页面的js操作
 */
$(function(){
	$(".leftsidebar_box dt").css({"background-color":"#3992d0"});
	$(".leftsidebar_box dt img").attr("src","../images/left/select_xl01.png");
	$(".leftsidebar_box dd").hide();
	$(".jtitle").hide(); //文章列表默认隐藏
	
	$(".leftsidebar_box dt").click(function(){
		$(".leftsidebar_box dt").css({"background-color":"#3992d0"})
		$(this).css({"background-color": "#317eb4"});
		$(this).parent().find('dd').removeClass("menu_chioce");
		$(".leftsidebar_box dt img").attr("src","../images/left/select_xl01.png");
		$(this).parent().find('img').attr("src","../images/left/select_xl.png");
		$(".menu_chioce").slideUp(); 
		$(this).parent().find('dd').slideToggle();
		$(this).parent().find('dd').addClass("menu_chioce");
	});
	
	//文章列表
	$("#jtitle").click(function(){
		if($(".jtitle").is(":hidden")){
		       $(".jtitle").show();    //如果元素为隐藏,则将它显现
		}else{
		      $(".jtitle").hide();     //如果元素为显现,则将其隐藏
		}
	});
	
	//全选与取消全选操作
	$("#all").click(function(){   
	    if(this.checked){   
	        $(".list :checkbox").prop("checked", true);  
	    }else{   
		$(".list :checkbox").prop("checked", false);
	    }   
	});
});