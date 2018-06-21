$(document).ready(function(){
	  $(".click").click(function(){
	 	 $(".tip").fadeIn(200);
	  });
	  
	  $(".tiptop a").click(function(){
	 	 $(".tip").fadeOut(200);
	   });
	
	  $(".sure").click(function(){
	  	$(".tip").fadeOut(100);
	  });
	
	  $(".cancel").click(function(){
	  	$(".tip").fadeOut(100);
	  });
});