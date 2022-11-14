<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.yuhan.mydrobe.UserDAO" %>
<%@ page import="com.yuhan.mydrobe.User" %>
<%@ page import="java.util.ArrayList" %>
<!doctype html>
<html>
<head lang="ko">
    <title>My drobe 비빌번호 변경</title>
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
        .ex{
            margin-top:10px;
        }
    </style>

    <script src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>

<div class="member">

    <%
        String userID = (String)session.getAttribute("userID");
    %>

    <form action="updateAction" method="post" id="update">
        <!--패스워드 -->
        <div class="field">
            <b>새로운 비밀번호</b>
            <input name="userPassword" type="password" class="pw" id="pw" pattern="^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W))(?=.*[!@#$%^*+=-]).{8,15}$"
            value="" onfocus="this.value=''; return true"
            title="비밀번호 형식에 맞추어 입력해주세요." placeholder="비밀번호 입력" required="required" minlength="8" maxlength="15">
            <span class="ex">
                ※ 비밀번호는 8~15자 최소 1개 이상의 영문 대,소문자와 숫자 <br />
                &nbsp;&nbsp;&nbsp;&nbsp;특수문자(!,@,#,$,%,^,*,+,=,-)중 1개를 포함시켜주세요. ※
            </span>
        </div>

<br>
            <!--정보수정 버튼 -->
            <input type="submit" id="update" value="비밀번호 변경" />
    </form>
             <a href="?target=mypage"><input type="button" class="cencel" value="취소"/></a>


</div>
   </html>
</html>