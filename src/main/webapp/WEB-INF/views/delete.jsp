<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head lang="ko">
    <title>My drobe 회원탈퇴</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap');

        * {
            box-sizing: border-box;
            outline: none;
        }

        body {
            font-family: 'Noto Sans KR', sans-serif;
            font-size: 14px;
            background-color: #ffffff;
            line-height: 1.5em;
            color: #222;
            margin: 0;
        }

        a {
            color: #222;
        }

        /*member sign in*/
        .member {
            width: 400px;
            margin: auto;
            padding: 0 20px;
            margin-bottom: 20px;
            margin-top: 120px;
        }

            .member .logo {
                display: block;
                margin: auto;
            }

            .member .checkbtn {
                background-color: #000000;
                color: #fff
            }

            .member .field {
                margin: 5px 0;
            }

            .member b {
                display: block;
                font-size: 15px;
                margin-bottom: 5px;
            }

            .member span {
                display: block;
                font-size: 12px
            }

        .id {
            border: 1px solid #dadada;
            padding: 15px;
            width: 100%;
            margin-bottom: 5px;
        }

        .pw {
            border: 1px solid #dadada;
            padding: 15px;
            width: 100%;
            margin-bottom: 5px;
        }


        .member input[type=button],
        .member input[type=submit] {
            background-color: #000000;
            color: #fff;
            width: 100%;
            padding: 15px;
        }

        .member input:focus, .member select:focus {
            border: 1px solid #2db400;
        }

        @media (max-width:768px) {
            .member {
                width: 100%;
            }
        }
        .cencel{
            margin-top:10px;
        }
    </style>

    <script src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>

<div class="member">

    <form action="deleteAction" method="post" id="delete">
        <!-- 브라우저 유효성 검사 제거 novalidate-->
        <!--아이디 -->
           <div class="field">
               <b>아이디</b>
               <input name="userID" type="text" class="id" id="id" pattern="^[0-9a-zA-Z가-힣]*$" title="특수문자를 제외한 한글,영문,숫자(6~20자)만 입력해주세요"
                placeholder="아이디 입력(6~20자)" required="required" minlength="6" maxlength="20">

           </div>
        <!--패스워드 -->
        <div class="field">
            <b>비밀번호</b>
            <input name="userPassword" type="password" class="pw" id="pw" pattern="^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W))(?=.*[!@#$%^*+=-]).{8,15}$" title="비밀번호를 입력해주세요."
                   placeholder="비밀번호 입력" required="required" minlength="8" maxlength="15">
        </div>

            <!--회원탈퇴 버튼 -->
            <input onclick="return confirm('정말로 삭제하시겠습니까?')" type="submit" id="delete" value="탈퇴" />
    </form>
            <a href="?target=mypage"><input type="button" class="cencel" value="취소"/></a>


</div>
   </html>
</html>