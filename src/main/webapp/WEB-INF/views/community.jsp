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

  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <title>My Drobe community</title>
  <style>

	.bottom{
	        position: absolute;
	        bottom: 0;

			align-content: center;
			background-color: rgba(40, 40, 40, 0.7);
			color: #FFFFFF;
			font-size: 12px;
			float: left;
		}
		.bottom1{

			margin-bottom: 25px;
		}
		.bottom2{

			font-size: 30px;
			font-style: italic;
			font-weight: bold;
		}
		.bottom3{

			height: 30px;
			background-color: #404040;
			text-align: center;
		}
		.wrapper{
		height: auto;
        min-height: 100%;
        padding-bottom: (footer높이);
        }
         .footer{
         height: (footer높이);
         position : relative;
         transform : translateY(-100%);
          }

	</style>
</head>
<body link="#000000" vlink="#000000" alink="#000000">

<!--border="1" width="1000" height="500"-->
<!--talble-hover:커서 위에 놓을시 회색으로 바뀜. -->
<!--container를 추가 해야 가운데 라인에 컨테이너 틀이 잡힘.-->
<div class="container">
  <!--boot strap add-->
  <nav class="navbar navbar-dark bg-dark">
    <div class="container-fluid">
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="제목+내용" aria-label="Search">
        <button class="btn btn-light" type="submit">찾기</button>
      </form>
    </div>
  </nav>
  <!--boot strap add -->
<table class = "table table-striped">
  <thead>
  <tr>
    <th >글번호</th>
    <th >제목</th>
    <th >내용</th>
    <th >작성자</th>
    <th >작성일</th>
    <th >조회</th>
    <th >좋아요</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>4</td>
    <td>제목란</td>
    <th>내용</th>
    <td>작성자란</td>
    <td></td>
    <td>조회란</td>
    <td>10</td>
  </tr>
  <tr>
    <td>4</td>
    <td>제목란</td>
    <th>내용</th>
    <td>작성자란</td>
    <td></td>
    <td>조회란</td>
    <td>10</td>
  </tr>
  <tr>
    <td>3</td>
    <td>제목란</td>
    <th>내용</th>
    <td>작성자란</td>
    <td></td>
    <td>조회란</td>
    <td>10</td>
  </tr>

  <tr>
    <td>2</td>
    <td>제목란</td>
    <th>내용</th>
    <td>작성자란</td>
    <td></td>
    <td>조회란</td>
    <td>10</td>
  </tr>

  <tr>
    <td>1</td>
    <td>제목란</td>
    <th>내용</th>
    <td>작성자란</td>
    <td></td>
    <td>조회란</td>
    <td>10</td>
  </tr>
  </tbody>
</table>
<hr/>
<!--pagination:게시판 하단에 위치한 일련의 숫자 버튼. 22.09.15-->
<!-- pagination css랑 병목으로 인한 적용 실패. 22.09.16-->
  <!--139번 라인 DB연동시 사용가능하게 버튼 설계완료.
  id="post-button" onclick="writePost()"
  -->
  <div class="text-lg-end text-right">
  <button type="button" class="btn btn-secondary" onClick="location.href='writingpage.jsp'">글쓰기</button>
  </div>
  <!-- class를 page-item->page-link->디자인은muted->링크는 공백으로(boot strap방식.) 22.09.19-->
  <!-- pagination 미적용에 대한 메모 22.09.19-->
   <ul class="pagination justify-content-end">
     <li class="page-item" ><a class="page-link text-muted" href="#">Previous</a></li>
     <li class="page-item"><a class="page-link text-muted" href="#">1</a></li>
     <li class="page-item"><a class="page-link text-muted" href="#">2</a></li>
     <li class="page-item"><a class="page-link text-muted" href="#">3</a>
     <li class="page-item"><a class="page-link text-muted" href="#">Next</a></li>


     <!--
     <li><a href="#"><span aria-hidden="true">«</span><span class="sr-only">Previous</span></a></li>
     <li><a href="#">1</a></li>
     <li><a href="#">2</a></li>
     <li><a href="#">3</a></li>
     <li><a href="#">4</a></li>
     <li><a href="#">5</a></li>
     <li><a href="#"><span aria-hidden="true">»</span><span class="sr-only">Next</span></a></li>
     -->
  </ul>

</div>
<!--footer 부분 화면 정렬 2분할의 두번째부분 하단 시작!!! -->
<footer class="bottom">
  <div id='wrapper'>
    <br><br>
    <table style="width: 2000px" class="bottom1">
      <tr>
        <td align="center" style="width: 650px" rowspan="3" class="bottom2">My Drobe</td>
        <td style="width: 800px">상호명 : (주)XX컴퍼니 &nbsp;&nbsp;&nbsp; 대표자 : XXX &nbsp;&nbsp;&nbsp; 주소 : 05468 서울특별시 강서구 OO로 224(OO동) 파크  301호</td>
        <td rowspan="3">HOME | AGREEMENT | GUIDE | PRIVACY</td>
      </tr>
      <tr>
        <td>사업자등록번호 : 456-78-00156[사업자 정보 확인] &nbsp;&nbsp;&nbsp; 개인정보보호책임자 : 김선비(youcodi@naver.com)</td>
      </tr>
      <tr>
        <td>전화번호 : 02-1596-4578 &nbsp;&nbsp;&nbsp; 팩스 : 02-4567-5478</td>
      </tr>
    </table>
    <div class="bottom3">
      <h4 style="padding-top: 8px">COPYRIGHT@4462-5789 BY NEW YOUCODI ALL RIGHTS RESERVED.</h4>
    </div>
  </div>
</footer>

</body>
</html>