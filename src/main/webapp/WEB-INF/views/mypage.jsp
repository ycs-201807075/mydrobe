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

   </style>
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
        <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
</head>

<body>
    <div class="main">

    <fieldset class="fieldset">
    <legend class="legend">개인정보</legend>
        <div class="text">아이디</div>
        <div class="text">이름</div>
        <div class="text">생년월일</div>
        <div class="text">전화번호</div>
        <div class="text">이메일</div>
        <div class="text">가입일자</div>
    </fieldset>

    <fieldset class="fieldset2">
        <legend class="legend2">내 활동</legend>
            <div class="text2">좋아요</div>
            <div class="text2">내가 쓴 글</div>
            <div class="text2">내가 쓴 댓글</div>
            <div class="text2"><a href="#"><input type="button" class="imgbtn" value="이미지 저장"/></a></div>
            <div class="text2"><a href="#"><input type="button" class="imgbtn" value="이미지 수정"/></a></div>
   </fieldset>

    </div>
      <!-- Swiper -->
      <div class="swiper">
          <div class="swiper-wrapper">
              <div class="swiper-slide"><img src="images/Mydrobelogo.png" width="170rem" alt="Error" /></div>

              <div class="swiper-slide"><img src="images/Mydrobelogo.png" width="170rem" alt="Error" /></div>

              <div class="swiper-slide"><img src="images/Mydrobelogo.png" width="170rem" alt="Error" /></div>

              <div class="swiper-slide"><img src="images/Mydrobelogo.png" width="170rem" alt="Error" /></div>

              <div class="swiper-slide"><img src="images/Mydrobelogo.png" width="170rem" alt="Error" /></div>
          </div>
          <div class="swiper-button-next"></div>
          <div class="swiper-button-prev"></div>
      </div>

      <!-- Swiper JS -->
        <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

        <!-- Initialize Swiper -->
        <script>
            var swiper = new Swiper('.swiper', {
                slidesPerView: 3,
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

    <!-- 회원탈퇴 팝업창 -->
        <div style="text-align: center ">

            <a href="?target=retouch"><input type="button" class="infofix" value="정보수정"/></a>
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