<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>아이디 찾기</title>
    <style>
        @import url("http://fonts.googleapis.com/earlyaccess/nanumgothic.css");

		{box-sizing: border-box;
  		font-family: 'Noto Sans KR', sans-serif;
		}
		body {
  			margin: 0;
 	 		background-color: #ffffff;
		}
	html {
		height: 100%;
	}

	body {
	    width:100%;
	    height:100%;
	    margin: 0;

  		padding-top: 200px;
  		padding-bottom: 40px;
  		font-family: "Nanum Gothic", arial, helvetica, sans-serif;
  		background-repeat: no-repeat;
	}

    .card {
        margin: 0 auto; /* Added */
        float: none; /* Added */
        margin-bottom: 10px; /* Added */
	}
	.text-field {
  			width: 100%;
  			font-size: 14px;
  			border-radius: 5px;
  			box-shadow: none;
  			color: #EEEFF1;
  			border: none;
  			padding:10px;
  			margin-bottom: 10px;
  			border: 5px solid black;
}
.submit-btn {
  			width:100%;
  			font-size: 14px;
  			padding: 10px;
  			margin-bottom: 30px;
  			border-radius: 5px;
  			box-shadow: none;
  			color: #0a0a0a;
  			border: none;
  			border: 5px solid black;
			}

    #btn-Yes{
        background-color: #080808;
        border: none;
    }

	.form-signin .form-control {
  		position: relative;
  		height: auto;
  		-webkit-box-sizing: border-box;
     	-moz-box-sizing: border-box;
        	 box-sizing: border-box;
  		padding: 10px;
  		font-size: 16px;
	}

    .card-title{
        margin-left: 30px;
    }


    a{
    	color: #000009; text-decoration: none;
    }

    .links{
        text-align: center;
        margin-bottom: 10px;
    }

    .checks{
    	color : red;
    }
    </style>
  </head>

  <body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%" align="center">

	<div class="card align-middle" style="width:25rem;">
		<div class="card-title" style="margin-top:30px;">

			<h2 class="card-title" style="color:#f58b34;"><img src="images/Mydrobelogo.png"/></h2>
		</div>

		<div class="card-body">
      <form action="findPw" class="form-signin" method="POST">
        <input type="text" name="member_id" id="member_id" class="form-control" placeholder="전화번호" required><br>
        <input type="text" name="name" id="name" class="form-control" placeholder="이름" required><BR>
        <input type="email" name="email" id="email" class="form-control" placeholder="이메일" required><br>
        <p class="checks" id="checks">${findpw_checkf}</p><br/>
        <button id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit">아이디 찾기</button>
      </form>

		</div>
        <div class="links">
            <a href="?target=pwSearch">비밀번호 찾기</a> | <a href="?target=login">로그인</a> | <a href="?target=join">회원가입</a>

        </div>
	</div>

  </body>

	<script type="text/javascript">

	  	//아이디 정규식
		var idJ = /^[a-z0-9]{5,20}$/;

  		$("#member_id").focusout(function(){
	     if($('#member_id').val() == ""){
	   		$('#checks').text('전화번호를 입력해주세요.');
	   	  	$('#checks').css('color', 'red');
	     }
	     });

  		$("#member_id").focusout(function(){
  			if(!idJ.test($(this).val())){
  			$('#checks').text('5~20자의 영문 소문자, 숫자만 사용가능합니다');
  			$('#checks').css('color', 'black');
  		}
  		 });

  		$("#name").focusout(function(){
	     if($('#name').val() == ""){
	   		$('#checks').text('이름을 입력해주세요.');
	   	  	$('#checks').css('color', 'black');
	     }
	     });

  		$("#email").focusout(function(){
	     if($('#email').val() == ""){
	   		$('#checks').text('이메일을 입력해주세요');
	   	  	$('#checks').css('color', 'black');
	     }
	     });

  </script>
</html>