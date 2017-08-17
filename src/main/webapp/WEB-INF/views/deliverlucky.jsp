<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发红包</title>
	<script src="js/jquery-3.2.1.min.js"></script>
  	<script src="js/bootstrap.min.js"></script>
  	<link href="css/bootstrap.min.css" rel="stylesheet">
  	<link href="css/buttons.css" rel="stylesheet">
<style>
body {  
    margin: 0;  
    background-image: url();    
    background-repeat:no-repeat;  
        background-position:0% 0%;  
    background-size:cover;  
    background-color: #f8f6e9;  
}  
a:hover
{
color:red;
}

</style>

<script type="text/javascript">
function control(){
	var status=document.getElementById("status").innerHTML;
	
	if(status=="当前抢红包功能状态：开")
		{
		window.location.href="shutdownluck";
		}
	else
		{
		window.location.href="deliveringluck";
		}
}
function setSwitch(){
	var status=document.getElementById("status").innerHTML;
	if(status=="当前抢红包功能状态：开")
	{
	document.getElementById("switch").innerHTML="OFF";
	}
	else
	{
	document.getElementById("switch").innerHTML="ON";
	}
}

</script>

</head>
<body>

 
 <div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<h1 class="text-center" style="color:red;font-size:60px;">
				抢红包功能管理
			</h1>
			<h1 id="status" style="width:900px; margin:0 auto;">当前抢红包功能状态：${status}</h1>
			<span class="button-wrap" style=" margin:0 auto;">
   			 <a id="switch" onclick="control()" class="button button-pill">抢红包开关</a>
 			</span>
		</div>
	</div>
</div>
 
 
 
<script type="text/javascript">
setSwitch();
</script>
</body>
</html>