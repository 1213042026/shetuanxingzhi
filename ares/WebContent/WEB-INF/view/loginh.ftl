<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录后台管理系统</title>
<link href="/ares/static_login/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="/ares/static_login/js/jquery.js"></script>
<script src="/ares/static_login/js/cloud.js" type="text/javascript"></script>

<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
</script> 

</head>

<body style="background-color:#df7611; background-image:url(/ares/static_login/img/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">



    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  


<div class="logintop">    
    <span>欢迎登录后台管理界面平台</span>    
    <ul>
  		<li><a href="/ares/view/news/login">点击返回前台登录界面</a></li>
    </ul>    
    </div>
    
    <div class="loginbody">
    
    <span class="systemlogo"></span> 
       
    <div class="loginbox loginbox2">
    <form action="/ares/login/selectLogincms" method="post">
    <ul>
    <li><input name="h_username" type="text" class="loginpwd" placeholder="账号" onclick="JavaScript:this.value=''"/></li>
    <li><input name="h_password" type="password" class="loginpwd" placeholder="密码" onclick="JavaScript:this.value=''"/></li>
    <li class="yzm">
    <span>
   <input type="text" name="checkcode" id="J_codetext">
    </span><img src="/ares/checkcode.jsp"/ style="width:114px;height:46px" onclick="this.src='/ares/checkcode.jsp?d='+Math.random();"/>
    </li>
    <p style="color:red">${loginError}</p>	
    <li><input name="" type="submit" class="loginbtn" value="登录"  /></li>
     
    </ul>
    </form>
    
    </div>
    
    </div>
    
    
   
	
    
</body>

</html>
