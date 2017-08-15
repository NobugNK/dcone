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
<title>管理员添加节目界面</title>
<style type="text/css">  
body {  
    margin: 0;  
    background-image: url(img/bg.jpg);    
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
</head>
<body>
	<form name="form1" id="form1" action="listadding">
	  <div class="becenter">
	    <div class="col-lg-11 text-center text-info">
                    <h2 style="color:white;">输入节目信息</h2>
                </div>
		<div class="col-lg-10">
			<input type="text" class="form-control" name="play_name" id="play_name"
				placeholder="请输入节目名称" required autofocus />
		</div>

		<div class="col-lg-10">
                    <input class="form-control" name="play_order" id="play_order" placeholder="请输入节目顺序" required autofocus/>
                </div>
		<div class="col-lg-10">
                    <input class="form-control" name="department" id="department" placeholder="请输入节目所属部门" required autofocus/>
                </div>
		<div class="col-lg-10">
			<input class="form-control" type="submit" style="background-color: #e6f8f9" >
		</div>
      </div>
	</form>

</body>
</html>