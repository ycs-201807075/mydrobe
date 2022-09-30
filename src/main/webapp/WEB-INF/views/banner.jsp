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
  <link rel="stylesheet" href="./styles.css">

  <title>My drobe</title>
  <style>

	</style>
</head>
<body link="#000000" vlink="#000000" alink="#000000" >

<header>
  <div class="search-box">
    <input type="text" class="search-txt" name="" placeholder="검색어를 입력하세요">
    <a class="search-btn" href="#">
      <i class="fas fa-search"></i>
    </a>
  </div>
  <!--경로 수정 필요한 자리. 아래 프레임으로 와져야함.-->
  <!--
  <a href="banner.jsp">
    <img src="images/logo.jpg" style="margin-top: 10px; margin-left: 60px" width="200" height="109" alt=""/>
  </a>
  -->
  <nav class="menubar">

    <div class="right-top">
      <h3>
        <a href="login.jsp" target="category">Login</a>&nbsp;&nbsp;&nbsp;
        <a href="join.jsp" target="category">SingUp</a>&nbsp;&nbsp;&nbsp;
        <a href="mypage.jsp" target="category">My</a>
      </h3>
    </div>

    <a href="today.jsp" target="category">Today</a>
    <a href="best.jsp" target="category">Best</a>
    <a href="community.jsp" target="category">Community</a>
    <a href="tip.jsp" target="category">Tip</a>
    <a href="qna.jsp" target="category">QnA</a>
  </nav>
</header>
</body>
</html>
