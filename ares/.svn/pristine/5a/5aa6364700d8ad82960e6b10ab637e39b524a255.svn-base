$(function(){	
	//顶部导航切换
	//$(".nav li a").click(function(){
	//	$(".nav li a.selected").removeClass("selected")
	//	$(this).addClass("selected");
	//})	
})	
$(document).ready(function(){
	$.ajax({
		url:"/ares/message/selectallrows",
		dataType:"json",
		success:function(data){
			$("#messagerows").html(data.allrows)
		}
	});
})