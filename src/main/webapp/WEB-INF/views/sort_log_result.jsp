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
<link rel="stylesheet" href="css/animsition.min.css">
<script src="js/animsition.min.js"></script>
<script src="js/aimsition.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" /> 
<title>账户记录信息</title>
<style type="text/css">
body{
background-color:black;
background-image: url(img/bg668.jpg);
background-size:100% 100%;
background-repeat:no-repeat;
background-attachment:fixed;
color:white;
}

tr:hover
{
color: black;
} 

.becenter { margin-top: 0;
     margin-left: auto;
     margin-right: auto;
     margin-bottom：0;
     padding: 1%;
     }
@media screen and (max-width: 500px) { 
.becenter {width: auto;} 
} 
 .becenter tr{
	color: #FFFFE0;
	font-size:22px;
 }
</style>
<script type="text/javascript">
$(document).ready(function() {
	  $(".animsition").animsition();
});
</script>
</head>
<body>
<div class="">
<div class="page-header text-center">
<h2>
当前查询的用户是${user.username},账户余额为${wallet.amount/100}元
</h2>
</div>

<div class="becenter">
<form action="sort_loging_bytime" >

<div class="row">
<div class="col-xs-12 col-md-5">
起始时间
<input class="form-control" type="date" id="starttime" name="starttime" style="color:black">
</div>
<div class="col-xs-12 col-md-5">
结束时间
<input class="form-control" type="date" id="endtime" name="endtime" style="color:black">
</div>
<div class="col-xs-12 col-md-2">
&nbsp
<input class="form-control" type="submit" value="查询" style="color:black;width:200px;">
</div>
</div>
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
</div>
</body>
</html>