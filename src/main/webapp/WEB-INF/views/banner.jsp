<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  <link rel="stylesheet" href="./styles.css">

  <title>My drobe</title>
  <style>
    search {text-decoration: none;}
    		.search-box{
    		position: absolute;
    		//	width: 600px;
    		top: 50px; left: 660px;
    		transform: translate();
    		background: #393E46;
    		height: 40px;
    		border-radius: 40px;
    		padding: 10px;
    		}
    		.search-box:hover > .search-txt {
    		width: 500px;
    		padding:0 6px;
    		}
    		.search-box:hover > .search-btn {
    		background: white;
    		color: #1e1e1e;
    		}
    		.search-btn{
    		color:#d9d9d9;
    		float: right;
    		width: 40px; height: 40px;
    		border-radius: 50%;
    		background:#1e1e1e;
    		display: flex;
    		justify-content: center;
    		align-items: center;
    		transition: 0.5s;
    		}
    		.search-txt {
    		border : none;
    		background : none;
    		outline: none;
    		float: left;
    		padding: 0;
    		color: white;
    		font-size: 16px;
    		transition: 0.5s;
    		line-height: 40px;
    		width: 0px;
    		}
    		.right-top{
    			float: right;
    			margin-top: 22px;
    			margin-right: 50px;
    		}
    		.title{
    			text-align: center;
    			font-size: 35px;
    			font-family: Cambria, "Hoefler Text", "Liberation Serif", Times, "Times New Roman", "serif";
    			margin-top: 200px;
    			margin-bottom: 50px;
    		}
    		.bullets{
       			position: absolute;
        		left: 50%;
        		transform: translateX(-50%);
        		bottom: 20px;
        		z-index: 2;
    		}
    		a{
    			text-decoration: none;
    		}
    		.menubar{
    			background-color:#FFFFFF;
    			text-align: center;
    			font-family: Impact, Haettenschweiler, "Franklin Gothic Bold", "Arial Black", "sans-serif"
    		}
    		.menubar a{
    			padding: 15px;
    			font-size: 20px;
    			display: inline-block;
    		}
    		.menubar a:hover{
    			color: #D8A8F3
    		}
	</style>
</head>
<body link="#000000" vlink="#000000" alink="#000000" >

<header>
  <div class="search-box">
    <input type="text" class="search-txt" name="" placeholder="검색어를 입력하세요">
    <a class="search-btn" href="#">
      <i class="fas fa-search"></i>
    </a>
  </div>
  <!--경로 수정 필요한 자리. 아래 프레임으로 와져야함.-->
  <!--
  <a href="banner.jsp">
    <img src="images/logo.jpg" style="margin-top: 10px; margin-left: 60px" width="200" height="109" alt=""/>
  </a>
  -->
  <nav class="menubar">

    <div class="right-top">
      <h3>
       <a href="?target=login">Login</a>&nbsp;&nbsp;&nbsp;
       <a href="?target=join">SingUp</a>&nbsp;&nbsp;&nbsp;
       <a href="?target=mypage">My</a>
      </h3>
    </div>
        <a href="?target=today">Today</a>
        <a href="?target=best">Best</a>
        <a href="?target=community">Community</a>
        <a href="?target=tip">Tip</a>
        <a href="?target=qna">QnA</a>
   QnA</a>
  </nav>
</header>
</body>
</html>
