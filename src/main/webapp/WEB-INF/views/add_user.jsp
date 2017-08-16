<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加用户</title>

	<script src="js/jquery-3.2.1.min.js"></script>
  	<script src="js/bootstrap.min.js"></script>
  	<link href="css/bootstrap.min.css" rel="stylesheet">
  	
<style>
caption
{
color: Orange;
}

tr:hover
{
color: black;
text-decoration: underline; /*鼠标移近：黑色、下划线 -*/
} 
td
{
text-align:center;
}

table{
background-color:grey;
}
 
body {  
	color:white;
    margin: 0;  
    background-image: url(img/playbg.jpg);    
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
 .becenter button{
  margin-top:2%;
 }
 
 .becenter select{
  margin-top:7%;
  font-size: 18;
  color: black;
  width: 128%;
 }
</style>

</head>
<body>
	
	<form name="auform" id="auform" action="useradding">
 		<div class="becenter">
	
	<div class="col-lg-10">
	<h1>管理界面</h1>
	</div>

	<div class="col-lg-10">
			<input type="text" class="form-control" name="username" id="username"
				placeholder="要添加的新的用户姓名" required autofocus />
	</div>
	
	<div class="col-lg-10">
			<input type="text" class="form-control" name="itcode" id="itcode"
				placeholder="要添加的新的用户itcode" required autofocus />
	</div>
	<div class="col-lg-10">
		
		<div class="row" style="margin-top:5%;">
			<div class="col-xs-7">
			<p style="font-size: 17px">是否在场内</p>
			</div>
			<div class="col-xs-4">
			<select name="isOnthescene" id="isOnthescene" >
						<option  value="1">是</option>
						<option  value="0">否</option>
				</select>
			</div>
		</div>
			
	</div>
	
	<div class="col-lg-10">
		<button type="submit" class="form-control">添加新用户</button>
 	</div>
 	
 	<div class="col-lg-10">
 	${result}
 	</div>
 	
 	</div>
</form>
	
</body>
</html>