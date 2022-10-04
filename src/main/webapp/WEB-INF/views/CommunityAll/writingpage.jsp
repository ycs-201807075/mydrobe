<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>게시판 글쓰기</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script></head>
<body>
<div class="container">
  <h2>게시판 글쓰기</h2>
  <form action="write.jsp" method="post">
    <div class="form-group">
      <label for="title">제목</label>
      <!-- placeholder 속성 입력한 데이터가 없는 경우 배경으로 나타난다.실제적으로 입력을 100자까지로 지정 -->
      <!-- required 속성을 설정하면 필수입력 사항이된다. -->
      <!-- pattern 속성을 이용한 정규표현식으로 데이터의 유효성 검사를 할 수 있다. -->
      <input type="text" class="form-control" id="title"
             placeholder="제목 입력(4-100)" name="title"
             maxlength="100" required="required"
             pattern=".{4,100}">
    </div>
    <div class="form-group">
      <label for="content">내용</label>
      <!--  여러줄의 데이터를 입력하고 하고자 할때 textarea 태그를 사용한다. -->
      <!--  textarea 안에 있는 모든 글자는 그대로 나타난다. 공백문자, tag, enter -->
      <textarea class="form-control" rows="5" id="content"
                name="content" placeholder="내용 작성"></textarea>
    </div>
    <div class="form-group">
      <label for="writer">작성자</label>
      <input type="text" class="form-control" id="writer"
             placeholder="작성자(2자-10자)" name="writer">
    </div>
    <button type="submit" class="btn btn-default">등록</button>
  </form>
</div>
</body>
</html>

<!--
<폼태그>
1.폼은 터치 인터페이스에 맞게 변환된 컨트롤로 data-role 속성을 지정하지 않아도 자동으로 변환, 표시된다.
2.<form> 태그틑 입력 컨트롤과 관련 정보를 하나로 묶어 하나의 입력폼으로 그룹화하고 전송 방식을 설정한다.
3.<input>, <select>, <textarea> 등의 태그를 이용하여 입력 컨트롤 생성하여 폼을 완성한다.
4.method의 post는 로그인 등 정보 노출이 제한되어야 하는 곳에 쓰인다.
 ex)<form action="form.jsp" method="post">

 태그 속성
 action ="URL주소" : 사용자가 입련한 저료를 전송할 위치
 method ="get/post" : 사용자 입력 정보의 전송방식을 지정
                      get:url주소에 입력 정보(변수명+변수값을 추가해 문자열을 보내는 방식)
                      post:url주소가 아닌 내부적(트랜잭션)으로 보내는방식
                      보안성이 높고 전송량 제한이 없음.


<입력태그>
1.<input> 태그의 type 속성 값에 따라 다양한 입력 컨트롤을 생성한다.
2.<form> 태그의 하위 태그로 명세하며 정보를 입력받는 가장 기본적인 방식이다.
3.시작과 종료 태그를 합친 <input/>형태로 명세한다.

<type>
text
password
hidden
checkbox
radio
button
submit
reset
image
file

name
id
value
max
min
step 증분값

<라벨 태그>
<label> 태그는 입력 컨트롤에 관한 의미나 설명을 표시한다. <label>태그에 라벨 문자열과 특정 입력 컨트롤을 연결하려면
<input> 태그의 id 속성값을 <label> 태그의 for속성값으로 설정한다.
<label> 태그의 영역을 선택하더라도 연결된 입력 컨트롤이 자동으로 선택된다.
<label for="pw">비밀번호</label><input name="pw" type="password"/><br/>
<label for="name">이름</label><input name="name" type="text"/><br/>
<label for="age">나이</label><input name="age" type="number" min="0" max="200"/><br/>

<복수 문자열 입력 태그>
<textarea> 태그는 여러줄에 걸쳐 긴 문자열을 입력하기 위해 사용한다.
<textarea> 태그 안에 있는 모든 글자는 그대로 나타난다. 공백문자, tag, enter ...
<textarea class="form-control" rows="5" id="content" name="content" placeholder="내용 작성">자바를 시작하려고
하는데 자바가 무엇일까요?</textarea>

<선택 태그>
<select> 태그는 나열된 목록 항목 중 하나를 선택할 수 있는 선택 입력 컨트롤을 생성한다.
여러 항목을 동시에 선택하고 싶다면 multiple='multiple' 설정하면 가능하다.












-->

