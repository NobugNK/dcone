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
这里是查询记录的结果页面,你要查询的wid是<p>${wid}</p>
结果如下
<table>
<tr><td>序号</td><td>钱包ID</td><td>交易金额</td><td>交易时间</td><td>备注信息</td></tr>
<c:forEach items="${res}" var="temp">
<tr><td>${temp.tid}</td><td>${temp.wid}</td><td>${temp.volume/100}元</td><td>${temp.tradetime}</td><td>${temp.memo}</td></tr>
</c:forEach>
</table>
</body>
</html>