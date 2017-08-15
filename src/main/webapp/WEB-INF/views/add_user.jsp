<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="auform" id="auform" action="useradding">
		<table>
			<tr>
				<td>用户名</td>
				<td><input name="username" id="username"></td>
			</tr>
			<tr>
				<td>itcode</td>
				<td><input name="itcode" id="itcode"></td>
			</tr>
			<tr>
				<td>是否在场内</td>
				<td><select>
						<option value="1">是</option>
						<option value="0">否</option>
				</select></td>
			</tr>
			<tr>
			    <td><input type="submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>