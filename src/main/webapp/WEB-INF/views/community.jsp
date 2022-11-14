<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.yuhan.mydrobe.Board" %>
<%@ page import="com.yuhan.mydrobe.BoardDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="ko">
<head>
   <style>
    * {
        margin: 0;
        padding: 0;
    }

    ul, li {
        list-style: none;
    }

    a {
        text-decoration: none;
        color: inherit;
    }

    .board_wrap {
        width: 1000px;
        margin: 100px auto;
    }

    .board_title {
        margin-bottom: 30px;
    }

    .board_title strong {
        font-size: 3rem;
    }

    .board_title p {
        margin-top: 5px;
        font-size: 1.4rem;
    }

    .bt_wrap {
        margin-top: 30px;
        text-align: center;
        font-size: 0;
    }

    .bt_wrap a {
        display: inline-block;
        min-width: 80px;
        margin-left: 10px;
        padding: 10px;
        border: 1px solid #000;
        border-radius: 2px;
        font-size: 1.4rem;
    }

    .bt_wrap a:first-child {
        margin-left: 0;
    }

    .bt_wrap a.on {
        background: #000;
        color: #fff;
    }

    .board_list {
        width: 100%;
        border-top: 2px solid #000;
    }

    .board_list > div {
        border-bottom: 1px solid #ddd;
        font-size: 0;
    }

    .board_list > div.top {
        border-bottom: 1px solid #999;
    }

    .board_list > div:last-child {
        border-bottom: 1px solid #000;
    }

    .board_list > div > div {
        display: inline-block;
        padding: 15px 0;
        text-align: center;
        font-size: 1.4rem;
    }

    .board_list > div.top > div {
        font-weight: 600;
    }

    .board_list .num {
        width: 10%;
    }

    .board_list .title {
        width: 50%;
        text-align: left;
    }

    .board_list .top .title {
        text-align: center;
    }

    .board_list .writer {
        width: 10%;
    }

    .board_list .date {
        width: 10%;
    }
    .board_list .like{
        width: 10%;
    }

    .board_list .count {
        width: 10%;
    }

    .board_page {
        margin-top: 30px;
        text-align: center;
        font-size: 0;
    }

    .board_page a {
        display: inline-block;
        width: 40px;
        height: 40px;
        box-sizing: border-box;
        vertical-align: middle;
        border: 1px solid #ddd;
        border-left: 0;
        line-height: 100%;
    }

    .board_page a.bt {
        padding-top: 10px;
        font-size: 1.2rem;
        letter-spacing: -1px;
    }

    .board_page a.num {
        padding-top: 9px;
        font-size: 1.4rem;
    }

    .board_page a.num.on {
        border-color: #000;
        background: #000;
        color: #fff;
    }

    .board_page a:first-child {
        border-left: 1px solid #ddd;
    }

    .board_view {
        width: 100%;
        border-top: 2px solid #000;
    }

    .board_view .title {
        padding: 20px 15px;
        border-bottom: 1px dashed #ddd;
        font-size: 2rem;
    }

    .board_view .info {
        padding: 15px;
        border-bottom: 1px solid #999;
        font-size: 0;
    }

    .board_view .info dl {
        position: relative;
        display: inline-block;
        padding: 0 20px;
    }

    .board_view .info dl:first-child {
        padding-left: 0;
    }

    .board_view .info dl::before {
        content: "";
        position: absolute;
        top: 1px;
        left: 0;
        display: block;
        width: 1px;
        height: 13px;
        background: #ddd;
    }

    .board_view .info dl:first-child::before {
        display: none;
    }

    .board_view .info dl dt,
    .board_view .info dl dd {
        display: inline-block;
        font-size: 1.4rem;
    }

    .board_view .info dl dt {

    }

    .board_view .info dl dd {
        margin-left: 10px;
        color: #777;
    }

    .board_view .cont {
        padding: 15px;
        border-bottom: 1px solid #000;
        line-height: 160%;
        font-size: 1.4rem;
    }

    .board_write {
        border-top: 2px solid #000;
    }

    .board_write .title,
    .board_write .info {
        padding: 15px;
    }

    .board_write .info {
        border-top: 1px dashed #ddd;
        border-bottom: 1px solid #000;
        font-size: 0;
    }

    .board_write .title dl {
        font-size: 0;
    }

    .board_write .info dl {
        display: inline-block;
        width: 50%;
        vertical-align: middle;
    }

    .board_write .title dt,
    .board_write .title dd,
    .board_write .info dt,
    .board_write .info dd {
        display: inline-block;
        vertical-align: middle;
        font-size: 1.4rem;
    }

    .board_write .title dt,
    .board_write .info dt {
        width: 100px;
    }

    .board_write .title dd {
        width: calc(100% - 100px);
    }

    .board_write .title input[type="text"],
    .board_write .info input[type="text"],
    .board_write .info input[type="password"] {
        padding: 10px;
        box-sizing: border-box;
    }

    .board_write .title input[type="text"] {
        width: 80%;
    }

    .board_write .cont {
        border-bottom: 1px solid #000;
    }

    .board_write .cont textarea {
        display: block;
        width: 100%;
        height: 300px;
        padding: 15px;
        box-sizing: border-box;
        border: 0;
        resize: vertical;
    }
    .container {
                        margin-left : 4rem;
                        margin-right : 4rem;
                        }
       </style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=500, initial-scale=1.0">
    <title>자유게시판</title>

