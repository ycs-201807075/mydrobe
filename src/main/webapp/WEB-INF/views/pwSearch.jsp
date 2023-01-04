<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>

<head lang="ko">
    <title>My drobe ID 찾기</title>
    <meta charset="UTF-8">
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
            width: 25rem;
            margin: auto;
            padding: 0 20px;
            margin-top: 10rem;
            margin-bottom: 11rem;

        }
        .login{
            margin-top: 5px;
            font-size: 15px;
            text-align: center;
        }

       .box{
            border: 1px solid #000000;
            border-radius: 15px;
            padding: 30px;
        }

        .id {
            border: 1px solid #dadada;
            padding: 15px;
            width: 100%;
            margin-bottom: 5px;
        }

        .nm {
            border: 1px solid #dadada;
            padding: 15px;
            width: 100%;
            margin-bottom: 5px;
        }

        .em {
            border: 1px solid #dadada;
            padding: 15px;
            width: 100%;
            margin-bottom: 5px;
        }
        /*로그인 버튼디자인*/
        .member input[type=button],
        .member input[type=submit] {
            background-color: #000000;
            color: #fff;
            width: 100%;
            padding: 15px;
        }
     }
    </style>

    <script src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>

<div class="member">
            <a href="/">
            <img src="images/Mydrobelogo.png"  width="100%" class="img" alt="Error" />
            </a>
<div class="box">
    <form action="loginAction" method="post" id="login">

        <!--아이디 -->
        <div class="field">
            <b>아이디</b>
            <input name="userID" type="text" class="id" id="id" pattern="^[0-9a-zA-Z가-힣]*$" title="특수문자를 제외한 한글,영문,숫자(6~20자)만 입력해주세요"
                   placeholder="아이디 입력(6~20자)" required="required" minlength="6" maxlength="20">
            <!-- <input type="submit" id="checkid" value="아이디 중복확인"></input> -->
        </div>

        <!--이름 -->
        <div class="field">
            <b>이름</b>
            <input name="username" type="name" class="nm" id="nm" pattern="^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W))(?=.*[!@#$%^*+=-]).{8,15}$" title="이름 형식에 맞추어 입력해주세요."
                   placeholder="이름 입력" required="required" minlength="8" maxlength="15">
        </div>

        <!--이메일 -->
                <div class="field">
                    <b>이메일</b>
                    <input name="userEmail" type="email" class="em" id="em" pattern="^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W))(?=.*[!@#$%^*+=-]).{8,15}$" title="이메일 형식에 맞추어 입력해주세요."
                           placeholder="이메일 입력" required="required" minlength="8" maxlength="15">
                </div>

        <br>
            <!--로그인 버튼 -->
            <input type="submit" id="login" value="비밀번호 찾기" />
    </form>
</div>
    <!--
    <!--비밀번호 잊어버렸을시  -->
    <footer role="contentinfo">
        <div class="login">
           <a href="idSearch">아이디 찾기</a> | <a href="login">로그인</a> | <a href="join">회원가입</a>
        </div>
    </footer>
    </script>

</div>
<%@ include file="bottom.jsp" %>

</html>
