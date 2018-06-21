$(function(){	
	
	$("#worktop_a").click(function(){
		$("#menu_dd").hide();
	})
	$("#worktop_b").click(function(){
		$("#menu_dd").hide();
	})
	$("#user_a").click(function(){
		$("#menu_dd").hide();
	})
	//导航切换
	$(".menuson .header").click(function(){
		var $parent = $(this).parent();
		$(".menuson>li.active").not($parent).removeClass("active open").find('.sub-menus').hide();
		
		$parent.addClass("active");
		if(!!$(this).next('.sub-menus').size()){
			if($parent.hasClass("open")){
				$parent.removeClass("open").find('.sub-menus').hide();
			}else{
				$parent.addClass("open").find('.sub-menus').show();	
			}
		}
	});
	
	// 三级菜单点击
	$('.sub-menus li').click(function(e) {
        $(".sub-menus li.active").removeClass("active")
		$(this).addClass("active");
    });
	
    //$('.title').click(function(){
    //	var $ul = $(this).next('ul');
    //	$('dd').find('.menuson').slideUp();
    //	if($ul.is(':visible')){
    //		$(this).next('.menuson').slideUp();
    //	}else{
    //		$(this).next('.menuson').slideDown();
    //	}
    //});
})	





	<!--加载 -->
	window.onload = function() {
		this.Function = setTime();
	}
	<!--获取当前时间 -->
	function setTime() {
		var dateTime = new Date();
		var yy = dateTime.getFullYear();
		var MM = dateTime.getMonth() + 1;
		var dd = dateTime.getDate();
		var hh = dateTime.getHours();
		var mm = dateTime.getMinutes();
		var ss = dateTime.getSeconds();
		mm = extra(mm);
		ss = extra(ss);
		var time = yy + "/" + MM + "/" + dd + " " + hh + ":" + mm + ":" + ss
		document.getElementById("mytime").innerText = time;
		setTimeout(setTime, 1000)
	}

	function extra(x) {
		if(x < 10) {
			return "0" + x;
		} else {
			return x;
		}
	}
	
