<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MenuList</title>
</head>
<body>
节目列表列表如下
<table>
<tr><td>序号</td><td>节目名字</td><td>节目的顺序</td><td>节目所属单位</td></tr>
<c:forEach items="${menus}" var="temp">
<tr><td>${temp.pid}</td><td>${temp.play_name}</td><td>${temp.play_order}</td><td>${temp.department}</td></tr>
</c:forEach>
</table>
</body>
</html>