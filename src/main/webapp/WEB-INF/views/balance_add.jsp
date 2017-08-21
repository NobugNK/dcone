
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<title>管理员充值界面</title>
<style type="text/css">  
body {  
     margin: 0;  
   	background-image: url(icon/icon_8.jpg);  
    background-repeat:no-repeat;  
    background-position:0% 0%;  
    background-size:100% 100%;
    background-attachment:fixed;  
    background-color:white; 
}  
.becenter { 
    margin: auto;
    height: 250px;
    width: 400px;
    padding-top: 10%;
    }
    .becenter input{
    margin-top:2%;
    }
 .header{
 padding-top:10%;
 padding-bottom:10%;
 }
</style>
<script type="text/javascript">
$(document).ready(function() {
	  $(".animsition").animsition();
});
</script>

</head>
<body>
<div class="animsition">
<div style="color:white">${msg}</div>


	<form name="form1" id="form1" action="balance_adding">
	  <div class="becenter container">
	    <div class="header text-center text-info">
                  <h1 Style="color:white">充值页面<small class="text-muted" Style="color:white">管理员</small></h1>
        </div>
		<div class="col-lg-12">
			<input type="text" class="form-control" name="username" id="username"	placeholder="请输入姓名" required autofocus />
		</div>

		<div class="col-lg-12">
                    <input class="form-control" name="itcode" id="itcode" placeholder="请输入itcode" required autofocus/>
        </div>
        <div class="col-lg-12">
                    <input class="form-control" name="amount" id="amount" placeholder="请输入充值金额" required autofocus/>
        </div>
		
		<div class="col-lg-12">
			<input class="form-control" type="submit" value="提交" style="background-color: #e6f8f9" >
		</div>
		
		<div class="col-lg-12" Style="color:yellow">${addresult}</div>
		<!-- 显示充值的结果 -->
		
		
     </div>
     
  </form>
  </div>
</body>
</html>