</head>
<body>
        <%
        	 String userID = null;
        	 	if(session.getAttribute("userID") != null){
        	 		userID = (String) session.getAttribute("userID");
        	 }
        	 int pageNumber = 1;
        	 if(request.getParameter("pageNumber") != null){
        	    pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
        	 }
        %>

<div class="container">
    <div class="board_wrap">
        <div class="board_title">
        </div>

        <div class="board_list_wrap">
            <h1>Community</h1>
            <strong>자유게시판</strong>
            <div class="board_list">

                <div class="top">
                    <div class="num">번호</div>
                    <div class="title">제목</div>
                    <div class="writer">글쓴이</div>
                    <div class="date">작성일</div>
                    <div class="like">좋아요</div>
                    <div class="count">조회</div>
                </div>
                <%
                    BoardDAO boardDAO = new BoardDAO();
                    ArrayList<Board> list = boardDAO.getList(pageNumber);
                    for(int i = 0; i < list.size(); i++){
                %>
                <div>
                    <div class="num"><%= list.get(i).getBoardID() %> </div>
                    <div class="title"><a href="?target=view?boardID = <%=list.get(i).getBoardID() %>"><%=list.get(i).getBoardTitle().replaceAll(" ","&nbsp").replaceAll("<","&lt").replaceAll("<","&gt").replaceAll("\n","<br>") %></a></div>
                    <div class="writer"><%= list.get(i).getUserID() %></div>
                    <div class="date"><%=list.get(i).getBoardDate().substring(0,11) %></div>
                    <div class="like"><%= list.get(i).getBoardLike() %></div>
                    <div class="count"><%= list.get(i).getBoardRead() %></div>
                </div>
                <%
                    }
                %>
                </div>
             <div class="board_page">
            <%
                if(pageNumber != 1 ){
            %>
                 <a href="?target=board?pageNumber=<%=pageNumber -1 %>" class="bt prev">이전</a>
            <%
            } if(boardDAO.nextPage(pageNumber + 1 )) {
            %>
                 <a href="?target=board?pageNumber=<%=pageNumber +1 %>" class="bt prev">다음</a>
            <%
            }
            %>
            </div>
            <div class="bt_wrap">
                <a href="?target=write" class="on">글쓰기</a>>
            </div>
        </div>
    </div>
   </div>
</body>