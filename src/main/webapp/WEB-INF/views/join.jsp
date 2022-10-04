<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>

<head lnag="ko">
    <title>My drobe 회원가입</title>
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
            width: 400px;
            margin: auto;
            padding: 0 20px;
            margin-bottom: 20px;
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

        .pwch {
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

        .usernum {
            border: 1px solid #dadada;
            padding: 15px;
            width: 48%;
            margin-bottom: 5px;
        }

        .usernum2 {
            border: 1px solid #dadada;
            padding: 15px;
            width: 48%;
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
    </style>

    <script src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>

<div class="member">
    <!--사이트 로고-->
    <header>
        <div class="logo">
            <a href="main.jsp"><img src="images/Mydrobelogo.png"></a>
        </div>
    </header>

    <form action="joinform.jsp" method="post" id="join">
        <!-- 브라우저 유효성 검사 제거 novalidate-->
        <!--아이디 -->
        <div class="field">
            <b>아이디</b>
            <input name="userID" type="text" class="id" id="id" pattern="^[0-9a-zA-Z가-힣]*$" title="특수문자를 제외한 한글,영문,숫자(6~20자)만 입력해주세요"
                   placeholder="아이디 입력(6~20자)" required="required" minlength="6" maxlength="20">
            <!--<input type="submit" id="checkid" value="아이디 중복확인"></input> -->
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

        <!--패스워드 확인 -->
        <div class="field">
            <b>비밀번호 확인</b>
            <input name="userPwch" type="password" class="pw" id="pwch" pattern="^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W))(?=.*[!@#$%^*+=-]).{8,15}$" title="비밀번호 형식에 맞추어 입력해주세요."
                   placeholder="비밀번호 확인" required="required" minlength="8" maxlength="15">
            <span id="alert-success" style="display: none;">비밀번호가 일치합니다.</span>
            <span id="alert-danger" style="display: none; color: #d92742; font-weight: bold; ">비밀번호가 일치하지 않습니다.</span>
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

            <!--회원가입 버튼 -->
            <input type="submit" id="join" value="회원가입" />
    </form>

    <!--이미 아이디가 있을시  -->
    <footer role="contentinfo">
        <div class="longin">
            <p> 이미 가입된 아이디가 있습니까? <a href="login.jsp"> 로그인 </a></p>
        </div>
    </footer>


    <!--비밀번호 재확인-->
    <script>
        $('.pw').focusout(function () {
            var pwd1 = $("#pw").val();
            var pwd2 = $("#pwch").val();

            if (pwd1 != '' && pwd2 == '') {
                null;
            } else if (pwd1 != "" || pwd2 != "") {
                if (pwd1 == pwd2) {
                    $("#alert-success").css('display', 'inline-block');
                    $("#alert-danger").css('display', 'none');
                } else {
                    $("#alert-success").css('display', 'none');
                    $("#alert-danger").css('display', 'inline-block');
                }
            }
        });

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
