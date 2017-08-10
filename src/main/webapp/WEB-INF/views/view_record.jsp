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
红包雨的相关记录
<table>
<c:forEach items="${records}" var="temp">
<tr><td>恭喜id为${temp.wid}号的钱包，在第${temp.round}轮的红包雨中获得了${temp.luck_number}分的红包</td></tr>
</c:forEach>
</table>
</body>
</html>