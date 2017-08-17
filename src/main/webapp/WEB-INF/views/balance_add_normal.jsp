<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>普通用户充值界面</title>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    
 <style>
 body {  
    margin: 0;  
   	background-image: url(img/bg_add_nor.jpg);  
    background-repeat:no-repeat;  
        background-position:0% 0%;  
    background-size:100% 100%;
    background-attachment:fixed;  
    background-color: #CC3333;  
}  
.becenter { margin-top: auto;
    margin-left: auto;
    margin-right: auto;
    height: 250px;
    width:400px;
    padding: 2%;
    }
    .becenter input{
    margin-top:2%;
}
 </style>
</head>
<body>
<form action="balance_adding_normal">
  <div class="becenter">
  	<div class="col-lg-10">
			<h1 Style="color:white">充值页面<small class="text-muted" Style="color:white">普通用户</small></h1>
		</div>
  <div class="col-lg-10">
                    <input class="form-control" name="amount" id="amount" placeholder="请输入充值金额" required autofocus/>
    </div>
  <div class="col-lg-10">
			<input class="form-control" type="submit" value="确认充值" style="background-color: #e6f8f9" >
	</div>
	 <div class="col-lg-10">
	<h3 Style="color:yellow">${res}</h3>
	</div>
	
</div>
</form>
</body>
</html>