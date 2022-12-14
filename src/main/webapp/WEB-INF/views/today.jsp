<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.yuhan.mydrobe.ImgFileDAO" %>
<%@ page import="com.yuhan.mydrobe.ImgFile" %>
<%@ page import="com.yuhan.mydrobe.BoardDAO" %>
<%@ page import="com.yuhan.mydrobe.Board" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.io.File" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

            <style>
            .p3{

                margin-right:15rem;
                border:1px;
            }
            .p1{
                position:absolute;
                margin-left:13rem;
                width:10rem;
            }
            .p2{
                width:1500px;
                height:2px;
                background-color:black;
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
                        width:25rem;
                        height:35rem;
                        border:2px solid #000000;
                        border-radius: 1rem;
                        margin-left:0.1rem;
                        margin-top:1rem;
                        }
            .img_2{
            width:15rem;
            height:25rem;
            border:2px solid #000000;
            border-radius: 2rem;
            }
            .c1{
            text-align:center;
            height:30rem;
            width:100rem;
            margin-top:2rem;
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

    <h1>
        <div class="p1">TODAY???</div>
        <div align="right"><a href="?target=todaywrite" class="p3">???????????????</a></div>
    </h1>
    <hr class="p2">
    <%
        // ????????? ??????
        ImgFileDAO imgFileDAO = new ImgFileDAO();
        ArrayList<ImgFile> listImgToday = imgFileDAO.getImgListToday();
        ArrayList<ArrayList<ImgFile>> listImgDetail = imgFileDAO.getImgListDetail();

        //????????? ??????
        BoardDAO boardDAO = new BoardDAO();
        ArrayList<Board> listBoardToday = boardDAO.getBoardListToday();

    %>
    <table class="c1" align="center">
    <%
        for(int i = 1; i <= listImgToday.size(); i++){
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
                        <p>???????<%= listBoardToday.get(i-1).getBoardRead()%>&nbsp&nbsp&nbsp&nbsp????<%= listBoardToday.get(i-1).getBoardLike()%>&nbsp&nbsp&nbsp&nbsp???? 123</p>
                        <label for="info<%= i %>">close</label>
                    </div>
                </div>
                <p>????<%= listBoardToday.get(i-1).getBoardLike()%></p><br><br>
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
                            swiper.changeDirection(getDirection());
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
</html>