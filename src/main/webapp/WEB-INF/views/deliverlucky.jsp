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
	window.location.href="deliveringluck";


}
function shutdown()
{
	window.location.href="shutdownluck";
	
}

function control(){
	
}
</script>
</head>
<body>
<h3>当前抢红包功能状态：${status}</h3>
<h3><a href="deliveringluck" onclick="ok()">开启抢红包</a></h3>
<h3><a href="shutdownluck" onclick="shutdown()">关闭抢红包</a></h3>

<h3><a onclick="ok()">开启抢红包</a></h3>
<h3><a onclick="shutdown()">关闭抢红包</a></h3>
<button type="button" name="switch" id="switch" class="btn btn-primary btn-lg"  onclick="control()" >原始按钮</button>
</body>
</html>