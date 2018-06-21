<#import  "/cms/inc/page.ftl" as lq>


<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户管理</title>
<link href="/ares/static_hou/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="/ares/static_hou/js/jquery.js"></script>

<script type="text/javascript">
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
	
	$("#user_allbox").click(function(){
		$('.user_smallbox').attr('checked',$(this).attr('checked'));
	})
	
	$('#user_deletebtn').click(function(){

		var list=$('.user_smallbox:checked');
		var _list=[];
		
		$(list).each(function(i){
			_list.push(list[i].value);  
		});
		$.ajax({
			url:'/ares/user/deleteAll',
			data : {listvals:_list},
			traditional : true,
			datatype:"json",
			type:"POST",
			success:function(data){
			 location.reload();
				
			}
			
		});
	});
	

});
</script>


</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="/ares/view/cms/worktop">首页</a></li>
    <li><a href="#">用户列表</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar1">
        <li class="click"><span><img src="/ares/static_hou/img/t01.png" /></span>
        	<a href="/ares/view/cms/adduser">添加</a>
        </li>
        
        <li class="click"><span><img src="/ares/static_hou/img/t03.png" /></span>
        	<a id="user_deletebtn">删除</a>
        </li>
      </ul>
      
      <form action="/ares/user/selectBycondition" method="post">
      <ul  class="toolbar2">
	     <li>
	  			<p>用户名:</p>
					<input name="keyword" type="text">
		</li>
		 <li>
				<input  class="sub_input" type="submit" value="查询">
		</li>
      </ul>  
      </form>  
     
    
    </div>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input type="checkbox" id="user_allbox"/></th>
        <th>编号<i class="sort"><img src="/ares/static_hou/img/px.gif" /></i></th>
        <th>用户名</th>
        <th>昵称</th>
        <th>性别</th>
        <th>电子邮箱</th>
        <th>电话</th>
        <th>QQ</th>
        <th>用户角色</th>
        <th>最后登录时间</th>
        <th>操作</th>
        </tr>
        </thead>
        
        <tbody>
        	<#list pagemodel.list  as user>
		        <tr id="content">
		        <td><input type="checkbox" class="user_smallbox" value="${user['id']}"/></td>
		        <td>${user_index+1}</td>
		        <td>${user['cms_user_uname']}</td>
		        <td>${user['cms_user_nickname']}</td>
		        <td>${user['cms_user_sex']}</td>
		        <td>${user['cms_user_email']}</td>
		        <td>${user['cms_user_tel']}</td>
		        <td>${user['cms_user_qq']}</td>
		        <td>${user['cms_user_role']}</td>
		        <td>${user['cms_user_logtime']}</td>
		        <td>
		        	 <a href="/ares/user/selectuserImf?id=${user['id']}" target="rightFrame" class="tablelink">查看</a>  
			        <a href="/ares/user/selectByid?id=${user['id']}" target="rightFrame" class="tablelink">修改</a>     
			        <a href="javascript:void(0)" class="tablelink" onclick="if(confirm('确定删除么？')){location.href='/ares/user/deleteUserByid?id=${user['id']}'; return true}"> 删除</a>
		        </td>
		        </tr> 
		     </#list>   
	        
        </tbody>
    </table>
    
   
    <div class="pagin">
    	<@lq.page   rows="${pagemodel.rows}" url="/ares/user/select" cpage="${pagemodel.cpage}"  pageSize="8"  totalpage="${pagemodel.totalpage}"/>
    </div>
    
    
</body>
</html>
