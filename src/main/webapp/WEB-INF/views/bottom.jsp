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

  <title>My drobe</title>
  <style>
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
	</style>
</head>
<body link="#000000" vlink="#000000" alink="#000000" >


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