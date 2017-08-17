<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>信息管理</title>
	<script src="js/jquery-3.2.1.min.js"></script>
  	<script src="js/bootstrap.min.js"></script>
  	<link href="css/bootstrap.min.css" rel="stylesheet">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" /> 
<style>
 	 body {  
	color:white;   
    margin: 0;  
    margin-top:8%;
   	background-image: url(img/bg666.jpg);  
    background-repeat:no-repeat;  
    background-position:0% 0%;  
    background-size:100% 100%;
    background-attachment:fixed;  
    background-color: #CC3333;  
}  

 body{font-family:"Helvetica Neue",Helvetica,Arial,"Hiragino Sans GB","Hiragino Sans GB W3","WenQuanYi Micro Hei",sans-serif}
.h1,.h2,.h3,.h4,.lead,h1,h2,h3,h4{font-family:"Helvetica Neue",Helvetica,Arial,"Hiragino Sans GB","Hiragino Sans GB W3","Microsoft YaHei UI","Microsoft YaHei","WenQuanYi Micro Hei",sans-serif}
 	
 	
 	
.masthead{padding:60px 0 80px;margin-bottom:0;color:#fff}
@media screen and (min-width:768px){.masthead{padding:90px 0 110px}}.masthead h1{font-size:60px;line-height:1;letter-spacing:-2px;font-weight:700}@media screen and (min-width:768px){.masthead h1{font-size:90px}}
@media screen and (min-width:992px){.masthead h1{font-size:100px}}
.masthead h2{font-size:18px;font-weight:200;line-height:1.25}@media screen and (min-width:768px){.masthead h2{font-size:24px}}@media screen and (min-width:992px){.masthead h2{font-size:30px}}.masthead p{font-size:40px;font-weight:200;line-height:1.25}.masthead .masthead-button-links{margin-top:30px}.masthead-links{margin:0;padding:0;list-style:none}.masthead-links li{display:inline;padding:0 10px;color:rgba(255,255,255,.25)}.masthead-links li a:hover{color:#fff}.subhead{text-align:center;border-bottom:1px solid #ddd}@media screen and (min-width:768px){.subhead{text-align:left}}.subhead h1{font-size:60px}.subhead p{margin-bottom:20px}

.projects .thumbnail{display:block;margin-left:auto;margin-right:auto;text-align:center;max-width:310px;margin-bottom:30px;border-radius:0}
.projects .thumbnail .caption{height:150px;overflow-y:hidden;color:#555}
.projects .thumbnail .caption a:focus,.projects .thumbnail .caption a:hover{text-decoration:none}
.projects .thumbnail img{max-width:100%;height:auto}
.projects-header{width:60%;text-align:center;margin:60px 0 10px;font-weight:200;margin-bottom:40px;display:block;margin-left:auto;margin-right:auto;color:white;}
.projects-header h2{font-size:30px;letter-spacing:-1px}
@media screen and (min-width:768px){.projects-header h2{font-size:42px}}
</style>
</head>
<body>
<div class="container projects">
<div class="row">
	
        <div class="col-sm-6 col-md-4 col-lg-3 ">
        <div class="thumbnail">
          <a href="https://webpack.bootcss.com/" title="" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'webpack'])">
          </a>
          <div class="caption">
            <h3>
                <a href="addlist" title="" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'webpack'])">添加节目<br></a>
            </h3>
            <p>添加新的节目</p>
          </div>
        </div>
      	</div>
      
      <div class="col-sm-6 col-md-4 col-lg-3 ">
        <div class="thumbnail">
          <a href="https://webpack.bootcss.com/" title="" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'webpack'])">
          </a>
          <div class="caption">
            <h3>
                <a href="adduser" title="" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'webpack'])">添加用户<br></a>
            </h3>
            <p>添加新的用户，临时的嘉宾等</p>
          </div>
        </div>
      	</div>
          
        <div class="col-sm-6 col-md-4 col-lg-3 ">
        <div class="thumbnail">
          <a href="https://webpack.bootcss.com/" title="" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'webpack'])">
          </a>
          <div class="caption">
            <h3>
                <a href="changelist" title="" target="_blank" onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'webpack'])">更改节目顺序<br></a>
            </h3>
            <p>可以更改节目的顺序</p>
          </div>
        </div>
      	</div>
      
      
      
</div>
</div>
</body>
</html>