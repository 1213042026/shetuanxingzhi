<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>文章详情</title>
<link href="/ares/static_hou/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="/ares/static_hou/js/jquery.js"></script>

</script>
</head>

<body class="sarchbody">

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="/ares/view/cms/worktop">首页</a></li>
    <li><a href="/ares/txt/select">文章</a></li>
    <li><a href="#">文章详情</a></li>
    <div style="float:right;margin-right:25px;margin-top:12px;"><a href="javascript:history.back(-1);" target="rightFrame">返回</a></div>
    </ul>
    </div>
    
    <div>
		<input style="margin-left: 5px; margin-top: 5px; width: 40px; color: blueviolet;" value="确认" onclick="location.href='/ares/txt/auditingTxt?id=${Txtxq['id']}'" type="button">
		<input style="margin-left: 5px; margin-top: 5px; width: 40px; color: blueviolet;" value="删除" onclick="if(confirm('确定删除么？')){location.href='/ares/txt/deleteTxtByid?id=${Txtxq['id']}'; return true}" type="button">
	</div>
   
	<div style="text-align: center; border: 1px solid peachpuff;margin-bottom: 50px;">
		
	 	<h4 style="font-size: 20px;"> ${Txtxq['cms_news_name']}</h4>
		<h2 style="padding: 10px;"> 发布者  :${Txtxq['cms_user_uname']} &nbsp;点击量  :${Txtxq['cms_news_hits']}  &nbsp;发布时间  :${Txtxq['cms_news_ptime']}</h2>
		<img src=${Txtxq['cms_news_imgurl']} style="width: 500px;height: 300px;"/>
		<p style="text-align:left;padding: 20px;">${Txtxq['cms_news_content']}</p>
	</div>

</body>

</html>
