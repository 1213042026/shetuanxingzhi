<!--栏目模块  -->
<#macro  newspart>
<script  id="part" type="text/x-jsrender">
 {{for  #data}}
	   {{if id != '1'}}
	    	<li><a href="/ares/view/news/partnews?id={{:id}}" onclick="">{{:cms_part_name}}</a></li>
		{{else}}
		    <li><a href="/ares/view/news/aresindex" onclick="">{{:cms_part_name}}</a></li>
		{{/if}}
	{{/for}}	
</script>
<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
			 url:"/ares/report/part",
			 type:"GET",
			 dataType:"json",
			 success:function(data){
				var html = $("#part").render(data); 
				$("#partclo").append(html);
			 }
		});
	});
</script>
<section class="section_main_menu">
	<div class="inner">
    	<nav class="main_menu">
       		<ul id="partclo">
				
			  	
		  	</ul>
		</nav>
		                        
		<div class="block_clock">
        	<p>北京时间: <span id="time"></span></p>
        </div>
    </div>
</section>
	 	
</#macro>	