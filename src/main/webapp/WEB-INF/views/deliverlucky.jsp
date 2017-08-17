<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" /> 
<title>发红包</title>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/buttons.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/csshake/1.5.1/csshake.min.css">
<style>
a:hover {
	color: red;
}
body {
	margin: 0;
	padding: 0;
	position: relative;
	width: 100%;
	height: 100%;
	overflow-y: hidden;
	background: url(img/bg1.png) no-repeat top left;
	background-size: 100%;
}
.couten {
	width: 100%;
	height: 100%;
	overflow: hidden;
	overflow-y: hidden;
	z-index: 100;
}
.couten li {
	position: absolute;
	animation: all 3s linear;
	top: -100px;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
	list-style-type: none;
}
.couten li a {
	display: block;
}
.mo {
	position: absolute;
	top: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, .2);
	z-index: 100;
	display: none;
}
.mo .sen {
	
}
.backward {
	width: 100%;
	background: #ccc;
	opacity: 0.5;
	position: absolute;
	top: 0;
}
.backward span {
	display: inline-block;
	width: 100px;
	height: 100px;
	color: #000;
	font-weight: bold;
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	margin: auto;
	text-align: center;
	line-height: 100px;
	font-size: 1000%;
}
.pos{
 position: absolute; 
 top: 300px; 
 left: 33%;
}
</style>

<script type="text/javascript">
function control(){
	var status=document.getElementById("status").innerHTML;
	
	if(status=="ON")
		{
		document.getElementById("switch").innerHTML="OFF";
		window.location.href="shutdownluck";
		}
	else
		{
		document.getElementById("switch").innerHTML="ON";
		window.location.href="deliveringluck";
		}
	
}
function setSwitch(){
	var status=document.getElementById("status").innerHTML;
	if(status=="ON")
	{
	document.getElementById("switch").innerHTML="OFF";
	//document.getElementById("imgshake").style.visibility="hidden";
	}
	else
	{
	document.getElementById("switch").innerHTML="ON";
	//document.getElementById("imgshake").style.visibility="visible";
	}
}
</script>

</head>
<body>
<p id="status">${status}</p>

	<div class ="pos">
		<span id="shake" ><img
			id="imgshake"src="img/h-text2.png"
			></span>
		<br>
		
		<span style="background: transparent;"><a
			id="switch" onclick="control()"
			class="button button-glow button-rounded button-caution"  >OFF</a>
		</span>
	</div>


	<ul class="couten">

	</ul>

<script type="text/javascript">
		
	setSwitch();
$(document)
	.ready(
		function() {
					var status=document.getElementById("status").innerHTML;
						if (status == "ON") {
							var win = (parseInt($(".couten").css("width"))) - 60;
								$(".mo").css("height", $(document).height());
								$(".couten")
										.css("height", $(document).height());
								$(".backward").css("height",
										$(document).height());
								$("li").css({});
								// 点击确认的时候关闭模态层
								$(".sen a").click(function() {
									$(".mo").css("display", "none")
								});
								var del = function() {
									nums++;
									//		console.info(nums);
									//		console.log($(".li" + nums).css("left"));
									$(".li" + nums).remove();
									setTimeout(del, 200)
								}
								var add = function() {
									var hb = parseInt(Math.random() * (3 - 1)
											+ 1);
									var Wh = parseInt(Math.random() * (70 - 30)
											+ 20);
									var Left = parseInt(Math.random()
											* (win - 0) + 0);
									var rot = (parseInt(Math.random()
											* (45 - (-45)) - 45))
											+ "deg";
									//				console.log(rot)
									num++;
									$(".couten")
											.append(
													"<li class='li" + num + "' ><img src='images/hb_" + hb + ".png'></li>");
									$(".li" + num).css({
										"left" : Left,
									});
									$(".li" + num + " a img").css(
											{
												"width" : Wh,
												"transform" : "rotate(" + rot
														+ ")",
												"-webkit-transform" : "rotate("
														+ rot + ")",
												"-ms-transform" : "rotate("
														+ rot + ")", /* Internet Explorer */
												"-moz-transform" : "rotate("
														+ rot + ")", /* Firefox */
												"-webkit-transform" : "rotate("
														+ rot + ")",/* Safari 和 Chrome */
												"-o-transform" : "rotate("
														+ rot + ")" /* Opera */
											});
									$(".li" + num).animate({
										'top' : $(window).height() + 20
									}, 5000, function() {
										//删掉已经显示的红包
										this.remove()
									});
									//点击红包的时候弹出模态层
									$(".li" + num).click(function() {
										$(".mo").css("display", "block")
									});
									setTimeout(add, 200)
								
								}
								//增加红包
								var num = 0;
								setTimeout(add, 1);
								var div = document.getElementById('shake'); 
								div.setAttribute("class", "shake shake-constant shake-delay"); 	
							} else {
												
							}
						})
	</script>
</body>
</html>