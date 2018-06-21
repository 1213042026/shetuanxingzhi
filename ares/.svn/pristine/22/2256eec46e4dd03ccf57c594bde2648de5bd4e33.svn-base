<!--搜索内容模块  -->
<#macro  search>
<script  id="searchcontent" type="text/x-jsrender">
  {{for  #data }}
		<div class="block_home_post">
			<div class="pic">
				<a href="/ares/view/news/newscontent?id={{:id}}" class="w_hover">
					<img src="{{:cms_news_imgurl}}" alt="" style="height: 50px;width: 80px;"/>
					<span></span>
				</a>
			</div>
	                
			<div class="text">
				<p class="title"><a href="/ares/view/news/newscontent?id={{:id}}">{{:cms_news_name}}</a></p>
				<div class="date"><p>{{:cms_news_ptime}}</p></div>
				<div class="date" style="margin-left:10px"><p>{{:cms_part_name}}</p></div>
	            <div class="icons">
	            	<ul>
	                	<li><a  class="views">{{:cms_news_hits}}</a></li>
	                </ul>
	            </div>
			</div>
		</div>
		<div class="line_3"></div>
	
   {{/for}}	
</script>
<script type="text/javascript">
	$(document).ready(function(){
		var keywords=request("keyword");
		$.ajax({
			 url:"/ares/report/selectNewsByKeyword",
			 type:"GET",
			 data:{"keyword":keywords},
			 dataType:"json",
			 success:function(data){
			 	if(data.souFlag==1){
			 		var html = $("#searchcontent").render(data.list); 
					$("#searchresult").append(html);
			 	}else{
			 		$("#searchresult").text("未找到对应的新闻");
			 	}
					
			 }
		});
	});
</script>
	<h3 style="font-size:18px;">搜索结果</h3>
    <div class="line_4" style="margin:-4px 0px 18px;"></div>
	<div class="block_topic_news" id="searchresult">
	
	</div>
	 <div class="" style="margin:20px 0px 24px;"></div>
                        
    
    <div class="clearboth"></div>
    
    <div class="line_2" style="margin:24px 0px 35px;"></div>		
</#macro>	