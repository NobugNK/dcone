<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<<<<<<< HEAD
<meta http-equiv="X-UA-Compatible" content="IE=edge">  
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="Generator" content="EditPlus®">  
    <meta name="Author" content="">  
    <meta name="Keywords" content="">  
    <meta name="Description" content="">
<title>Insert title here</title>
<link href="" rel="stylesheet" />  
    <script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/1.9.1/jquery.min.js"></script>  
    <style type="text/css"> 
    .ctxt{  
            background:#f8f6e9;  
            width:1000px;  
            height:400px;  
            overflow:hidden;  
            margin:0 auto;  
        }  
        .ctxt p{  
            position:relative;  
            left:1000px;  
            margin:0;  
            padding:0;  
        }  
    </style>
</head>
<body>
<div id="" class="ctxt"></div>  
<br />  
<form method="post" action="" align="center">  
<c:forEach items="${records}" var="temp">
  <script>
  $(document).ready(function(){ 
		
	  sleep(100);
      var msgtxt='恭喜id为'+$("#temp.wid")+'号的钱包，在第'+${temp.round}+'轮的红包雨中获得了'+${temp.luck_number}+'分的红包';  
      var colortxt = getReandomColor(); 
      var topPos = generateMixed(3);  
      if (topPos > 300)  
      {  
          topPos = 30;  
      }  
      var newtxt = '<p style="top:'+topPos+'px; color:'+colortxt+'">'+msgtxt+'</p>';  
      $(".ctxt").prepend(newtxt);  
      var addTextW = $(".ctxt").find("p").width(); 
      $(".ctxt p").animate({left: '-'+addTextW+"px"}, 30000,function(){  
          $(this).hide();  
      }); 
     
  });  
  </script> 
</c:forEach>
    <input type="text" id="msg" style="height:24px;width:200px;" /> <button type="button" id="submitBut">发布</button>  
</form>  
  
<script type="text/javascript">  

function sleep(numberMillis) { 
	var now = new Date(); 
	var exitTime = now.getTime() + numberMillis; 
	while (true) { 
	now = new Date(); 
	if (now.getTime() > exitTime) 
	return; 
	} 
	}

//随机获取颜色值  
    function getReandomColor(){  
        return '#'+(function(h){  
        return new Array(7-h.length).join("0")+h  
        })((Math.random()*0x1000000<<0).toString(16))  
    }  
  
//生成随机数据。n表示位数    
    var jschars = ['0','1','2','3','4','5','6','7','8','9'];    
    function generateMixed(n) {    
        var res = "";    
        for(var i = 0; i < n ; i ++) {    
            var id = Math.ceil(Math.random()*9);    
            res += jschars[id];    
        }    
        return res;    
    }   
</script> 
</body>
</html> 
=======
<title>Insert title here</title>
</head>
<body>
红包雨的相关记录
<table>
<c:forEach items="${records}" var="temp">
<tr><td>恭喜id为${temp.wid}号的钱包，在第${temp.round}轮的红包雨中获得了${temp.luck_number/100}元红包</td></tr>
</c:forEach>
</table>
</body>
</html>
>>>>>>> branch 'master' of https://github.com/NobugNK/dcone.git
