<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>Mydrode</title>

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- Link Swiper's CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
    <style>

        <style >
        .swiper {
            width: 50%;
            height: 100%;
        }

        .swiper-slide {
            text-align: center;
            font-size: 18px;
            background: #fff;
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

        @media (max-width: 760px) {
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
       table {
            width: 100%;
            height: 80%;
        }
        img {
            background-size: contain;
        }

        td {
            text-align: center;
        }
        a {
            color: black;
            font-size: 20px;
            font-weight: bold;
            text-decoration: none;
        }
    </style>

    <script>

    </script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

</head>
<body>

    <h1>유튜브 TIP▶</h1>
<hr>
    <!-- Swiper -->
    <div class="swiper">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><iframe width="900" height="500" src="https://www.youtube.com/embed/PbMGNo3f8jE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay;  clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>

            <div class="swiper-slide"><iframe width="900" height="500" src="https://www.youtube.com/embed/_pX8eLH1bNE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay;  clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>

            <div class="swiper-slide"><iframe width="900" height="500" src="https://www.youtube.com/embed/EqODV8ZC74U" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>

            <div class="swiper-slide"><iframe width="900" height="500" src="https://www.youtube.com/embed/FWSglI5WQl0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>

            <div class="swiper-slide"><iframe width="900" height="500" src="https://www.youtube.com/embed/VFzrEP2Qfrc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>

            <div class="swiper-slide"><iframe width="900" height="500" src="https://www.youtube.com/embed/N_bTrqAHoAU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>

            <div class="swiper-slide"><iframe width="900" height="500" src="https://www.youtube.com/embed/CVjk4WuGrMA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>

            <div class="swiper-slide"><iframe width="900" height="500" src="https://www.youtube.com/embed/Sn7KoRhyaAU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
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
<hr>
    <h1 align="center">추천 패션사이트</h1>
    <div class="codi">
        <table>
            <tr>
                <td>
                    <p><a href="https://www.musinsa.com/app/codimap/lists"><img src="images/musinsa.jpg"></a></p>
                    <p><a href="https://www.musinsa.com/app/codimap/lists">무신사</a></p>
                </td>
                <td>
                    <p><a href="https://lookbook.nu/"><img src="images/lookbook.png"></a></p>
                    <p><a href="https://lookbook.nu/">룩북</a></p>
                </td>
                <td>
                    <p><a href="http://www.fashiongio.com/main/index.html"><img src="images/fashiongio.png"></a></p>
                    <p><a href="http://www.fashiongio.com/main/index.html">패션지오</a></p>
                </td>
                <td>
                    <p><a href="https://www.fashionbeans.com/category/mens-style/"><img src="images/fashionbeans.png"></a></p>
                    <p><a href="https://www.fashionbeans.com/category/mens-style/">패션빈즈</a></p>
                </td>
        <tr>

        <tr>
            <td>
            <p><a href="https://camscon.kr/"><img src="images/camscon.png"></a></p>
            <p><a href="https://camscon.kr/">캠스콘</a></p>
            </td>
            <td>
                <p><a href="https://www.thesartorialist.com/"><img src="images/thesartorialist.png"></a></p>
                <p><a href="https://www.thesartorialist.com/">사토리얼리스트</a></p>
            </td>
            <td>
                <a href="https://ko.codibook.net/"><img src="images/codibook.png"></a></p>
                <p><a href="https://ko.codibook.net/"> 코디북</a></p>
            </td>
            <td>
                <a href="https://hypebeast.kr/"><img src="images/hypebeast.png"></a></p>
                <p><a href="https://hypebeast.kr/">하입비스트</a></p>
            </td>

        </tr>
        </table>
    </div>

</body>
</html>