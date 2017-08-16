<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发红包</title>
<script type="text/javascript">
function ok()
{
	alert("红包开启成功");

}
function shutdown()
{
	alert("红包关闭成功");
	
}
</script>
</head>
<body>
<h3>当前抢红包功能状态：${status}</h3>
<h3><a href="deliveringluck" onclick="ok()">开启抢红包</a></h3>
<h3><a href="shutdownluck" onclick="shutdown()">关闭抢红包</a></h3>

</body>
</html>