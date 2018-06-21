<!--根据学院热点模块  -->
<#macro  footernews  partid  divid>
	<script  id="thetmp3" type="text/x-jsrender">
	  {{for  #data }}
			<li>
                <div class="block_best_material_post">
                    <div class="f_pic"><a href="/ares/view/news/newscontent?id={{:id}}" class="w_hover"><img src="{{:cms_news_imgurl}}" alt="" style="height: 100px;width: 185px;" /><span></span></a></div>
                    <p class="title"><a href="/ares/view/news/newscontent?id={{:id}}">{{:cms_news_name}}</a></p>
                </div>
            </li>
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
					$('#best_materials_slider').flexslider({
						animation : 'slide',
						controlNav : false,
						directionNav : true,
						animationLoop : false,
						slideshow : false,
						itemWidth: 213,
						itemMargin: 0,
						minItems: 1,
						maxItems: 3,
						move: 1,
						useCSS : false
					});	
				 }
			});
		});
	</script>
	<h3 style="font-size:16px;">学院热点</h3>
	<div class="line_4" style="margin:-4px 0px 18px;"></div>
		
		<div class="block_best_materials">
			<div class="slider">
		        <div id="best_materials_slider" class="flexslider">
		            <ul class="slides" id="${divid}">
		                
		            </ul>
		        </div>
		    </div>
		</div>
	    
	    <div class="line_2" style="margin:20px 0px 0px;"></div>
	    
	</div>
</#macro>