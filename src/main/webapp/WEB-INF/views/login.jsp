<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>My drobe</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="../mydrobe/css/styles.css">
  <link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css" rel="stylesheet">
  <style>
	  * {
  		box-sizing: border-box;
  		font-family: 'Noto Sans KR', sans-serif;
		}
		body {
  			margin: 0;
 	 		background-color: #ffffff;
		}
	  .logo{
		  	text-align: center;
    		margin: auto;
	  }
		.login-form {
			text-align: center;
    		margin: auto;
  			width: 380px;
  			height: 300px;
			border-radius: 5px;
  			background-color: #D6D6D6;
  			border: 5px solid black;
  			padding: 30px;
		}
	  	.text-field {
  			width: 100%;오후 11:44 2022-09-06
  			font-size: 14px;
  			border-radius: 5px;
  			box-shadow: none;
  			color: #EEEFF1;
  			border: none;
  			padding:10px;
  			margin-bottom: 10px;
  			border: 5px solid black;
	  	}
		.submit-btn {
  			width:100%;
  			font-size: 14px;
  			padding: 10px;
  			margin-bottom: 30px;
  			border-radius: 5px;
  			box-shadow: none;
  			color: #0a0a0a;
  			border: none;
  			border: 5px solid black;
			}
		.links {
  			color: #D6D6D6;
  			text-align: center;
		}
		.links a {
  			font-size: 12px;
  			color: #9B9B9B;
		}
  </style>
</head>
<header>
  <!--NAVER LOGO-->
  <div class="logo">
    <a href="index.html"><img src="images/logo1.png" width="430px" height="250px"></a>
  </div>
</header>
<body>
<div class="login-form">
  <form>
    <input type="text" name="email" class="text-field" placeholder="아이디">
    <input type="password" name="password" class="text-field" placeholder="비밀번호">
    <input type="submit" value="로그인" class="submit-btn">
  </form>

  <div class="links">
    <a href="#">비밀번호를 잊어버리셨나요?</a>
  </div>
</div>
</body>
</html>