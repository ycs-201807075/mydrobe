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
  <link rel="stylesheet" href="css/styles.css">

  <style>
    .menubar{
            background-color:#FFFFFF;
            font-family: Impact, Haettenschweiler, "Franklin Gothic Bold", "Arial Black", "sans-serif";
            position : fixed; /* 상단 메뉴 고정 */
            Z-index : 2;   /*우선순위를 두어 가장 앞에다 두는것. 수가 커질수록 밖으로 튀어나옴.*/
            top: 0 ;       /* 최상단 공백 */
            width : 100%;
            }
    .menubar    .bar_logo{
                            position: absolute;
                            }
    .menubar    .bar_1{
                        text-align : right;
                        padding-right : 2.0rem;

                        margin-bottom: 1.0rem;

                        }
    .menubar    .bar_1      a{
                               padding: 0.25rem;
                               font-size: 1.0rem;
                               display: inline-block;
                               }
    .menubar    .bar_2{
                        position: absolute;
                        right: 2.0rem;
                        transform: translate();
                        background: #393E46;
                        border-radius: 2rem;
                        padding: 0.7rem;
                        }

    .menubar    .bar_2:hover > .bar_2-txt{
                                            /*hover : 버튼 위로 커서 올라가면 바뀌는 효과*/
                                            width : 25.0rem;        /* textbox 크기 변경 */
                                            padding-left : 1.0rem;  /* textbox padding-right 변경 */
                                            }
    .menubar    .bar_2:hover > .bar_2-btn{
                                            background: white;
                                            color: #1e1e1e;
                                            }
    .menubar    .bar_2      .bar_2-txt{
                                        border : none;
                                        background : none;
                                        outline: none;
                                        float: left;
                                        padding: 0;
                                        color: white;
                                        font-size: 16px;
                                        transition: 0.5s;       /* 정해진 시간 동안 요소의 속성값을 부드럽게 변화 */
                                        line-height : 2.5rem;   /* line-box의 높이를 설정 */
                                        width: 0.0rem;
                                        }
    .menubar    .bar_2      .bar_2-btn{
                                        color:#d9d9d9;
                                        float: right;
                                        width: 2.5rem;
                                        height: 2.5rem;
                                        border-radius: 50%;
                                        background:#1e1e1e;
                                        display: flex;
                                        justify-content: center;
                                        align-items: center;
                                        transition: 0.5s;
                                        }
    .menubar    .bar_3{
                        text-align: center;
                        margin-top: 3.0rem;
                        }
    .menubar    .bar_3      a{
                               padding: 3.5rem;
                               font-size: 1.5rem;
                               display: inline-block;
                               }
  </style>
</head>
    <nav class = "menubar">
        <!-- logo -->
        <div class="bar_logo">
            <img src="images/Mydrobelogo.png" alt="Error" />
        </div>

        <!-- 베너1 -->
        <div class="bar_1">
            <a href="?target=login">Login</a>
            <a href="?target=join">SingUp</a>
            <a href="?target=mypage">My</a>
        </div>

        <!-- Search -->
        <div class="bar_2">
            <input type="text" class="bar_2-txt" name="" placeholder="검색어를 입력하세요">
            <a class="bar_2-btn" href="#">
                <i class="fas fa-search"></i>
            </a>
        </div>

        <!-- 베너 2 -->
        <div class="bar_3">
            <a href="?target=today">Today</a>
            <a href="?target=community">Community</a>
            <a href="?target=tip">Tip</a>
            <a href="?target=qna">QnA</a>
        </div>
    </nav>
</html>
