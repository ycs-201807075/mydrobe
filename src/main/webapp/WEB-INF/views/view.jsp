<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.yuhan.mydrobe.Board" %>
<%@ page import="com.yuhan.mydrobe.BoardDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
    <link rel="stylesheet" href="css/css.css">
</head>
<body>

    <%
    	 String userID = null;
    	 	if(session.getAttribute("userID") != null){
    	 		userID = (String) session.getAttribute("userID");
    	 	}
    	 	int boardID = 0;
    	 	if(request.getParameter("boardID") != null){
                boardID = Integer.parseInt(request.getParameter("boardID"));
    	 	}
    	 	if(boardID == 0){
    	 		 PrintWriter script = response.getWriter();
            	 script.println("<script>");
            	 script.println("alert('유효하지 않은 글입니다.')");
            	 script.println("history.back()");
            	 script.println("</script>");
    	 	}
    	 	BoardDAO boardDAO = new BoardDAO();
    	 	Board board = new Board();
    	 	board = boardDAO.getBoard(boardID);
    %>

    <div class="board_wrap">

        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd> <%=board.getBoardTitle().replaceAll(" ","&nbsp").replaceAll("<","&lt").replaceAll("<","&gt").replaceAll("\n","<br>") %> </dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                            <dt>작성자</dt>
                            <dd><%= board.getUserID() %></dd>
                    </dl>
                    <dl>
                            <dt>작성일</dt>
                            <dd> <%= board.getBoardDate().substring(0,11) %></dd>
                    </dl>

                </div>
                <div class="cont">
                <dl>
                 <dt></dt>
                   <dd style="min-height:300px;font-size:25px;"> <%= board.getBoardContent().replaceAll(" ","&nbsp").replaceAll("<","&lt").replaceAll("<","&gt").replaceAll("\n","<br>") %> </dd>
                </dl>
            </div>
            <div class="bt_wrap">
                <a href="?target=community"><input type="button" class ="on">글목록</a>
                <%
                    if(userID != null && userID.equals(board.getUserID())){
                %>
                    <a href="?target=update&boardID=<%= boardID %>"><input type="button" class ="on">글수정</a>
                    <a onclick="return confirm('정말로 삭제하시겠습니까?')" href="deleteAction?boardID=<%= boardID %>"><input type="button" class ="on">글삭제</a>
                <%
                    }
                %>
            </div>
        </div>
    </div>
</body>
</html>