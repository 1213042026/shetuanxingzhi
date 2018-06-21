<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
</head>
<style>

    .basic-grey {
        margin-left:auto;
        margin-right:auto;
        max-width: 1000px;
        background: #F7F7F7;
        padding: 25px 15px 25px 10px;
        font: 12px Georgia, "Times New Roman", Times, serif;
        color: #888;
        text-shadow: 1px 1px 1px #FFF;
        border:1px solid #E4E4E4;
    }
    .basic-grey h1 {
        font-size: 25px;
        padding: 0px 0px 10px 40px;
        display: block;
        border-bottom:1px solid #E4E4E4;
        margin: -10px -15px 30px -10px;;
        color: #888;
    }
    .basic-grey h1>span {
        display: block;
        font-size: 11px;
    }
    .basic-grey label {
        display: block;
        margin: 0px;
    }
    .basic-grey label>span {
        float: left;
        width: 20%;
        text-align: right;
        padding-right: 10px;
        margin-top: 10px;
        color: #888;
    }
     .basic-grey textarea{
        border: 1px solid #DADADA;
        color: #888;
        height: 30px;
        margin-bottom: 16px;
        margin-right: 6px;
        margin-top: 2px;
        outline: 0 none;
        padding: 3px 3px 3px 5px;
        width: 70%;
        font-size: 12px;
        line-height:15px;
        box-shadow: inset 0px 1px 4px #ECECEC;
        -moz-box-shadow: inset 0px 1px 4px #ECECEC;
        -webkit-box-shadow: inset 0px 1px 4px #ECECEC;
    }
    .basic-grey textarea{
        padding: 5px 3px 3px 5px;
    }
    .basic-grey textarea{
        height:400px;
    }
    .basic-grey .button {
        background: #ff654d;
        border: none;
        font-weight:bold;
        font-size:14px;
        padding: 10px 25px 10px 25px;
        color:white;
        box-shadow: 1px 1px 5px #B6B6B6;
        border-radius: 3px;
        text-shadow: 1px 1px 1px #9E3F3F;
        cursor: pointer;
    }
    .basic-grey .button:hover {
        background: #CF7A7A
    }
</style>
 <script language="JavaScript" src="/ares/static_hou/js/jquery.js"></script>
		<script language="JavaScript">
			function CheckForm(){
			form=document.form1;
			//得到用户输入的信息
			var message=form.message.value;
			if(message.length==0){
				 $("#null").css("display","block"); 
				return false;//返回
			}else{
				$("#null").css("display","none");
				//$("#message").val("");
			}
			}
	
		</script>
<body>
<form action="/ares/message/insertMessage" method="post" class="basic-grey" onsubmit="return CheckForm()" name="form1">
    <h1>
        <span>请填写您的意见</span>
    </h1>
    <label>
        <span>建议:</span>
        <textarea id="message" name="message" placeholder="在这里填写您的建议给我们" value=""></textarea>
    </label>
    <label>
        <span>&nbsp;</span>
        <input type="submit" class="button" value="提交" />
        <span id="null" style="color:red;display:none;float:right;margin-right:70px;font-size:15px;">(请填写您的意见)</span>
    </label>
</form>
</body>
</html>