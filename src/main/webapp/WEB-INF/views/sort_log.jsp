<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery-3.2.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<style type="text/css">
body{
background-image: url(img/bg667.jpg);
background-size:100%;
background-attachment:fixed;
color:white;
}
tr:hover
{
color: black;
} 
th:hover
{
color: white;
}

.inputarea 
{
background-color:black;
border-color:white;
}
</style>
<title>Insert title here</title>
</head>
<body>
<form name="form2" action="sort_loging">
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<table class="table table-hover">
			<caption style="color:#FFFFE0;font-size:20px">当前所有用户的信息</caption>
			<thead style="color:#FFFFE0;font-size:16px">
			<tr><th class="col-3 text-center">用户序号</th><th class="col-3 text-center">itcode</th><th class="col-3 text-center">用户姓名</th><th class="col-3 text-center">用户余额</th></tr>
			</thead>
			<tbody>
			<c:forEach items="${msgs}" var="temp">
			<tr><td class="col-3 text-center">${temp.uid}</td><td class="col-3 text-center">${temp.itcode}</td><td class="col-3 text-center">${temp.username}</td><td class="col-3 text-center">${temp.amount/100}元</td></tr>
			</c:forEach>
			</tbody>
			</table>
			
			<div class="row">
				<div class="col-lg-3">
					请输入要查询的用户的序号
				</div>
				<br>
				<div class="col-lg-3">
					<div class="input-group inputarea">
					<input id="uid" name="uid" type="text" class="form-control">
		                    <span class="input-group-btn">
		                        <input id="uid" name="uid" class="btn btn-default" type="submit">
		                    </span>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>
</form>

</body>
</html>