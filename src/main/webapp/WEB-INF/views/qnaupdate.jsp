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
    <title>Q&A게시판질문등록</title>
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

    .board_write .info dl {
        display: inline-block;
        width: 30%;
        vertical-align: middle;
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
    	 	if(userID == null){
    	 		 PrintWriter script = response.getWriter();
            	 script.println("<script>");
            	 script.println("alert('로그인을 하세요.')");
            	 script.println("history.back()");
            	 script.println("</script>");
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
    	 	qnaBoard qnaboard = new qnaBoardDAO().getqnaBoard(qnaboardID);
            if(!userID.equals(qnaboard.getUserID())){
      	 		 PrintWriter script = response.getWriter();
              	 script.println("<script>");
              	 script.println("alert('권한이 없습니다.')");
              	 script.println("history.back()");
              	 script.println("</script>");
            }

    %>

    <div class="board_wrap">
        <div class="board_title">
            <strong>질문등록</strong>
            <p>무엇이 궁금하신가요?</p>
        </div>

        <form method="post" action="qnaupdateAction?qnaboardID=<%= qnaboardID %>">
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text" name="qnaboardTitle" value="<%qnaboard.getqnaboardTitle()%>" maxlength="30"></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                             <dt>비밀번호</dt>
                            <dd><input type="password" name = "qnaboardpw" placeholder="비밀번호 입력" pattern="^[0-9]+$" minlength="4" maxlength="4"></dd>
                    </dl>
                    <dl>
                        <dd class="expw">※ 비밀번호는 숫자 4자리 예)1234</dd>
                    </dl>

                </div>
                <div class="cont">
                   <dd><textarea name="qnaboardContent" value="<%qnaboard.getqnaboardContent()%> maxlength="3000"></textarea></dd>
                </div>
            </div>
            <div class="bt_wrap">
                <input type="submit" class ="on" value="글수정">
          </form>
                <a href="?target=qna">취소</a>
            </div>
        </div>
    </div>
</body>
</html>