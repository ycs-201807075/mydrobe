<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.yuhan.mydrobe.ImgFileDAO" %>
<%@ page import="com.yuhan.mydrobe.ImgFile" %>
<%@ page import="com.yuhan.mydrobe.BoardDAO" %>
<%@ page import="com.yuhan.mydrobe.Board" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.io.File" %>
<%@ page import="java.util.ArrayList" %>
<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<title>My drobe</title>

		<style>
		    .p1{
		        margin-left:47rem;
                width:10rem;
            }
            .p2{
                width:1500px;
                height:2px;
                background-color:black;
                margin-right:7.5rem;
            }

		    .img_1{
		        width:20rem;
		        height:30rem;
		        border:2px solid #000000;
        	    border-radius: 2rem;
        	}
		    .img_2{
		        width:15rem;
		        height:25rem;
		        border:2px solid #000000;
		        border-radius: 2rem;
		    }
            .img_3{
		        width:22rem;
		        height:32rem;
		    }
		    .ss2_1{
                font-size : 30px;
		    }
			.s0{
			    position: relative;
			    width: 100%;
			    height: 1800px;
			}

			.s2{
			    position: absolute;
			    margin: 20px;
			    margin-left: 25px;
			    top:0; left:0;
			    width: 100%;
 			    height: 50%;
			}
			.s3{
			    position: absolute;
			    margin-top: 20px;
			    margin-left: 25px;
			    bottom:0; left:0;
			    width: 100%;
 			    height: 50%;
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
				margin-top: 10rem;
				margin-bottom: 40px;

			}

			.slider{
    				width: 100%;
   				    height: 500px;
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

                        .c1{
                        text-align:center;
                        height:30rem;
                        width:100rem;
                        margin-top:10rem;
                        margin-bottom:5rem;
                        }

            			.label_content input {display:none;}
            			.label_content input + label {}
            			.label_content input + label + div {
            			display:none;
            			width:1000px;
            			height:600px;
            			background:#f5f5f5;
            			border:5px solid #eee;
            			position:fixed;
            			top:60%;
            			left:50%;
            			transform:translate(-50%,-50%);
            			z-index:3;
            			}
            			.label_content input:checked + label + div {display:block;}
            			.label_content input + label + div label {
            			position:fixed;
            			bottom:0;
            			left:50%;
            			transform:translate(-50%,50%);
            			background:#000000;
            			color:#fff;
            			padding:20px;
            			}
		</style>
	</head>
	<body>
		<div class="slider">
			<input type="radio" name="slide" id="Banner1" checked>
  			<input type="radio" name="slide" id="banner4">
    		<input type="radio" name="slide" id="banner5">
    		<ul id="imgholder" class="imgs">
        		<li><img src="./images/Banner1.png" width=1690rem height=500rem></li>
        		<li><img src="./images/banner4.png" width=1690rem height=500rem></li>
     			<li><img src="./images/banner5.png" width=1690rem height=500rem></li>
  			</ul>
    		<div class="bullets">
        		<label for="Banner1">&nbsp;</label>
        		<label for="banner4">&nbsp;</label>
        		<label for="banner5">&nbsp;</label>
 	  		</div>
		</div>
		<div class="s0">
			<div class="s2">
				    <h1>
                        <div class="p1">◀BEST▶</div>
                    </h1>
                    <hr class="p2">
                    <%
                        // 이미지 객체
                        ImgFileDAO imgFileDAO = new ImgFileDAO();
                        ArrayList<ImgFile> listImgBest = imgFileDAO.getImgListBest();
                        //ArrayList<ImgFile> listImgToday = imgFileDAO.getImgListToday();

                        //게시판 객체
                        BoardDAO boardDAO = new BoardDAO();
                        ArrayList<Board> listBoardBest = boardDAO.getBoardListBest();

                    %>
                    <table class="ss2_1">
                        <tr>
                            <td>
                                🥇<br><br>
                                <div class="label_content">
                                    <input type="checkbox" id="infoBest1">
                                    <label for ="infoBest1"><img src="uploadImage/<%= listImgBest.get(0).getImgFileRealName() %>" class="img_1" ></label>
                                    <div class="content">
                                        <div align="left"><img src="uploadImage/<%= listImgBest.get(0).getImgFileRealName() %>" class="img_3"></div>
                                        <div align="right"><%= listBoardBest.get(0).getBoardTitle() %></div>
                                        <label for ="infoBest1">close</label>
                                    </div>
                                </div>
                            </td>
                            <td>
                                🥈<br><br>
                                <div class="label_content">
                                    <input type="checkbox" id="infoBest2">
                                    <label for ="infoBest2"><img src="uploadImage/<%= listImgBest.get(1).getImgFileRealName() %>" class="img_1" ></label>
                                    <div class="content">
                                        <div align="left"><img src="uploadImage/<%= listImgBest.get(1).getImgFileRealName() %>" class="img_3"></div>
                                        <div align="right"><%= listBoardBest.get(1).getBoardTitle() %></div>
                                        <label for ="infoBest2">close</label>
                                    </div>
                                </div>
                            </td>
                            <td>
                                🥉<br><br>
                                <div class="label_content">
                                    <input type="checkbox" id="infoBest3">
                                    <label for ="infoBest3"><img src="uploadImage/<%= listImgBest.get(2).getImgFileRealName() %>" class="img_1" ></label>
                                    <div class="content">
                                        <div align="left"><img src="uploadImage/<%= listImgBest.get(2).getImgFileRealName() %>" class="img_3"></div>
                                        <div align="right"><%= listBoardBest.get(2).getBoardTitle() %></div>
                                        <label for ="infoBest3">close</label>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            
			<div class="s3">
            	<div align="center" class="ss3">💿TODAY💿</div>
            	<%

            	%>
            	    <table class="ss2_2">
            			<tr>
            			    <td>
            			    <div class="label_content">
                            <input type="checkbox" id="infoBest1">
                            <label for ="infoBest1"><img src="uploadImage/<%= listImgBest.get(0).getImgFileRealName() %>" class="img_1" ></label>
                            <div class="content">
                                <div align="left"><img src="uploadImage/<%= listImgBest.get(0).getImgFileRealName() %>" class="img_3"></div>
                                <div align="right"><%= listBoardBest.get(0).getBoardTitle() %></div>
                                <label for ="infoBest1">close</label>
                                </div>
                            </div>
                            </td>
                    		<td><img src="uploadImage/사진2.jpg" class="img_2"></td>
                            <td><img src="uploadImage/사진3.jpg" class="img_2"></td>
                            <td><img src="uploadImage/사진4.jpg" class="img_2"></td>
                            <td><img src="uploadImage/사진5.jpg" class="img_2"></td>
                        </tr>
                        <tr>
                            <td><img src="uploadImage/사진6.jpg" class="img_2"></td>
                            <td><img src="uploadImage/사진7.jpg" class="img_2"></td>
                            <td><img src="uploadImage/사진8.jpg" class="img_2"></td>
                            <td><img src="uploadImage/사진9.jpg" class="img_2"></td>
                            <td><img src="uploadImage/사진10.jpg" class="img_2"></td>
                        </tr>
                    </table>
            	</div>
            </div>
			<div align="center" class="ss4">💡TIP💡</div>
            <jsp:include page = "tip.jsp" flush = "false"/> <!--민욱이의 팁게시판 메인에 끌어오기-->
	</body>
</html>
