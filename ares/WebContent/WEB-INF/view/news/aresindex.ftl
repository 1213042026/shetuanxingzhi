<#import  "/news/inc/newslist.ftl" as newslist>
<#import  "/news/inc/topnews.ftl" as topnew>
<#import  "/news/inc/rownews.ftl" as rownew>
<#import  "/news/inc/jxnews.ftl" as jxnew>

<#include   "/news/inc/top.ftl" />

<body>
	<div class="wrapper sticky_footer">
    	
        <#include   "/news/inc/header.ftl" />
        <!-- CONTENT BEGIN -->
        <div id="content" class="right_sidebar">
        	<div class="inner">
            	<div class="general_content">
                	<div class="main_content">
                        <!--头条焦点图 -->
                        <@topnew.topnews partid="15"  divid="topnew"/>
                        <!--分栏目最新新闻 -->
                    	<@newslist.news  partname="国内新闻" partid="4"  divid="newslist"/>
                     	<!--分栏目最新新闻 -->
                    	<@newslist.news  partname="国际新闻" partid="5"  divid="newslist1"/>
                     	<!--分栏目最新新闻 -->
                    	<@newslist.news  partname="娱乐新闻"  partid="7"  divid="newslist3"/>
                     	<!--分栏目最新新闻 -->
                    	<@newslist.news   partname="体育新闻" partid="9"  divid="newslist4"/>
                        <!--底部社会热点新闻栏 -->
                       	<@rownew.footernews   partid="6" divid="footernew"  /> 
                    	
 				<!-- 侧栏     -->
                <div class="sidebar">
                    
                      
                   
                    <!--侧边热门话题 -->
                   
                    
                	<div class="clearboth"></div>
                </div>
            </div>
        </div>
    	<!-- CONTENT END -->
        
         <#include   "/news/inc/footer.ftl" />
    </div>
    
</body>

</html>