<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head lang="ko">
    <title>My drobe 회원정보 수정</title>
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

        .name {
            border: 1px solid #dadada;
            padding: 15px;
            width: 100%;
            margin-bottom: 5px;
        }

        .birth {
            border: 1px solid #dadada;
            padding: 15px;
            width: 100%;
            margin-bottom: 5px;
        }
        .phonenum {
            border: 1px solid #dadada;
            padding: 15px;
            width: 100%;
            margin-bottom: 5px;
        }

        .email {
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
    <form action="retouchAction" method="post" id="retouch">
        <!-- 브라우저 유효성 검사 제거 novalidate-->
        <!--아이디 -->
        <div class="field">
            <b>아이디</b>
            <%= user.getUserId() %>
            <input type="hidden" name="userID" value="<%= user.getUserId()" %>
        </div>

        <!--패스워드 -->
        <div class="field">
            <b>비밀번호</b>
            <input name="userPassword" type="password" class="pw" id="pw" pattern="^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W))(?=.*[!@#$%^*+=-]).{8,15}$" title="비밀번호 형식에 맞추어 입력해주세요."
                   placeholder="비밀번호 입력" required="required" minlength="8" maxlength="15">
            <span>
                ※ 비밀번호는 8~15자 최소 1개 이상의 영문 대,소문자와 숫자 <br />
                &nbsp;&nbsp;&nbsp;&nbsp;특수문자(!,@,#,$,%,^,*,+,=,-)중 1개를 포함시켜주세요. ※
            </span>
        </div>

        <!--이름 -->
        <div class="field">
            <b>이름</b>
            <input name="userName" type="text" class="name" id="name" pattern="^[가-힣]+$" title="'홍길동'과 같은 형식의 한글 2~10자"
                   required="required" placeholder="이름 입력" minlength="2" maxlength="10">
        </div>

        <!--생년월일 -->
        <div class="field">
            <b>생년월일</b>
            <input name="userBirth" type="text" class="birth" id="birth" required="required" placeholder="생년월일 입력"
                   title="생년월일 형식에 맞추어 입력해주세요." minlength="10" maxlength="10">
            <span>※ 생년월일 예시) 1925-12-25 ※</span>
        </div>
         <!--핸드폰 번호 -->
            <div class="field">
                <b>전화번호</b>
                <input name="userPhoneNumber" type="tel" class="phonenum" id="phonenum" title="'010-1234-1234'와 같이 입력해주세요."
                       required="required" placeholder="전화번호 입력" maxlength="13">
                <span>※ 전화번호 예시) 010-1234-1234 ※</span>
            </div>
            <!--이메일 -->
            <div class="field">
                <b>이메일</b>
                <input name="userEmail" type="email" class="email" id="eamil" pattern="/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/]"
                       title="'이메일 형식에 맞게 입력해주세요." maxlength="20" required="required" placeholder="이메일 입력">
            </div>
            <!--정보수정 버튼 -->
            <input type="submit" id="retouch" value="정보수정" />
    </form>
             <a href="?target=mypage"><input type="button" class="cencel" value="취소"/></a>

    <!--비밀번호 재확인-->
    <script>

        //생년월일 자동 하이픈
        $(document).on("keyup", ".birth", function () {
            $(this).val($(this).val().replace(/[^0-9]/g, "").replace(/^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/,"$1-$2-$3").replace("--", "-"));
        });
        // 전화번호 자동 하이픈
        $(document).on("keyup", ".phonenum", function () {
            $(this).val($(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-"));
        });

    </script>

</div>
   </html>
</html>