<#import  "/news/inc/part.ftl" as part>
<!-- HEADER BEGIN -->
<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
			 url:"/ares/report/iflogin",
			 type:"GET",
			 dataType:"json",
			 success:function(data){
				if(data.flag==1){
					$("#logbtn").attr("href","/ares/user/selectAuser");
					$("#logbtn").html(data.nickname);
					$("#logout").html("退出");
					$("#logout").attr("onclick","logout()");
					$("#mess").attr("href","/ares/view/news/lemessage");
					$("#mess").html("宝贵意见");
				}else{
					$("#logbtn").attr("href","/ares/view/news/login");
					$("#logbtn").html(data.nickname+",请登录");
					$("#logout").html("");
					$("#logout").attr("onclick","");
					$("#mess").attr("href","");
					$("#mess").html("");
				}
			 }
		});
	});
	function logout(){
		$.ajax({
			 url:"/ares/report/newslogout",
			 type:"GET",
			 dataType:"json",
			 success:function(data){
				if(data.logoutFlag==1){
					window.location.href="/ares/view/news/aresindex";
				}
			 }
		});
	};
	function mohusearch(){
		var kerwords=$("#searchid").val();
		var url="/ares/view/news/search?"+encodeURI("keyword="+kerwords);
		window.location.href=url;
	};
</script>
        <header>
            <div id="header">
            	<section class="top">
                	<div class="inner">
                    	<div class="fl">
                        	<div class="block_top_menu">
                            	<ul>
                                	
                                </ul>
                            </div>
                        </div>
                        
                        <div class="fr">
                        	<div class="block_top_menu">
                            	<ul>
                                	<li><a href="" class="open_popup" id="logbtn"></a></li>
                                    <li><a href="/ares/view/news/register">注册</a></li>
                                    <li><a href="" id="mess"></a></li>
                                    <li><a href="javascript:void(0)" onclick="" id="logout"></a></li>
                                </ul>
                            </div>
                        </div>
                        
                    	<div class="clearboth"></div>
                    </div>
                </section>
                
            	<section class="bottom">
                	<div class="inner">
                    	<div id="logo_top"><a href="/ares/view/news/aresindex"><img src="/ares/static_news/images/AresLogo.png" alt="信息院课外活动网" title="信息院课外活动网网" /></a></div>
                        
                        <div class="block_today_date">
                        	<div class="num"><p id="num_top" /></div>
                            <div class="other">
                            	<p class="month_year"><span id="month_top"></span>, <span id="year_top"></span></p>
                                <p id="day_top" class="day" />
                            </div>
                        </div>
                        
                        <div class="fr">
                            <div class="block_languages">

                                <div class="clearboth"></div>
                             </div> 
                             
                            <div class="block_search_top">
                            	<form action="#" />
                                	<div class="field"><input type="text" class="w_def_text" title="请输入关键字" id="searchid"/></div>
                                    <input type="button" onclick="mohusearch()" class="button" value="Search" />
                                    
                                    <div class="clearboth"></div>
                                </form>
                            </div>
                        </div>
                        
                        <div class="clearboth"></div>
                    </div>
                </section>
                
                <!-- 新闻栏目-->
                <@part.newspart/>
                
                
            </div>
        </header>
    	<!-- HEADER END -->