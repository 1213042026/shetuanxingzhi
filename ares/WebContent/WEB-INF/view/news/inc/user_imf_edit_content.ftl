<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		
		<link rel="stylesheet" type="text/css" href="/ares/static_news/layout/easyform.css"/>
		<link rel="stylesheet" type="text/css" href="/ares/static_news/layout/platform-1.css"/>
		<link rel="stylesheet" type="text/css" href="/ares/static_news/layout/tab.css"/>
		<script src="/ares/static_news/layout/js/jquery-2.1.0.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="/ares/static_news/layout/js/easyform.js" type="text/javascript" charset="utf-8"></script>
		
		<style type="text/css">
		body{
			margin: 0;
			padding: 0;
			font:14px/28px "微软雅黑";
		}
		/*myself*/
		.place{height:40px; background:url(/ares/static_hou/img/righttop.gif) repeat-x;}
		.place span{line-height:40px; font-size: 9pt;font-weight:bold;float:left; margin-left:12px;color:#dc4e00;}
		.placeul li{float:left; line-height:40px; padding-left:7px; padding-right:12px; background:url(/ares/static_hou/img/rlist.gif) no-repeat right;list-style: none;}
		.placeul li:last-child{background:none;}
		a,a:focus{text-decoration:none;font-size: 9pt;color:#000;outline:none;blr:expression(this.onFocus=this.blur());}
		</style>
		
		<script type="text/javascript">

		    $(document).ready(function (){
		    	$.ajax({
					url:'/ares/user/selectuserData',
					datatype:"json",
					type:"GET",
					success:function(data){
						$("#uid").attr("placeholder",data.cms_user_uname);
						$("#email").attr("placeholder",data.cms_user_email);
						$("#nickname").attr("placeholder",data.cms_user_nickname);
						$("#tel").attr("placeholder",data.cms_user_tel);
						$("#QQ").attr("placeholder",data.cms_user_qq);
						
					}
					
				});
		    	
		    	
		    	
		    	
		        var v = $('#reg-form').easyform();
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
	<body>
	
	<div class="form-div">
        <form id="reg-form" action="/ares/user/resetUser" method="post">
            <table>
                <tr>
                    <td>账号</td>
                    <td><input name="cms_user_uname" type="text" id="uid" 
                               data-easyform="length:4 16;char-normal;real-time;ajax:ajax_demo(1);"
                               data-message="用户名必须为4—16位的英文字母或数字"
                               data-easytip="class:easy-red;" data-message-ajax="用户名已存在!">
                    </td>
                </tr>
                <tr>
                    <td>密码</td>
                    <td><input name="cms_user_pwd" type="password" id="psw1" placeholder="请输入新密码"
                    		   data-easyform="length:6 16;real-time;"
                               data-message="密码必须为6—16位"
                               data-easytip="class:easy-red;"></td>
                </tr>
                <tr>
                    <td>确认密码</td>
                    <td><input name="psw2" type="password" id="psw2" placeholder="再次确认密码"
                    		   data-easyform="length:6 16;equal:#psw1;real-time;"
                               data-message="两次密码输入要一致"
							   data-easytip="class:easy-red;"></td>
                </tr>
                <tr>
                    <td>email</td>
                    <td><input name="cms_user_email" type="text" id="email"
                    		   data-easyform="email;real-time;real-time;"
                               data-message="Email格式要正确"
                               data-easytip="class:easy-red;"></td>
                </tr>
                <tr>
                    <td>昵称</td>
                    <td><input name="cms_user_nickname" type="text" id="nickname" 
                    		   data-easyform="length:2 16;real-time;"
                    		   data-message="昵称为2-16位的汉字"
                               data-easytip="class:easy-red;"></td>
                </tr>
                <tr>
                    <th width="60" style="padding: 0;">性别</th>
                    <td style="text-align: left;">
                        <input name="cms_user_sex" type="radio" id="sex-1" checked="checked" value="男" class="css-checkbox"
                               data-message="请选择一个性别" data-easytip="position:left;" 
                               style="margin-left: 20px;margin-right: 5px;">男
                        <input name="cms_user_sex" type="radio" id="sex-2" value="女" class="css-checkbox" style="margin-left: 20px;margin-right: 5px;">
                        	女
           	        </td>
                </tr>
                 <tr>
                    <td>电话</td>
                    <td><input name="cms_user_tel" type="text" id="tel"  
                    		   data-easyform="length:3 11;number;real-time;"
                    		   data-message="请输入正确的电话号码"
                               data-easytip="class:easy-red;char-chinese;"></td>
                </tr>
                 <tr>
                    <td>QQ</td>
                    <td><input name="cms_user_qq" type="text" id="QQ" 
                    		   data-easyform="length:6 11;number;real-time;"
                    		   data-message="请输入正确的QQ号码"
                               data-easytip="class:easy-red;"></td>
                </tr>
                
                
                
            </table>

            <div class="buttons" >
                <input value=" 完 成 修 改 "  type="submit" style="margin-left: 151px;">
                <input value="  重 置  " style="width: 90px;height: 31px;" type="reset" style="margin-left: 151px;">
            </div>
			
            <br class="clear">
        </form>
    </div>

		
	</body>
</html>
