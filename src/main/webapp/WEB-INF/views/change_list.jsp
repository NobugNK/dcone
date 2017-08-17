<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改节目顺序</title>
	<script src="js/jquery-3.2.1.min.js"></script>
  	<script src="js/bootstrap.min.js"></script>
  	<link href="css/bootstrap.min.css" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" /> 	
<style>
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
    background-image: url(img/bg666.jpg);  
    background-repeat:no-repeat;  
    background-position:0% 0%;  
    background-size:100% 100%;
    background-attachment:fixed;  
    background-color: #CC3333;  
}  
.becenter { margin-top: auto;
    margin-left: auto;
    margin-right: auto;
    height: 250px;
    width:400px;
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
<div class="col-lg-11 text-center text-info">
<h2 style="color:white;">修改节目顺序</h2>
</div>
<table class="table table-hover">
<tr Style="color:yellow;font-size:21px;"><td>节目名字</td><td>节目编号</td><td>节目的顺序</td><td>节目所属单位</td></tr>
<tbody><c:forEach items="${menus}" var="temp">
<tr><td>${temp.play_name}</td><td>${temp.pid}</td><td>${temp.play_order}</td><td>${temp.department}</td></tr>
</c:forEach></tbody>
</table>
<br>

	
<form name="lcform" id="lcform" action="listchanging">
 		<div class="becenter">
	<div class="col-lg-10">
			<input type="text" class="form-control" name="play_name" id="play-name"
				placeholder="请输入要修改的节目的名称" required autofocus />
	</div>
	<div class="col-lg-10">
			<input type="text" class="form-control" name="order" id="order"
				placeholder="请输入更改后的顺序" required autofocus />
	</div>
	
	<div class="col-lg-10">
		<button type="submit" class="form-control">修改</button>
 	</div>
 	
 	<div class="col-lg-10">
 	${result}
 	</div>
 	
 	</div>
</form>
	
</body>
</html>