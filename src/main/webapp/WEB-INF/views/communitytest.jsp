<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  <link rel="stylesheet" href="./styles.css">
  <title>My Drobe community</title>
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
		.bottom{
			align-content: center;
			background-color: rgba(40, 40, 40, 0.7);
			color: #FFFFFF;
			font-size: 12px;
			float: left;
		}
		.bottom1{
			margin-bottom: 25px;
		}
		.bottom2{
			font-size: 30px;
			font-style: italic;
			font-weight: bold;
		}
		.bottom3{
			height: 30px;
			background-color: #404040;
			text-align: center;
		}
		.title{
			text-align: center;
			font-size: 35px;
			font-family: Cambria, "Hoefler Text", "Liberation Serif", Times, "Times New Roman", "serif";
			margin-top: 200px;
			margin-bottom: 50px;
		}
		.best_01{
			text-align: center;
			position: absolute;
			left: 223px;
			top: 1630px;
			font-size: 13px;
			font-family: Cambria, "Hoefler Text", "Liberation Serif", Times, "Times New Roman", "serif";
		}
		.best_02{
			text-align: center;
			position: absolute;
			left: 647px;
			top: 1630px;
			font-size: 13px;
			font-family: Cambria, "Hoefler Text", "Liberation Serif", Times, "Times New Roman", "serif";
		}
		.best_03{
			text-align: center;
			position: absolute;
			left: 1020px;
			top: 1630px;
			font-size: 13px;
			font-family: Cambria, "Hoefler Text", "Liberation Serif", Times, "Times New Roman", "serif";
		}
		.best_04{
			text-align: center;
			position: absolute;
			left: 1405px;
			top: 1630px;
			font-size: 13px;
			font-family: Cambria, "Hoefler Text", "Liberation Serif", Times, "Times New Roman", "serif";
		}
		.tip{
			float: left;
			margin-left: 445px;
		}
		.free{
			float: left;
			margin-left: 200px;
			margin-bottom: 70px;
		}
		.qna{
			outline:solid;
			width: 400px;
			height: 200px;
			border-collapse: collapse;
		}
		.q_title{
			text-align: center;
			font-weight: bold;
			font-size: 18px;
		}
		.slider{
    		width: 1885;
   			height: 676px;
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
    		left: 640px;
    		transition-delay: 1s;
    		list-style: none;
   			padding: 0;
   			margin: 0;
		}
		.bullets{
   			position: absolute;
    		left: 50%;
    		transform: translateX(-50%);
    		bottom: 20px;
    		z-index: 2;
		}
		.bullets label{
   			display: inline-block;
    		border-radius: 50%;
    		background-color: rgba(0,0,0,0.55);
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
		.slider input[type=radio]:nth-child(4):checked~.bullets>label:nth-child(4){
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
		.slider input[type=radio]:nth-child(4):checked~ul.imgs>li:nth-child(4){
    		left: 0;
    		transition: 0.5s;
    		z-index:1;
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

<body link="#000000" vlink="#000000" alink="#000000">
<header>
  <div class="search-box">
    <input type="text" class="search-txt" name="" placeholder="검색어를 입력하세요">
    <a class="search-btn" href="#">
      <i class="fas fa-search"></i>
    </a>
  </div>
  <a href="index.html"><img src="images/logo.jpg" style="margin-top: 10px; margin-left: 60px" width="200" height="109" alt=""/></a>
  <div class="right-top">
    <h3>
      <a href="login.html">Login</a>&nbsp;&nbsp;&nbsp;
      <a href="join.html">SingUp</a>&nbsp;&nbsp;&nbsp;
      <a href="mypage.html">My</a>
    </h3>
  </div>
  <nav class="menubar">
    <a href="#">Today</a>
    <a href="#">Best</a>
    <a href="community.html">Community</a>
    <a href="#">Tip</a>
    <a href="QnA.html">QnA</a>
  </nav>
</header>

<!--border="1" width="1000" height="500"-->
<!--talble-hover:커서 위에 놓을시 회색으로 바뀜. -->
<table class = "table table-striped">
  <thead>
  <tr>
    <th >글번호</th>
    <th >제목</th>
    <th >내용</th>
    <th >작성자</th>
    <th >작성일</th>
    <th >조회</th>
    <th >좋아요</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>4</td>
    <td>제목란</td>
    <th>내용</th>
    <td>작성자란</td>
    <td></td>
    <td>조회란</td>
    <td>10</td>
  </tr>
  <tr>
    <td>3</td>
    <td>제목란</td>
    <th>내용</th>
    <td>작성자란</td>
    <td></td>
    <td>조회란</td>
    <td>10</td>
  </tr>

  <tr>
    <td>2</td>
    <td>제목란</td>
    <th>내용</th>
    <td>작성자란</td>
    <td></td>
    <td>조회란</td>
    <td>10</td>
  </tr>

  <tr>
    <td>1</td>
    <td>제목란</td>
    <th>내용</th>
    <td>작성자란</td>
    <td></td>
    <td>조회란</td>
    <td>10</td>
  </tr>
  </tbody>
</table>

<!--pagination:게시판 하단에 위치한 일련의 숫자 버튼. -->

<div class="text-center">
  <ul class="pagination">
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
  </ul>
</div>
<!--footer 시작!!! -->
<footer class="bottom">
  <div>
    <br><br>
    <table style="width: 2000px" class="bottom1">
      <tr>
        <td align="center" style="width: 650px" rowspan="3" class="bottom2">YOU CODI</td>
        <td style="width: 800px">상호명 : (주)XX컴퍼니 &nbsp;&nbsp;&nbsp; 대표자 : XXX &nbsp;&nbsp;&nbsp; 주소 : 05468 서울특별시 강서구 OO로 224(OO동) 파크  301호</td>
        <td rowspan="3">HOME | AGREEMENT | GUIDE | PRIVACY</td>
      </tr>
      <tr>
        <td>사업자등록번호 : 456-78-00156[사업자 정보 확인] &nbsp;&nbsp;&nbsp; 개인정보보호책임자 : 김선비(youcodi@naver.com)</td>
      </tr>
      <tr>
        <td>전화번호 : 02-1596-4578 &nbsp;&nbsp;&nbsp; 팩스 : 02-4567-5478</td>
      </tr>
    </table>
  </div>
  <div class="bottom3">
    <h4 style="padding-top: 8px">COPYRIGHT@4462-5789 BY NEW YOUCODI ALL RIGHTS RESERVED.</h4>
  </div>
</footer>
</body>
</html>
