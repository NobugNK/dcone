<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>节目添加</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" /> 
	<script src="js/jquery-3.2.1.min.js"></script>
  	<script src="js/bootstrap.min.js"></script>
  	<link href="css/bootstrap.min.css" rel="stylesheet">
  	<link rel="stylesheet" href="css/animsition.min.css">
<script src="js/animsition.min.js"></script>
<script src="js/aimsition.js"></script>
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
 	background-color:white; 
}  
.becenter { margin-top: auto;
     margin-left: auto;
     margin-right: auto;
     height: 250px;
     width:400px;
     padding: 5%;
     }
@media screen and (max-width: 500px) { 
.becenter {width: auto;} 
} 
 .becenter input{
  margin-top:2%;
 }
 .becenter button{
  margin-top:2%;
 }
 
</style>
<script type="text/javascript">
$(document).ready(function() {
	  $(".animsition").animsition();
});
</script>
</head>
<body>
<div class="" style="padding:5%;">
<div class="col-lg-11 text-center text-info">
<h2 style="color:white;">添加节目</h2>
</div>
<table class="table table-hover">
<tr Style="color:yellow;font-size:21px;" ><td>节目名字</td><td>节目编号</td><td>节目的顺序</td><td>节目所属单位</td></tr>
<tbody><c:forEach items="${menus}" var="temp">
<tr><td>${temp.play_name}</td><td>${temp.pid}</td><td>${temp.play_order}</td><td>${temp.department}</td></tr>
</c:forEach></tbody>
</table>
<br>

	<form name="form1" id="form1" action="listadding">
	  <div class="becenter">
	  
		<div class="col-lg-10">
			<input type="text" class="form-control" name="play_name" id="play_name"
				placeholder="请输入节目名称" required autofocus />
		</div>

		<div class="col-lg-10">
                    <input class="form-control" name="play_order" id="play_order" placeholder="请输入节目顺序" required autofocus/>
                </div>
		<div class="col-lg-10">
                    <input class="form-control" name="department" id="department" placeholder="请输入节目所属部门" required autofocus/>
                </div>
		<div class="col-lg-10">
			<input class="form-control" type="submit" style="background-color: #e6f8f9" >
		</div>
		
		<div class="col-lg-10">
			${result}
		</div>
      </div>
	</form>
</div>
</body>
</html>