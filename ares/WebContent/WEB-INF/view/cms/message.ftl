<#import  "/cms/inc/page.ftl" as lq>


<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>文章管理</title>
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
	
	$("#mes_allbox").click(function(){
		$('.mes_smallbox').attr('checked',$(this).attr('checked'));
	})
	
	$('#mes_deletebtn').click(function(){
		var list=$('.mes_smallbox:checked');
		var _list=[];
		
		$(list).each(function(i){
			_list.push(list[i].value);  
		});
		$.ajax({
			url:'/ares/message/deleteAll',
			data : {listmsg:_list},
			traditional : true,
			datatype:"json",
			type:"POST",
			success:function(data){
				window.location.reload();
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
    <li><a href="#">消息列表</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar1">
      
        
        <li class="click"><span><img src="/ares/static_hou/img/t03.png" /></span>
        	<a id="mes_deletebtn">删除</a>
        </li>
      </ul>
      
  
     
    
    </div>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input type="checkbox" id="mes_allbox"/></th>
        <th>编号<i class="sort"><img src="/ares/static_hou/img/px.gif" /></i></th>
        <th style="width: 500px;"	>留言内容</th>
        <th>提出意见用户</th>
        <th>提出意见时间</th>
  		<th>操作</th>
       
        </tr>
        </thead>
        
        <tbody>
        	<#list pagemodel.list  as mes>
		        <tr id="content">
		        <td><input type="checkbox" class="mes_smallbox" value="${mes['id']}"/></td>
		        <td>${mes_index+1}</td>
		        <td>${mes['cms_mes_content']}</td>
		        <td>${mes['cms_user_uname']}</td>
		        <td>${mes['cms_mes_time']}</td>
		        <td>
			        <a href="/ares/message/deletemesByid?id=${mes['id']}" class="tablelink"> 删除</a>
			    </td>
		        </tr> 
		     </#list>   
	        
        </tbody>
    </table>
    
   
    <div class="pagin">
    	<@lq.page   rows="${pagemodel.rows}" url="/ares/message/selectall" cpage="${pagemodel.cpage}"  pageSize="8"  totalpage="${pagemodel.totalpage}"/>
    </div>
    
    
</body>
</html>
