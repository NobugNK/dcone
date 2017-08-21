<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/animsition.min.css">
<script src="js/animsition.min.js"></script>
<script src="js/aimsition.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>登录</title>
<style type="text/css">  
body {  
    margin: 0;  
    background-image: url(img/test6.jpg);    
    background-repeat:no-repeat;  
     background-position:0% 0%;  
    background-size:100% 100%;  
    background-color: #f8f6e9;
 	background-color:white;
 	background-attachment: fixed;
/*   position: fixed;
  z-index: -1;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  background: url(img/test5.jpg) center 0 no-repeat;
  background-size: cover; */
}  
.welcomeheader{
padding-top:60px;
padding-bottom:50px;
}

.becenter { margin-top: auto;
     margin-left: auto;
     margin-right: auto;
     height: 250px;
     width:400px;
     padding: 5%;
     }
@media screen and (max-width: 500px) { 
.becenter {width: auto;} 
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
<script type="text/javascript">
$(document).ready(function() {
	  $(".animsition").animsition();
});
</script>
</head>
<body>
<div class="animsition">
<font color="white">现在服务器的时间 ${serverTime}</font><br>
<font color="white">${res}</font><br>
	<form name="form1" id="form1" action="login">
	  <div class="becenter container">
	    <div class=" text-center text-info welcomeheader">
          <h1 style="color:white;">欢迎</h1>
          <h2 style="color:white;">xx公司年会系统</h2>
        </div>
		<div >
			<input type="text" class="form-control" name="username" id="username"
				placeholder="请输入用户名" required autofocus />
		</div>
		<div >
                    <input class="form-control" name="itcode" id="itcode" placeholder="请输入itcode" required autofocus/>
                </div>
		<div  style="white-space:nowrap" >
			<div class="row">
				<div class="col-xs-5">
				  <img id="img1" name="img1" src="servlet/code" onclick="changeimg()" style="margin-top: auto;margin-left: auto;margin-right: auto;margin-bottom: auto;">
				</div>
			    <div class="col-xs-7">
				  <input class="form-control" name="valicode" id="valicode" style="width:100%" placeholder="验证码" required autofocus/>
				</div>
			</div>
		</div>
		<div >
			<input class="form-control" type="submit" style="background-color: #e6f8f9" value="登录">
		</div>
      </div>
	</form>
	</div>
</body>
</html>