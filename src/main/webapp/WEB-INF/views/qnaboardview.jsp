<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.yuhan.mydrobe.qnaBoard" %>
<%@ page import="com.yuhan.mydrobe.qnaBoardDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/css.css">

    <style>

    .on{
    display: inline-block;
    min-width: 102px;
    margin-left: 10px;
    padding: 10px;
    border: 1px solid #000;
    border-radius: 2px;
    font-size: 1.4rem;
    background: #000;
    color: #fff;
    }

    .board_write .info .expw{
        font-size : 12px;
    }
    </style>

</head>
<body>

    <%
    	 String userID = null;
    	 	if(session.getAttribute("userID") != null){
    	 		userID = (String) session.getAttribute("userID");
    	 	}
    	 	int qnaboardID = 0;
    	 	if(request.getParameter("qnaboardID") != null){
                qnaboardID = Integer.parseInt(request.getParameter("qnaboardID"));
    	 	}
    	 	if(qnaboardID == 0){
    	 		 PrintWriter script = response.getWriter();
            	 script.println("<script>");
            	 script.println("alert('유효하지 않은 글입니다.')");
            	 script.println("history.back()");
            	 script.println("</script>");
    	 	}
    	    qnaBoardDAO qnaboardDAO = new qnaBoardDAO();
            qnaBoard qnaboard = qnaboardDAO.getqnaBoard(qnaboardID);
    %>

    <div class="board_wrap">

        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd> <%= qnaboard.getqnaboardTitle().replaceAll(" ","&nbsp").replaceAll("<","&lt").replaceAll("<","&gt").replaceAll("\n","<br>") %></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                            <dt>작성자</dt>
                            <dd><%= qnaboard.getUserID() %></dd>
                    </dl>
                    <dl>
                            <dt>작성일</dt>
                            <dd> <%= qnaboard.getboardDate().substring(0,11) %></dd>
                    </dl>

                </div>
                <div class="cont">
                   <dd> <%= qnaboard.getqnaboardContent().replaceAll(" ","&nbsp").replaceAll("<","&lt").replaceAll("<","&gt").replaceAll("\n","<br>") %> </dd>
                </div>
            </div>
            <div class="bt_wrap">
                <a href="?target=qna"><input type="button" class ="on">글목록</a>
                <%
                    if(userID != null && userID.equals(qnaboard.getUserID())){
                %>
                    <a href="?target=qnaupdate?qnaboardID=<%= qnaboardID %>"><input type="button" class ="on">글수정</a>
                    <a onclick="return confirm('정말로 삭제하시겠습니까?')" href="qnadeleteAction?qnaboardID=<%= qnaboardID %>"><input type="button" class ="on">글삭제</a>
                <%
                    }
                %>
            </div>
        </div>
    </div>
</body>
</html>