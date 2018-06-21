<!--文章内容模块 -->
<#macro  content  >
	<script type="text/javascript">
		var newsid=request("id");
		$(document).ready(function(){
		$.ajax({
			 url:"/ares/report/selectAnew",
			 type:"GET",
			 data:{"newsid":newsid},
			 dataType:"json",
			 success:function(data){
					$("#contentPart").html(data.cms_part_name);
					$("#contentTitle").html(data.cms_news_name);
					$("#contentDate").html("发布时间："+data.cms_news_ptime);
					$("#contentAuther").html("作者："+data.cms_user_nickname);
					$("#recontent").html(data.cms_news_content);
					$("#contentimg").attr("src",data.cms_news_imgurl);
			 }
		});
	});
	</script>
	<div class="block_breadcrumbs">
    	<div class="text"><p>您所在的位置:</p></div>
        
        <ul>
        	<li><a href="/ares/view/news/aresindex">首页</a></li>
            <li><a  id="contentPart"></a></li>
            <li>正文</li>
        </ul>
    </div>
    <div class="separator" style="height:30px;"></div>
    
    <article class="block_single_post">
    	 <p class="title" id="contentTitle"></p>
    	
    	<div class="f_pic"><a ><img id="contentimg" src="" alt="" style="height: 300px;width: 600px;"/></a></div>
     
        <div class="info">
            <div class="date" ><p id="contentDate"></p></div>
            <div class="author" ><p id="contentAuther"></p></div>
        </div>
        
        <div class="content" id="recontent">
			
        </div>
      
    </article>
    
      <div class="line_3" style="margin:50px 0px 25px;"></div>		
</#macro>	