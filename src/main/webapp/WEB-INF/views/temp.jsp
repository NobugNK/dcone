<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>抢红包！拼手气</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" /> 
	<meta http-equiv="X-UA-Compatible" content="IE=edge">		
	<meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1,maximum-scale=1,minimum-scale=1">
	<!--在iPhone 手机上禁止了把数字转化为拨号链接-->
    <meta content="telephone=no" name="format-detection" />
    <!--删除默认的苹果工具栏和菜单栏-->
    <meta content="yes" name="apple-mobile-web-app-capable">
    <!-- 网站开启对web app程序的支持，在web app应用下状态条（屏幕顶部条）的颜色，默认值为default（白色），可以定为black（黑色）和black-translucent（灰色半透明）-->
  		<meta name="apple-mobile-web-app-status-bar-style" content="black">
  		<link rel="stylesheet" href="css/csshake.min.css">
	<link rel="stylesheet" href="css/style1.css">
	<script src="js/zepto.min.js"></script>
	<script src="js/red.js"></script>
	<link rel="stylesheet" href="css/demo.css" type="text/css" />
	<link rel="stylesheet" type="text/css" href="css/sweet-alert.css">

	<style type="text/css">
			body {
				margin: 0;
				padding: 0;
				position: relative;
				
				width: 100%;
				height: 100%;
				overflow-y: hidden;
				background:url(images/bj.jpg) no-repeat top left ;
				background-size:  100%;
			}
			.couten {
				width: 100%;
				height: 100%;
				overflow: hidden;
				overflow-y: hidden;
			}
			.couten li {
				position: absolute;
				animation: all 3s linear;
				top:-100px;
				-webkit-tap-highlight-color:  rgba(0, 0, 0, 0);
			}
			.couten li a{
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

			.backward{
				width: 100%;
				background:#ccc;
				opacity: 0.5;
				position: absolute;
				top: 0;
				
			}
			.backward span{
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
			
@media screen and (max-width: 500px) { 
.red {
    width: 100%;
    height: 200%;
    background-size: 200% 200%;
    padding-top: 120%;
    margin: 0px 0px;
    position: relative;
} 

} 		
		</style>
	<script type="text/javascript" src="js/jquery.min.js"></script>
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
//					console.info(nums);
//					console.log($(".li" + nums).css("left"));
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
					$(".couten").append("<li class='li" + num + "' ><a href='javascript:;'><img src='images/hb_" + hb + ".png'></a></li>");
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
				
			
			
			})
		</script>

</head>
<body>
	<ul class="couten">
 
	</ul>
	<div class="mo">
		<div class="sen">
			<div class="red"><!-- shake-chunk -->
			    <span style="background-image: url(img/red-w.png);"></span>
			    <button class="redbutton" >拆红包</button>
			    <div class="red-jg">
		        <h1>恭喜您！</h1>
		        <h5>您获得了500元</h5>
		    		</div>

			</div>
		</div>
	</div>

	
</body>
</html>