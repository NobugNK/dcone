<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HOME</title>
<script type="text/javascript">
function changeimg(){
	document.getElementById("img1").src="servlet/code?"+Math.random();
}

</script>
</head>
<body background="img/luckymoney.jpg">
现在服务器的时间 ${serverTime}<br>
${res}<br>
<form name="form1" id="form1" action="login">
<table>
<tr><td>姓名：</td><td><input name="username" id="username"></td></tr>
<tr><td>itcode：</td><td><input name="itcode" id="itcode"></td></tr>
<tr><td><img id="img1" name="img1" src="servlet/code" onclick="changeimg()"></td><td><input name="valicode" id="valicode"></td></tr>
<tr><td><input type="submit" value="登录"></td></tr>
</table>
</form>
</body>
</html>