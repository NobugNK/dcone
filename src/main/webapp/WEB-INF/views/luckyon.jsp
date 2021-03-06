<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="js/CFS.Snow.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" /> 
<script type="text/javascript" src="https://raw.githubusercontent.com/loktar00/JQuery-Snowfall/master/src/snowfall.jquery.js"></script>
<title>红包雨</title>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/buttons.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/csshake/1.5.1/csshake.min.css">
<style type="text/css">
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
	background: url() no-repeat top left;
	background-color:white;
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
 top: 250px; 
 left: 30%;
}
</style>
<script type="text/javascript">
$(document).ready(function() {
	var win = (parseInt($(".couten").css("width"))) - 60;
	$(".mo").css("height", $(document).height());
	$(".couten").css("height", $(document).height());
	$(".backward").css("height", $(document).height());
	$("li").css({});
	// 点击确认的时候关闭模态层
	$(".sen a").click(function(){
	  $(".mo").css("display", "none")
	});
	
	var del = function(){
		nums++;
//		console.info(nums);
//		console.log($(".li" + nums).css("left"));
		$(".li" + nums).remove();
		setTimeout(del,200)
	}
	
	var add = function() {
		var hb = parseInt(Math.random() * (3 - 1) + 1);
		var Wh = parseInt(Math.random() * (70 - 30) + 20);
		var Left = parseInt(Math.random() * (win - 0) + 0);
		var rot = (parseInt(Math.random() * (45 - (-45)) - 45)) + "deg";
		//				console.log(rot)
		num++;
		$(".couten").append("<li class='li" + num + "' ><a href='javascript:;'><img src='images/hb1_" + hb + ".png'></a></li>");
		$(".li" + num).css({
			"left": Left,
		});
		$(".li" + num + " a img").css({
			"width": Wh,
			"transform": "rotate(" + rot + ")",
			"-webkit-transform": "rotate(" + rot + ")",
			"-ms-transform": "rotate(" + rot + ")", /* Internet Explorer */
			"-moz-transform": "rotate(" + rot + ")", /* Firefox */
			"-webkit-transform": "rotate(" + rot + ")",/* Safari 和 Chrome */
			"-o-transform": "rotate(" + rot + ")" /* Opera */
		});	
		$(".li" + num).animate({'top':$(window).height()+20},5000,function(){
			//删掉已经显示的红包
			this.remove()
		});
		//点击红包的时候弹出模态层
		$(".li" + num).click(function(){
			$(".mo").css("display", "block")
		});
		setTimeout(add,200)
	}	
	
	//增加红包
	var num = 0;
	setTimeout(add,1);

	var div = document.getElementById('shake'); 
	div.setAttribute("class", "shake shake-constant shake-delay"); 	
})
</script>

</head>
<body>



<div class ="pos">
		<span id="shake" ><img
			id="imgshake"src="img/h1-text2.png"
			></span>
		<br>
	
</div>

<ul class="couten">

</ul>


</body>
</html>