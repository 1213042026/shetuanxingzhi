<!--热门话题  -->
<#macro  jxnews  partname  partid  divid >
	<script  id="thetmp4" type="text/x-jsrender">
	  {{for  #data }}
			<div class="article">
				<div class="pic">
					<a href="/ares/view/news/newscontent?id={{:id}}" class="w_hover">
						<img src="{{:cms_news_imgurl}}" alt="" style="height: 50px;width: 80px;"/>
						<span></span>
					</a>
				</div>
                        
				<div class="text">
					<p class="title"><a href="/ares/view/news/newscontent?id={{:id}}">{{:cms_news_name}}</a></p>
					<div class="date"><p>{{:cms_news_ptime}}</p></div>
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
			$.ajax({
				 url:"/ares/report/selectnews",
				 type:"GET",
				 data:{"partid":${partid}},
				 dataType:"json",
				 success:function(data){
					var html = $("#thetmp4").render(data); 
					$("#${divid}").append(html);	
				 }
			});
		});
	</script>
	<div class="block_popular_posts" id=${divid}>
    	<h4>今日头条</h4>
       	
		 
    </div>
    <a href="/ares/view/news/partnews?id=${partid}" class="" style="font-size:12px;color: #F24125;float: right;margin-top: 10px;">更多文章>></a>                    
	<div class="separator" style="height:31px;"></div>
	<div class="separator" style="height:31px;"></div>			
</#macro>	