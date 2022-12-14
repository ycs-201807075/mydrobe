<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>Mydrode</title>

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- Link Swiper's CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
    <style>

        <style>

        .swiper1 {
            width: 50%;
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

        img {
            background-size: contain;
        }

        table{
            width:100%;
        }
        td {
            text-align: center;
        }
        p {
            color: black;
            font-size: 20px;
            font-weight: bold;
            text-decoration: none;
        }
    </style>



    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

</head>
<body>

    <h1>????????? TIP???</h1>
    <hr>
    <!-- Swiper -->
    <div class="swiper1">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><iframe width="600" height="500" src="https://www.youtube.com/embed/PbMGNo3f8jE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay;  clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>

            <div class="swiper-slide"><iframe width="600" height="500" src="https://www.youtube.com/embed/_pX8eLH1bNE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay;  clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>

            <div class="swiper-slide"><iframe width="600" height="500" src="https://www.youtube.com/embed/EqODV8ZC74U" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>

            <div class="swiper-slide"><iframe width="600" height="500" src="https://www.youtube.com/embed/FWSglI5WQl0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>

            <div class="swiper-slide"><iframe width="600" height="500" src="https://www.youtube.com/embed/VFzrEP2Qfrc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>

            <div class="swiper-slide"><iframe width="600" height="500" src="https://www.youtube.com/embed/N_bTrqAHoAU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>

            <div class="swiper-slide"><iframe width="600" height="500" src="https://www.youtube.com/embed/CVjk4WuGrMA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>

            <div class="swiper-slide"><iframe width="600" height="500" src="https://www.youtube.com/embed/Sn7KoRhyaAU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
        </div>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
    </div>

    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
        var swiper1 = new Swiper('.swiper1', {
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
    <h1 align="center">?????? ???????????????</h1>

<div class="test">
        <table>
            <tr>
                <td>
                    <p><a href="https://www.musinsa.com/app/codimap/lists" target="_blank"><img src="images/musinsa.jpg" width="250px" height="150px"></a></p>
                    <p><a href="https://www.musinsa.com/app/codimap/lists" target="_blank">?????????</a></p>
                </td>
                <td>
                    <p><a href="https://lookbook.nu/" target="_blank"><img src="images/lookbook.png" width="250px" height="150px"></a></p>
                    <p><a href="https://lookbook.nu/" target="_blank">??????</a></p>
                </td>
                <td>
                    <p><a href="http://www.fashiongio.com/main/index.html" target="_blank"><img src="images/fashiongio.png" width="250px" height="150px"></a></p>
                    <p><a href="http://www.fashiongio.com/main/index.html" target="_blank">????????????</a></p>
                </td>
                <td>
                    <p><a href="https://www.fashionbeans.com/category/mens-style/" target="_blank"><img src="images/fashionbeans.png" width="250px" height="150px"></a></p>
                    <p><a href="https://www.fashionbeans.com/category/mens-style/" target="_blank">????????????</a></p>
                </td>
        <tr>

        <tr>
            <td>
            <p><a href="https://camscon.kr/" target="_blank"><img src="images/camscon.png" width="250px" height="150px"></a></p>
            <p><a href="https://camscon.kr/" target="_blank">?????????</a></p>
            </td>
            <td>
                <p><a href="https://www.thesartorialist.com/" target="_blank"><img src="images/thesartorialist.png" width="250px" height="150px"></a></p>
                <p><a href="https://www.thesartorialist.com/" target="_blank">?????????????????????</a></p>
            </td>
            <td>
                <a href="https://ko.codibook.net/" target="_blank"><img src="images/codibook.png" width="250px" height="150px"></a></p>
                <p><a href="https://ko.codibook.net/" target="_blank"> ?????????</a></p>
            </td>
            <td>
                <a href="https://hypebeast.kr/" target="_blank"><img src="images/hypebeast.png" width="250px" height="150px"></a></p>
                <p><a href="https://hypebeast.kr/" target="_blank">???????????????</a></p>
            </td>

        </tr>
        </table>

</body>
</html>