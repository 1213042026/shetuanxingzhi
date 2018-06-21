<#import  "/cms/inc/menu.ftl" as  my/>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Ares_cms后台</title>
		<link href="/ares/static_hou/css/style.css" rel="stylesheet" type="text/css" />
		<link href="/ares/static_hou/css/skin.css" rel="stylesheet" type="text/css" />
		<script language="JavaScript" src="/ares/static_hou/js/jquery.js"></script>
		<script type="text/javascript" >
			<#include   "/cms/inc/headerjs.ftl"/>
		</script>
		<script type="text/javascript" >
			<#include   "/cms/inc/menujs.ftl"/>
		</script>	
	</head>
	<body>
		<#include   "/cms/inc/header.ftl"/>	
		<@my.page list/>
		<iframe name="rightFrame" id="rightFrame"  title="rightFrame" src=${frameurl}>
		</iframe>
		<#include   "/cms/inc/footer.ftl"/>
	</body>
</html>