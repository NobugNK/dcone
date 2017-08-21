<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>节目列表</title>
	<script src="js/jquery-3.2.1.min.js"></script>
  	<script src="js/bootstrap.min.js"></script>
  	<link href="css/bootstrap.min.css" rel="stylesheet">
 	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" /> 
 <style type="text/css">  
caption
  {
 color: Orange;
 }
 
 tr:hover
 {
 color: black;
 } 
 td
 {
 text-align:center;
 }
 
 table{
 background-color:grey;
 }
  
 body {  
 	color:white;
     margin: 0;  
  
	background-attachment: fixed;
     background-image: url(img/playbg.jpg);    
     background-repeat:no-repeat;  
         background-position:0% 0%;  
    background-size:100% 100%; 
     background-color:white;
  

     
 }  
 .becenter { margin-top: auto;
     margin-left: auto;
     margin-right: auto;
     height: 250px;
     width:auto;
     padding: 5%;
     }
  .becenter input{
   margin-top:2%;
  }
  .becenter button{
   margin-top:2%;
  }
  
  
 
 
</style>

</head>
<body>
<h1>节目列表</h1>
<table class="table table-hover">
<caption>当前用户为${user_msg.username},您的余额为${user_msg.amount/100}元</caption>
<tr Style="color:yellow;font-size:21px"><td>节目名字</td><td>节目编号</td><td>节目所属单位</td></tr>
<tbody><c:forEach items="${menus}" var="temp">
<tr><td>${temp.play_name}</td><td>${temp.pid}</td><td>${temp.department}</td></tr>
</c:forEach></tbody>
</table>
<br>
 
<form action="gifting">
 		<div class="becenter">
	<div class="col-lg-10">
			<input type="text" class="form-control" name="pid" id="pid"
				placeholder="请输入要打赏的节目的序号" required autofocus />
	</div>
	<div class="col-lg-10">
			<input type="text" class="form-control" name="gift_number" id="gift_number"
				placeholder="请输入要打赏的金额" required autofocus />
	</div>
	
	<div class="col-lg-10">
		<button type="submit" class="form-control" >
 		<span class="glyphicon glyphicon-jpy" aria-hidden="true"></span>打赏</button>
 	</div>
 	
 	<div class="col-lg-10">
 	${msg}
 	</div>
 		</div>
	
	


</form>

</body>
</html>