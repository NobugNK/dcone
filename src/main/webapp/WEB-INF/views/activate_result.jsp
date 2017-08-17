<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>用户账户钱包激活</title>
<style type="text/css">
body
{
background-color:#CC3333;
background-image: url();
background-size: 100%;
color:white;
}

.becenter { margin-top: auto;
    margin-left: auto;
    margin-right: auto;
    height: 250px;
    width:400px;
    padding: 5%;
    }
</style>

<script type="text/javascript">


var secs =3; //倒计时的秒数 
function Load(){ 
for(var i=secs;i>=0;i--) 
{ 
window.setTimeout('doUpdate(' + i + ')', (secs-i) * 1000); 
} 
} 
function doUpdate(num) 
{ 
document.getElementById('ShowDiv').innerHTML = '本页面将在'+num+'秒后自动消失' ;
if(num == 0) {window.opener=null;window.close();}
} 

</script>

</head>
<body>
<div class="becenter">
<h1>
${res}
</h1>
 <div id="ShowDiv"></div> 

</div>
<script language="javascript" type="text/javascript"> 
Load(); 
</script>

</body>
</html>