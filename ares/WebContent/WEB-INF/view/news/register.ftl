<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Modern an Admin Panel Category Flat Bootstarp Resposive Website Template | Register :: w3layouts</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="/ares/static_login/js/jquery-3.1.0.min.js"></script>
<link href="/ares/static_login/css/valid.css" rel="stylesheet" type="text/css">


<script type="text/javascript" src="/ares/static_login/Validform_v5.3.2_min.js"></script>

 <!-- Bootstrap Core CSS -->
<link href="/ares/static_login/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="/ares/static_login/css/style1.css" rel='stylesheet' type='text/css' />
<link href="/ares/static_login/css/font-awesome.css" rel="stylesheet"> 

<link rel="stylesheet" href="/ares/static_hou/css/platform-1.css" type="text/css">
<link rel="stylesheet" href="/ares/static_hou/css/easyform.css" type="text/css">


<!-- jQuery -->
<script src="/ares/static_login/js/jquery.min.js"></script>
<script src="/ares/static_hou/js/easyform.js"></script>
<!---//webfonts--->  
<!-- Bootstrap Core JavaScript -->
<script src="/ares/static_login/js/bootstrap.min.js"></script>

<script type="text/javascript">

    $(document).ready(function ()
    {
        var v = $('#form_yanzheng').easyform();

		$('#demo-form').easyform();

        v.is_submit = false;

        v.error = function (ef, i, r)
        {
            console.log("Error事件：" + i.id + "对象的值不符合" + r + "规则");
        };

        v.success = function (ef)
        {
            console.log("成功");
        };

        v.complete = function (ef)
        {
            console.log("完成");
        };

        $('#tip-test1').easytip();
        $('#tip-test2').easytip();
        $('#tip-test3').easytip();
        $('#tip-test4').easytip();


    });
	
	function ajax_demo(p)
    {
    
        $("#uid").trigger("easyform-ajax", true);
        $("#email").trigger("easyform-ajax", true);
    }

</script>

</head>
<body id="login">
  <div class="login-logo">
    <a href="#"><img src="/ares/static_login/img/tu.jpg" alt=""/></a>
  </div>
  <h2 class="form-heading">注册用户</h2>
  
  <form id="form_yanzheng"  class="form-signin app-cam" action="/ares/register/insert"  method="post" >
    
      <p>请填写您的个人信息</p>
      		 <td><input name="nickname" type="text" id="nickname" placeholder="请输入昵称"
                    		   data-easyform="length:2 16;real-time;"
                    		   data-message="昵称为2-16位的汉字"
                               data-easytip="class:easy-black;"></td>
      		
      		
     		<td><input name="tel" type="text" id="tel"  placeholder="请输入电话"
                    		   data-easyform="length:3 11;number;real-time;"
                    		   data-message="请输入正确的电话号码"
                               data-easytip="class:easy-black;char-chinese;"></td>
                               
                               
	    	<td><input name="qq" type="text" id="QQ" placeholder="请输入QQ"
		            		   data-easyform="length:6 11;number;real-time;"
		            		   data-message="请输入正确的QQ号码"
		                       data-easytip="class:easy-black;"></td>
	
 			<td><input name="email" type="text" id="email" placeholder="请输入邮箱"
                    		   data-easyform="email;real-time;real-time;"
                               data-message="Email格式要正确"
                               data-easytip="class:easy-black;"></td>    		
    		
    		
    		 <td style="text-align: left;">
                        <input name="sex" type="radio" id="sex-1" value="男" class="css-checkbox"
                               data-message="请选择一个性别" data-easytip="position:left;" 
                               style="margin-left: 20px;margin-right: 5px;">男
                        <input name="sex" type="radio" id="sex-2" value="女" class="css-checkbox" style="margin-left: 20px;margin-right: 5px;">
                        	女
           	        </td>
    		
	  <p>请填写您的登录信息</p>
	         <td><input name="username" type="text" id="uid" placeholder="请输入账号"
                           data-easyform="length:4 16;char-normal;real-time;ajax:ajax_demo(1);"
                           data-message="用户名必须为4—16位的英文字母或数字"
                           data-easytip="class:easy-black;"></td>
		      
		      
		    
            <td><input name="psw1" type="password" id="psw1" placeholder="请输入密码"
            		   data-easyform="length:6 16;real-time;"
                       data-message="密码必须为6—16位"
                       data-easytip="class:easy-black;"></td>
               
			<td><input name="psw2" type="password" id="psw2" placeholder="再次确认密码"
            		   data-easyform="length:6 16;equal:#psw1;real-time;"
                       data-message="两次密码输入要一致"
					   data-easytip="class:easy-black;"></td>			
			

      			<input class="btn btn-lg btn-success1 btn-block" type="submit" value="注册" ></button>
      <div class="registration">
      		   已经注册过
          <a class="" href="/ares/view/news/login">
       		      登录
          </a>
      </div>
  </form>
  
  
   <div class="copy_layout login register">
      <p>Copyright © 2015 Modern. All Rights Reserved</p>
   </div>
   
   

</body>
</html>
