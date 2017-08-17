<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" /> 
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery-3.2.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" /> 
<title>账户记录信息</title>
<style type="text/css">
body{
background-color:#CC3333;
background-image: url();
background-size:100%;
background-repeat:no-repeat;
background-attachment:fixed;
color:white;
}

tr:hover
{
color: black;
} 

.becenter { margin-top:auto;
    margin-left: auto;
    margin-right: auto;
    width:800px;
    padding: 0%;
    
    }
 .becenter tr{
	color: #FFFFE0;
	font-size:22px;
 }
</style>
</head>
<body>
<div class="page-header text-center">
<h2>
当前查询的用户是${user.username},账户余额为${wallet.amount/100}元
</h2>
</div>

<div class="becenter">
<form action="sort_loging_bytime" >
<table class="table table-condensed">
<tr><td>起始时间</td><td><input class="form-control" type="date" id="starttime" name="starttime" style="color:black"></td>
<td>结束时间</td><td><input class="form-control" type="date" id="endtime" name="endtime" style="color:black"></td><td><input class="form-control" type="submit" value="查询" style="color:black"></td></tr>
</table>
</form>
</div>



<div class="container">
	<div class="row">
		<div class="col-md-12">

			<table class="table table-hover">
			<tr><th class="col-2 text-center">交易序号</th><th class="col-2 text-center">钱包ID</th><th class="col-2 text-center">交易金额</th><th class="col-3 text-center">交易时间</th><th class="col-3 text-center">备注信息</th></tr>
			<c:forEach items="${res}" var="temp">
			<tr><td class="col-2 text-center">${temp.tid}</td><td class="col-2 text-center">${temp.wid}</td><td class="col-2 text-center">${temp.volume/100}元</td><td class="col-3 text-center">${temp.tradetime}</td><td class="col-3 text-center">${temp.memo}</td></tr>
			</c:forEach>
			</table>
			
		</div>
	</div>
</div>
</body>
</html>