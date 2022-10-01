<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  <link rel="stylesheet" href="./styles.css">

  <title>YOU CODDI</title>
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

        body {
          padding: 0;
          margin: 0;
        }
        div {
          box-sizing: border-box;
        }


        .circle {
          display: inline-block;
          width: 5px;
          height: 5px;
          border-radius: 2.5px;
          background-color: #ff0000;
          position: absolute;
          top: -5px;
          left: 110%;
        }

        .green {
          color: #33363b;
        }

        .wrap {
          background-color: #686868;
        }

        .topContainer {
          height: 132px;
          background-color: #33363b;

          display: flex;
          align-items: flex-end;
          padding: 16px;
        }

        .topContainer .name {
          font-size: 20px;
          font-weight: bold;
          color: #FFFFFF;
        }

        .topContainer .grade {
          color: #FFFFFF;
        }

        .topContainer .modify {
          color: #FFFFFF;
          margin-left: auto;
        }

        .infoContainer {
          background-color: white;
          display: flex;
          padding: 21px 16px;
          height: 90px;
          margin-bottom: 10px;
        }

        .infoContainer .item {
          flex-grow: 1;
        }

        .infoContainer .number {
          font-size: 19px;
          font-weight: bold;
          color: rgba(40, 40, 40, 0.7);
        }

        .infoContainer .item > div:nth-child(2) {
          font-size: 13px;
        }


        .listContainer {
          padding: 0;
          background-color: #ffffff;
          margin-bottom: 10px;
        }

        .listContainer .item {
          display: flex;
          align-items: center;
          padding: 16px;
          color: black;
          text-decoration: none;
          height: 56px;
          box-sizing: border-box;
        }

        .listContainer .icon {
          margin-right: 14px;
        }

        .listContainer .text {
          font-size: 16px;
          position: relative;
        }

        .listContainer .right {
          margin-left: auto;
        }


        .infoContainer {
          background-color: white;
          display: flex;
          height: 100px;
          margin-bottom: 10px;
        }

        .infoContainer .item {
          flex-grow: 1;
          display: flex;
          align-items: center;
          justify-content: center;
          flex-direction: column;
          font-size: 13px;
          text-decoration: none;
          color: black;
        }

        .infoContainer .item > div:first-child {
          margin-bottom: 2px;
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
  <a href="index.html"><img src="images/logo.jpg" style="margin-top: 10px; margin-left: 60px" width="200" height="109" alt=""/></a>
  <div class="right-top">
    <h3>
      <a href="#"><img src="images/login.jpg" width="55" height="55" alt=""/></a>&nbsp;&nbsp;
      <a href="#"><img src="images/my.jpg" width="55" height="55" alt=""/></a>&nbsp;&nbsp;
      <a href="#"><img src="images/cart.jpg" width="58" height="58" alt=""/></a>
    </h3>
  </div>
  <!--
  <nav class="menubar">
    <a href="#">Today</a>
    <a href="#">Daily</a>
    <a href="#">Review</a>
    <a href="#">Top</a>
    <a href="#">QnA</a>
  </nav>
  -->
</header>


<div class="wrap">
  <div class="topContainer">
    <div>
      <div class="grade">GOLD</div>
      <div class="name">유한킴</div>
    </div>
    <div class="modify">i</div>
  </div>
  <div class="infoContainer">
    <div class="item">
      <div class="number">21</div>
      <div>방문수</div>
    </div>
    <div class="item">
      <div class="number">56</div>
      <div>내가 쓴 글</div>
    </div>
    <div class="item">
      <div class="number">142</div>
      <div>내가 쓴 댓글</div>
    </div>
  </div>

  <div class="listContainer">
    <div class="item">기본정보</div>
    <a href="#" class="item">
      <div class="icon">아이디&nbsp&nbsp&nbsp&nbsp</div>
      <div class="text">yuhan2022<span class="circle"></span></div>
      <div class="right"> > </div>
    </a>
    <a href="#" class="item">
      <div class="icon">이름&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</div>
      <div class="text">김유한</div>
      <div class="right"> > </div>
    </a>
    <a href="#" class="item">
      <div class="icon">생년월일</div>
      <div class="text">1999.01.01</div>
      <div class="right"> > </div>
    </a>
    <a href="#" class="item">
      <div class="icon">닉네임&nbsp&nbsp&nbsp&nbsp</div>
      <div class="text">유한킴</div>
      <div class="right"> > </div>
    </a>
    <a href="#" class="item">
      <div class="icon">이메일&nbsp&nbsp&nbsp&nbsp</div>
      <div class="text">yuhankim@yuhan.ac.kr</div>
      <div class="right"> > </div>
    </a>
  </div>
  <div class="listContainer">
    <a href="#" class="item">
      <div class="icon">ii</div>
      <div class="text">글목록</div>
      <div class="right"> > </div>
    </a>
    <a href="#" class="item">
      <div class="icon">ii</div>
      <div class="text">댓글목록</div>
      <div class="right"> > </div>
    </a>
    <a href="#" class="item">
      <div class="icon">ii</div>
      <div class="text">계정관리</div>
      <div class="right"> > </div>
    </a>
  </div>
  <div class="infoContainer">
    <a href="#" class="item">
      <div>icon</div>
      <div>공지사항</div>
    </a>
    <a href="#" class="item">
      <div>icos</div>
      <div>이용안내</div>
    </a>
    <a href="#" class="item">
      <div>icon</div>
      <div>고객센터</div>
    </a>
  </div>
</div>

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