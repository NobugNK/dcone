<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="lcform" id="lcform" action="listchanging">
		<table>
			<tr>
				<td>输入节目名称</td>
				<td><input name="play_name" id="play-name"></td>
			</tr>
			<tr>
				<td>输入更改后的顺序</td>
				<td><input name="order" id="order"></td>
			</tr>
			<tr>
				<td><input type="submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>