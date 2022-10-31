<%@ page import="java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<title>My drobe</title>

		<style>
			.s0{
			    position: relative;
			    width: 100%;
			    height: 1800px;
			}
			.s1{

			    background-color: white;

			    position: absolute;
			    top:0; right:0;
			    width: 30%;
			    height: 100%;
			    margin-top:1.2rem;
			}
			.s2{
			    position: absolute;
			    margin: 20px;
			    margin-left: 25px;
			    top:0; left:0;
			    width: 70%;
 			    height: 50%;
			}
			.s3{
			    position: absolute;
			    margin-top: 20px;
			    margin-left: 25px;
			    bottom:0; left:0;
			    width: 70%;
 			    height: 50%;
			}
			.s4{
				margin-top: 70px;
				margin-left: 85px;
			}
			.ss1{
			    font-weight : bold;
                font-size : 30px;
                margin-top: 70px;
                margin-bottom: 40px;
			}
			.ss2{
				font-weight : bold;
				font-size : 30px;
				margin-top: 70px;
				margin-bottom: 40px;
			}
			.ss3{
				font-weight : bold;
				font-size : 30px;
				margin-top: 80px;
				margin-bottom: 40px;
			}
			.ss4{
				font-weight : bold;
				font-size : 30px;
				margin-bottom: 40px;

			}

			.slider{
    				width: 100%;
   				height: 370px;
    				position: relative;
    				margin: 0 auto;
    				overflow: hidden;
			}
			.slider input[type=radio]{
				display: none;
			}
			ul.imgs{
   				padding: 0;
   				margin: 0;
			}
			ul.imgs li{
   				position: absolute;
    				left: 10px;
    				transition-delay: 1s;
    				list-style: none;
   				padding: 0;
   				margin: 0;
			}
			.bullets{
   				position: absolute;
    				left: 50%;
    				transform: translateX(-50%);
    				bottom: 5%;
    				z-index: 2;
			}
			.bullets label{
   				display: inline-block;
    				border-radius: 50%;
    				background-color: rgba(255,255,255,0.55);
    				width: 20px;
    				height: 20px;
    				cursor: pointer;
			}
			.slider input[type=radio]:nth-child(1):checked~.bullets>label:nth-child(1){
   				background-color: #fff;
			}
			.slider input[type=radio]:nth-child(2):checked~.bullets>label:nth-child(2){
   				background-color: #fff;
			}
			.slider input[type=radio]:nth-child(3):checked~.bullets>label:nth-child(3){
    				background-color: #fff;
			}

			.slider input[type=radio]:nth-child(1):checked~ul.imgs>li:nth-child(1){
    				left: 0;
    				transition: 0.5s;
   				z-index:1;
			}
			.slider input[type=radio]:nth-child(2):checked~ul.imgs>li:nth-child(2){
    				left: 0;
    				transition: 0.5s;
    				z-index:1;
			}
			.slider input[type=radio]:nth-child(3):checked~ul.imgs>li:nth-child(3){
   			 	left: 0;
    				transition: 0.5s;
    				z-index:1;
			}

			a{
				text-decoration: none;
			}
		</style>
	</head>
	<body>
		<div class="slider">
			<input type="radio" name="slide" id="Banner1" checked>
  			<input type="radio" name="slide" id="Banner2">
    			<input type="radio" name="slide" id="Banner3">
    				<ul id="imgholder" class="imgs">
        					<li><img src="./images/Banner1.png"></li>
        					<li><img src="./images/Banner2.png"></li>
     					<li><img src="./images/Banner3.png"></li>
  				</ul>
    			<div class="bullets">
        				<label for="Banner1">&nbsp;</label>
        				<label for="Banner2">&nbsp;</label>
        				<label for="Banner3">&nbsp;</label>
 	  		</div>
		</div>
		<div class="s0">
			<div class="s1">
             <div align="center" class="ss1">📣COMMUNITY📣</div>
			 <jsp:include page = "community.jsp" flush = "false"/></br> <!--성민이의 커뮤게시판 메인에 끌어오기-->
              <jsp:include page = "community.jsp" flush = "false"/></br>
               <jsp:include page = "community.jsp" flush = "false"/>
			</div>
			<div class="s2">
				<div align="center" class="ss2">💿TODAY💿</div>
				<img src="images/today1.png">&nbsp;&nbsp;&nbsp;&nbsp;
				<img src="images/today2.png">&nbsp;&nbsp;&nbsp;&nbsp;
				<img src="images/today3.png">
			</div>
			<div class="s3">
				<div align="center" class="ss3">🏆BEST🏆</div>
				<img src="images/best1.png">&nbsp;&nbsp;&nbsp;&nbsp;
				<img src="images/best2.png">&nbsp;&nbsp;&nbsp;&nbsp;
				<img src="images/best3.png">
			</div>
		</div>
		<div class="s4">
			<div align="center" class="ss4">💡TIP💡</div>
            <jsp:include page = "tip.jsp" flush = "false"/> <!--민욱이의 팁게시판 메인에 끌어오기-->

			<!--
			<a href="https://www.youtube.com/watch?v=gr5CxkTUuls"><img src="images/youtube1.png"></a>

			<a href="https://www.youtube.com/watch?v=uEQKiS1QfBg"><img src="images/youtube2.png"></a>

			<a href="https://www.youtube.com/watch?v=AO7CAPINuy4"><img src="images/youtube3.png"></a>

			<a href="https://www.youtube.com/watch?v=gWEnHhJG4PY"><img src="images/youtube4.png"></a>
			-->
		</div>
	</body>
</html>
