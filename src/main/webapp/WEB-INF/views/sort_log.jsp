<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="form2" action="sort_loging">
当前所有用户的信息
<table>
<tr><td>用户序号</td><td>itcode</td><td>用户姓名</td><td>用户余额</td></tr>
<c:forEach items="${msgs}" var="temp">
<tr><td>${temp.uid}</td><td>${temp.itcode}</td><td>${temp.username}</td><td>${temp.amount/100}元</td></tr>
</c:forEach>
</table>
请输入要查询的用户的序号<input  id="uid" name="uid">
<input type="submit">
</form>
</body>
</html>