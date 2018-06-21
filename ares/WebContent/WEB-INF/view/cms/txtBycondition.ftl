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
	
	$("#allbox").click(function(){
		$('.smallbox').attr('checked',$(this).attr('checked'));
	})
	
	$('#deletebtn').click(function(){
		var list=$('.smallbox:checked');
		var _list=[];
		
		$(list).each(function(i){
			_list.push(list[i].value);  
		});
		$.ajax({
			url:'/ares/txt/deleteAll',
			data : {listval:_list},
			traditional : true,
			datatype:"json",
			type:"POST",
			success:function(data){
				
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
    <li><a href="#">文章列表</a></li>
    <div style="float:right;margin-right:25px;margin-top:12px;"><a href="javascript:history.back(-1);" target="rightFrame">返回</a></div>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar1">
        <li class="click"><span><img src="/ares/static_hou/img/t01.png" /></span>
        	<a href="/ares/txt/tjtxt">添加</a>
        </li>
        
        <li class="click"><span><img src="/ares/static_hou/img/t03.png" /></span>
        	<a id="deletebtn">删除</a>
        </li>
      </ul>
      
      <form action="/ares/txt/selectBycondition" method="post">
      <ul  class="toolbar2">
	      <li>
	  			<p>标 题:</p>
				<input  name="keyword" type="text"/>
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
        <th><input type="checkbox" id="allbox"/></th>
        <th>编号<i class="sort"><img src="/ares/static_hou/img/px.gif" /></i></th>
        <th>标题</th>
        <th>所属栏目</th>
        <th>用户</th>
        <th>发布时间</th>
        <th>是否确认</th>
        <th>操作</th>
        </tr>
        </thead>
        
        <tbody>
        	<#list pagemodels.list  as t>
		        <tr id="content">
		        <td><input type="checkbox" class="smallbox" value="${t['id']}"/></td>
		        <td>${t_index+1}</td>
		        <td>${t['cms_news_name']}</td>
		        <td>${t['cms_part_name']}</td>
		        <td>${t['cms_user_uname']}</td>
		        <td>${t['cms_news_ptime']}</td>
		        <td>${t['cms_status_word']}</td>
		        <td>
			        <a href="/ares/txt/selectxq?id=${t['id']}" target="rightFrame" class="tablelink">查看</a>     
			        <a href="/ares/txt/deleteTxtByid?id=${t['id']}" class="tablelink"> 删除</a>
			        <a href="/ares/txt/auditingTxt?id=${t['id']}" target="rightFrame" class="tablelink">确认</a>
		        </td>
		        </tr> 
		     </#list>   
	        
        </tbody>
    </table>
    
   
    <div class="pagin">
    	<@lq.page   rows="${pagemodels.rows}" url="/ares/txt/selectBycondition" cpage="${pagemodels.cpage}"  pageSize="8"  totalpage="${pagemodels.totalpage}"/>
    </div>
    
    
</body>
</html>
