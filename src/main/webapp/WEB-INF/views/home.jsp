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

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
        <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

		<style>
		    .p1{
		        margin-left:54rem;
                width:10rem;
            }
            .p2{
                width:1700px;
                height:2px;
                background-color:black;
                margin-right:7.5rem;
            }
            .m1{
                position:absolute;
                width:500px;
                align:left;
            }
            .m2{
                position:absolute;
                margin-top:1rem;
                width:500px;
                right:0;
            }
            .m3{
                margin-left:3rem;
                margin-top:1rem;
                width:400px;
                height:230px;
                border:1px solid;
                        }
            .m4{
                width:5rem;
                margin-left:3rem;
            }
            .m5{
                margin-left:13rem;
                width:15rem;
            }
		    .img_1{
		        width:20rem;
		        height:30rem;
		        border:2px solid #000000;
        	    border-radius: 2rem;
        	    margin-top:3rem;
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
                 width:100rem;
                 margin-left:8.5rem;
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

			.sl{
    				width: 100%;
   				    height: 500px;
    				position: relative;
    				margin: 0 auto;
    				overflow: hidden;

			}
			.sl input[type=radio]{
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
			.sl input[type=radio]:nth-child(1):checked~.bullets>label:nth-child(1){
   				background-color: #fff;
			}
			.sl input[type=radio]:nth-child(2):checked~.bullets>label:nth-child(2){
   				background-color: #fff;
			}
			.sl input[type=radio]:nth-child(3):checked~.bullets>label:nth-child(3){
    				background-color: #fff;
			}

			.sl input[type=radio]:nth-child(1):checked~ul.imgs>li:nth-child(1){
    				left: 0;
    				transition: 0.5s;
   				z-index:1;
			}
			.sl input[type=radio]:nth-child(2):checked~ul.imgs>li:nth-child(2){
    				left: 0;
    				transition: 0.5s;
    				z-index:1;
			}
			.sl input[type=radio]:nth-child(3):checked~ul.imgs>li:nth-child(3){
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
            			border-radius:2rem;
            			border:5px solid #000000;
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
		<div class="sl">
			<input type="radio" name="sl" id="Banner1" checked>
  			<input type="radio" name="sl" id="banner4">
    		<input type="radio" name="sl" id="banner5">
    		<ul id="imgholder" class="imgs">
        		<li><img src="./images/Banner1.png" width=1895rem height=500rem></li>
        		<li><img src="./images/banner4.png" width=1895rem height=500rem></li>
     			<li><img src="./images/banner5.png" width=1895rem height=500rem></li>
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
                <%
                    // 이미지 객체
                    ImgFileDAO imgFileDAO = new ImgFileDAO();
                    ArrayList<ImgFile> listImgBest = imgFileDAO.getImgListBest();
                    ArrayList<ArrayList<ImgFile>> listImgBestDetail = imgFileDAO.getImgListBestDetail();
                    ArrayList<ImgFile> listImgToday = imgFileDAO.getImgListToday();
                    ArrayList<ArrayList<ImgFile>> listImgDetail = imgFileDAO.getImgListDetail();

                    //게시판 객체
                    BoardDAO boardDAO = new BoardDAO();
                    ArrayList<Board> listBoardBest = boardDAO.getBoardListBest();
                    ArrayList<Board> listBoardToday = boardDAO.getBoardListToday();


                %>
                <table class="ss2_1" >
                    <tr>
                        <td>
                            🥇<br><br>
                            <div class="label_content">
                                <input type="checkbox" id="infoBest1">
                                <label for ="infoBest1"><img src="uploadImage/<%= listImgBest.get(0).getImgFileRealName() %>" class="img_1" ></label>
                                <div class="content">
                                    <div class="m1">
                                        <div class="swiper">
                                            <div class="swiper-wrapper">
                                                <%
                                                    for(int i = 0;i < listImgBestDetail.get(0).size(); i++){
                                                %>
                                                    <div class="swiper-slide"><img src="uploadImage/<%= listImgBestDetail.get(0).get(i).getImgFileRealName() %>" class="img_1"></div>
                                                <%
                                                    }
                                                %>
                                            </div>
                                            <div class="swiper-button-next"></div>
                                            <div class="swiper-button-prev"></div>
                                        </div>
                                    </div>
                                    <div class="m2">
                                        <p>
                                            <div align="left" class="m4"><%= listBoardBest.get(0).getUserID()%></div>

                                        </p>
                                        <p class="m3"><%= listBoardBest.get(0).getBoardContent()%></p>
                                        <p>👁‍<%= listBoardBest.get(0).getBoardRead()%>&nbsp&nbsp&nbsp&nbsp🧡<%= listBoardBest.get(0).getBoardLike()%>&nbsp&nbsp&nbsp&nbsp💬 123</p>
                                        <p><input type="text" value="댓글"></p>
                                        <label for="infoBest1">close</label>
                                    </div>
                                </div>
                                <p>🧡<%= listBoardBest.get(0).getBoardLike()%></p><br><br>
                            </div>
                        </td>
                        <td>
                            🥈<br><br>
                            <div class="label_content">
                                <input type="checkbox" id="infoBest2">
                                <label for ="infoBest2"><img src="uploadImage/<%= listImgBest.get(1).getImgFileRealName() %>" class="img_1" ></label>
                                <div class="content">
                                    <div class="m1">
                                        <div class="swiper">
                                            <div class="swiper-wrapper">
                                                <%
                                                    for(int i = 0;i < listImgBestDetail.get(1).size(); i++){
                                                %>
                                                    <div class="swiper-slide"><img src="uploadImage/<%= listImgBestDetail.get(1).get(i).getImgFileRealName() %>" class="img_1"></div>
                                                <%
                                                    }
                                                %>
                                            </div>
                                            <div class="swiper-button-next"></div>
                                            <div class="swiper-button-prev"></div>
                                        </div>
                                    </div>
                                    <div class="m2">
                                        <p>
                                            <div align="left" class="m4"><%= listBoardBest.get(1).getUserID()%></div>
                                        </p>
                                        <p class="m3"><%= listBoardBest.get(1).getBoardContent()%></p>
                                        <p>👁‍<%= listBoardBest.get(1).getBoardRead()%>&nbsp&nbsp&nbsp&nbsp🧡<%= listBoardBest.get(1).getBoardLike()%>&nbsp&nbsp&nbsp&nbsp💬 123</p>
                                        <p><input type="text" value="댓글"></p>
                                        <label for="infoBest2">close</label>
                                    </div>
                                </div>
                                <p>🧡<%= listBoardBest.get(1).getBoardLike()%></p><br><br>
                            </div>
                        </td>
                        <td>
                            🥉<br><br>
                            <div class="label_content">
                                <input type="checkbox" id="infoBest3">
                                <label for ="infoBest3"><img src="uploadImage/<%= listImgBest.get(2).getImgFileRealName() %>" class="img_1" ></label>
                                <div class="content">
                                    <div class="m1">
                                    <div class="swiper">
                                        <div class="swiper-wrapper">
                                            <%
                                                for(int i = 0;i < listImgBestDetail.get(2).size(); i++){
                                            %>
                                                <div class="swiper-slide"><img src="uploadImage/<%= listImgBestDetail.get(2).get(i).getImgFileRealName() %>" class="img_1"></div>
                                            <%
                                                }
                                            %>
                                        </div>
                                        <div class="swiper-button-next"></div>
                                        <div class="swiper-button-prev"></div>
                                    </div>
                                    </div>
                                    <div class="m2">
                                        <p>
                                            <div align="left" class="m4"><%= listBoardBest.get(2).getUserID()%></div>
                                        </p>
                                        <p class="m3"><%= listBoardBest.get(2).getBoardContent()%></p>
                                        <p>👁‍<%= listBoardBest.get(2).getBoardRead()%>&nbsp&nbsp&nbsp&nbsp🧡<%= listBoardBest.get(2).getBoardLike()%>&nbsp&nbsp&nbsp&nbsp💬 123</p>
                                        <p><input type="text" value="댓글"></p>
                                        <label for="infoBest3">close</label>
                                    </div>
                                </div>
                                <p>🧡<%= listBoardBest.get(2).getBoardLike()%></p><br><br>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
            
			<div class="s3">
            	<div align="center" class="ss3">💿TODAY💿</div>
            	    <table class="ss2_2">
                        <%
                            for(int i = 1; i <= 10; i++){
                                if(i % 5 == 1){
                        %>
                            <tr>
                                <% } %>
                            <td>
                                <div class="label_content">
                                    <input type="checkbox" id="info<%= i %>">
                                    <label for ="info<%= i %>"><img src="uploadImage/<%= listImgToday.get(i-1).getImgFileRealName() %>" class="img_2"></label>
                                    <div class="content">
                                        <div class="m1">
                                        <div class="swiper">
                                            <div class="swiper-wrapper">
                                                <%
                                                    for(int j = 0; j < listImgDetail.get(i-1).size(); j++){
                                                %>
                                                    <div class="swiper-slide"><img src="uploadImage/<%= listImgDetail.get(i-1).get(j).getImgFileRealName() %>" class="img_1"></div>
                                                <%
                                                    }
                                                %>
                                            </div>
                                            <div class="swiper-button-next"></div>
                                            <div class="swiper-button-prev"></div>
                                        </div>
                                        </div>
                                        <div class="m2">
                                            <p>
                                                <div align="left" class="m4"><%= listBoardToday.get(i-1).getUserID()%></div>
                                            </p>
                                            <p class="m3"><%= listBoardToday.get(i-1).getBoardContent()%></p>
                                            <p>👁‍<%= listBoardToday.get(i-1).getBoardRead()%>&nbsp&nbsp&nbsp&nbsp🧡<%= listBoardToday.get(i-1).getBoardLike()%>&nbsp&nbsp&nbsp&nbsp💬 123</p>
                                            <p><input type="text" value="댓글"></p>
                                            <label for="info<%= i %>">close</label>
                                        </div>
                                    </div>
                                    <p>🧡<%= listBoardToday.get(i-1).getBoardLike()%></p><br><br>
                                </div>
                            </td>
                        <%
                            if(i % 5 == 0){
                        %>
                        </tr>
                        <%
                                }
                            }
                        %>
                    </table>
            	</div>
            </div>
        </div><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <!-- Swiper JS -->
        <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

        <!-- Initialize Swiper -->
        <script>
            var swiper = new Swiper('.swiper', {
                observer: true,
                observeParents: true,
                slidesPerView: 1,
                direction: getDirection(),
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                },
                on: {
                    resize: function () {
                        swiper1.changeDirection(getDirection());
                    },
                },
            });

            function getDirection() {
                var windowWidth = window.innerWidth;
                var direction = window.innerWidth <= 760 ? 'vertical' : 'horizontal';

                return direction;
            }
        </script>
	</body>
	<jsp:include page = "tip.jsp" flush = "false"/> <!--민욱이의 팁게시판 메인에 끌어오기-->
</html>
