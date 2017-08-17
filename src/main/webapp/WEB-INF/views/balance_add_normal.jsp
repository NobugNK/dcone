<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<form action="balance_adding_normal">
<h1>充值页面<small class="text-muted">普通用户</small></h1>
<table>
<tr><td>请输入您要充值的金额</td><td><input name="amount" id="amount"></td><td><input type="submit" value ="确认充值"></td></tr>
<tr><td>${res}<td></tr>
</table>
</form>
</body>
</html>