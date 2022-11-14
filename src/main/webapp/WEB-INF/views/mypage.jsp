<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.yuhan.mydrobe.UserDAO" %>
<%@ page import="com.yuhan.mydrobe.User" %>
<%@ page import="com.yuhan.mydrobe.ImgFileDAO" %>
<%@ page import="com.yuhan.mydrobe.ImgFile" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  <!-- Link Swiper's CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
  <link rel="stylesheet" href="css/styles.css">

  <title></title>
  <style>

        .main{
            margin-top:10px;
            width: 100%;
            height: 300px;
            border: 1px;
        }
        .fieldset{
            width:69%;
            box-sizing: border-box;
            float:left;
            border:5px solid #000000;
            border-radius:20px;
        }
        .fieldset2{
            width:30%;
            box-sizing: border-box;
            float:right;
            border:5px solid #000000;
            border-radius:20px;
        }
        .legend{
            font-size: 30px;
            font-weight:bold;
        }
        .legend2{
            text-align:center;
            font-size: 30px;
            font-weight:bold;
        }
        .text{

          font-size: 18px;
          font-weight:bold;
          padding:10px;
        }
        .text2{
          text-align:center;
          font-size: 18px;
          font-weight:bold;
          padding: 8.6px;
        }
        .text3{
          text-align:center;
          font-size: 18px;
          padding:10px;
        }

        .swiper {
            width: 100%;
            height: 100%;
        }

        .swiper-slide {
            /*
            text-align: center;
            font-size: 18px;
            background: #fff;
            */

            /* Center slide text vertically */

            display: -webkit-box;
            display: -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            -webkit-justify-content: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            -webkit-align-items: center;
            align-items: center;

        }


        }
        @media (max-width: 700px) {
            .swiper-button-next {
                background: none;
                right: 20px;
                transform: rotate(90deg);
            }

            .swiper-button-prev {
                background: none;
                left: 20px;
                transform: rotate(90deg);
            }
        }
        .imgbtn{
                    background-color: black;
                    color: white;
                    font-size:15px;
                    border-radius:5px;
                    padding: 10px;
                    cursor: pointer;
        }

        .deletebtn{
            width: 10%;
            background-color: black;
            color: white;
            font-size:15px;
            border-radius:5px;
            margin: 20px;
            padding: 10px;
            cursor: pointer;
        }

        .infofix{
                    width: 10%;
                    background-color: black;
                    color: white;
                    font-size:15px;
                    border-radius:5px;
                    margin: 20px;
                    padding: 10px;
                    cursor: pointer;
                }
        #file_save{
                display: none;
        }

   </style>
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
        <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
</head>

<body>
    <div class="main">
        <%
            String userID = null;
          	if(session.getAttribute("userID") != null){
          	    userID = (String) session.getAttribute("userID");
          	}
          	if(userID == null){
          	    PrintWriter script = response.getWriter();
          	    script.println("<script>");
            	script.println("alert('로그인 후 이용해주세요.')");
            	script.println("history.back()");
            	script.println("</script>");
            }
          	UserDAO userDAO = new UserDAO();
          	User user = userDAO.getUser(userID);

          	ImgFileDAO imgFileDAO = new ImgFileDAO();
          	ArrayList<ImgFile> list = imgFileDAO.getImgListMy(userID);
        %>

        <fieldset class="fieldset">
        <legend class="legend">개인정보</legend>
        <table>
        <tr><td> <div class="text">아이디 </td> <td> <%= user.getUserID() %> </div> </td></tr>
        <tr><td> <div class="text">이름 </td> <td> <%= user.getUserName() %> </div> </td></tr>
        <tr><td> <div class="text">생년월일 </td>  <td><%= user.getUserBirth() %></div></td></tr>
        <tr><td><div class="text">전화번호 </td><td><%= user.getUserPhoneNumber() %></div></td></tr>
        <tr><td><div class="text">이메일</td><td> <%= user.getUserEmail() %> </div></td></tr>
        <tr> <td><div class="text">가입일자</td> <td><%= user.getUserDate() %> </div></td></tr>
        </table>
        </fieldset>


        <fieldset class="fieldset2">
            <legend class="legend2">내 활동</legend>
                <div class="text2">좋아요 3</div>
                <div class="text2">내가 쓴 글 3</div>
                <div class="text2">내가 쓴 댓글 1</div>
                <form action="mySaveAction" method="post" enctype="multipart/form-data">
                    <div class="text3"><label class="imgbtn" for="file_save">이미지 선택<input type="file" id="file_save" multiple /></label></div>
                    <div class="text2"><input type="submit" class="imgbtn" value="이미지 저장"/></div>
                    <div class="text2"><input type="button" class="imgbtn" value="이미지 삭제"/></div>
                </form>
       </fieldset>
    </div><br><br><br><br><br>

    <!-- Swiper -->
        <div class="swiper">
            <div class="swiper-wrapper">
            <%
                for(int i = 0; i < list.size(); i++){
            %>
                <div class="swiper-slide"><img src="myImage/<%= list.get(i).getImgFileRealName() %>" width="170rem" alt="Error" /></div>
            <%
                }
            %>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>

      <!-- Swiper JS -->
        <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

        <!-- Initialize Swiper -->
        <script>
            var swiper = new Swiper('.swiper', {
                slidesPerView: 6,
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

        <br><br>

    <!-- 회원탈퇴 팝업창 -->
        <div style="text-align: center ">

            <a href="?target=update"><input type="button" class="infofix" value="비밀번호 변경"/></a>
            <a href="?target=delete"><input type="button" class="deletebtn" value="회원탈퇴"/></a>
<!--
            <script>
                function test(url, title, w, h) {
                    var screenLeft = window.screenLeft != undefined ? window.screenLeft : screen.left;
                    var screenTop = window.screenTop != undefined ? window.screenTop : screen.top;

                    width = window.innerWidth ? window.innerWidth : document.documentElement.clientWidth ? document.documentElement.clientWidth : screen.width;
                    height = window.innerHeight ? window.innerHeight : document.documentElement.clientHeight ? document.documentElement.clientHeight : screen.height;

                    var left = ((width / 2) - (w / 2)) + screenLeft;
                    var top = ((height / 2) - (h / 2)) + screenTop;

                    window.open("delete.jsp", title, 'scrollbars=yes, width=' + w + ', height=' + h + ', top=' + top + ', left=' + left);
                }
            </script>
        </div>
        -->
</body>
</html>