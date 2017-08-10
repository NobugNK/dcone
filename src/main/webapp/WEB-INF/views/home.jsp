<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>HOME</title>
<style type="text/css">  
body {  
    margin: 0;  
    background-image: url(bg.jpg);    
    background-repeat:no-repeat;  
        background-position:0% 0%;  
    background-size:cover;  
    background-color: #f8f6e9;  
}  
.becenter { margin-top: auto;
    margin-left: auto;
    margin-right: auto;
    height: 250px;
    width:400px;
    padding: 5%;
    }
    .becenter input{
    margin-top:2%;
   
   
    }
</style>
<script type="text/javascript">
function changeimg(){
	document.getElementById("img1").src="servlet/code?"+Math.random();
}

</script>
</head>
<body>
<div class="container">
</div>
现在服务器的时间 ${serverTime}<br>
${res}<br>
	<form name="form1" id="form1" action="login">
	  <div class="becenter">
	    <div class="col-lg-11 text-center text-info">
                    <h2>登录</h2>
                </div>
		<div class="col-lg-10">
			<input type="text" class="form-control" name="username"
				placeholder="请输入用户名" required autofocus />
		</div>

		<div class="col-lg-10">
                    <input class="form-control" name="itcode" placeholder="请输入itcode" required autofocus/>
                </div>
		<div class="col-lg-10" style="white-space:nowrap" >
			
			<div ><input class="form-control" name="valicode" id="valicode" style="width:100%" placeholder="请输入验证码" required autofocus/></div>
			<div><img id="img1" name="img1" src="servlet/code" style="padding-left: 5%"
				onclick="changeimg()"></div>
		</div>
		<div class="col-lg-10">
			<input class="form-control" type="submit" style="background-color: #e6f8f9" >
		</div>
      </div>
	</form>
</body>
</html>