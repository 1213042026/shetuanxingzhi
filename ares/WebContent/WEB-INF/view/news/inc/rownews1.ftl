<!--文章内容模块 -->
<#macro  rownews1  partid  divid>
	<script  id="thetmp3" type="text/x-jsrender">
	  {{for  #data }}
			<article class="block_news_post"  onmouseover="init_pic_hover()">
                <div class="f_pic"><a href="/ares/view/news/newscontent?id={{:id}}" class="general_pic_hover scale_small"><img src="{{:cms_news_imgurl}}" style="height: 130px;width: 130px;" alt="" /></a></div>
              	<p class="category"><a >{{:cms_part_name}}</a></p>
                <p class="title"><a href="/ares/view/news/newscontent?id={{:id}}">{{:cms_news_name}}</a></p>
                <div class="info">
                    <div class="date"><p>{{:cms_news_ptime}}</p> </div>
                    <div class="date"><p><a  class="views">{{:cms_news_hits}}</a></p> </div>
                    
                    <div class="clearboth"></div>
                </div>
            </article>
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
					var html = $("#thetmp3").render(data); 
					$("#${divid}").append(html);
						
				 }
			});
		});
	</script>
	<div class="block_related_posts">
    	<h3>社会热点</h3>
        
        <div class="block_main_news" id="${divid}">
        	
        	<div class="clearboth"></div>
        </div>
        
    </div>
    
    <div class="line_2" style="margin:5px 0px 28px;"></div>	
</#macro>	