<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>

<head lang="ko">
    <title>My drobe 로그인</title>
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

       .box{
            border: 1px solid #000000;
            border-radius: 15px;
            padding: 30px;
        }

        .login{
            margin-top: 5px;
            font-size: 15px;
            text-align: center;
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

        <!--패스워드 -->
        <div class="field">
            <b>비밀번호</b>
            <input name="userPassword" type="password" class="pw" id="pw" pattern="^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W))(?=.*[!@#$%^*+=-]).{8,15}$" title="비밀번호 형식에 맞추어 입력해주세요."
                   placeholder="비밀번호 입력" required="required" minlength="8" maxlength="15">
        </div>
        <br>
            <!--로그인 버튼 -->
            <input type="submit" id="login" value="로그인" />
    </form>
</div>
    <!--
    <!--비밀번호 잊어버렸을시  -->
    <footer role="contentinfo">
        <div class="login">
            <p> 비밀번호를 잊어버리셨나요? <a href="pwSearch"> 비밀번호 찾기 </a></p>
        </div>
    </footer>
    </script>

</div>
<%@ include file="bottom.jsp" %>

</html>
