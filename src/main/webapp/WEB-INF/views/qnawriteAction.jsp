<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.yuhan.mydrobe.qnaBoard" %>
<%@ page import="com.yuhan.mydrobe.qnaBoardDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="qnaBoard" class="com.yuhan.mydrobe.qnaBoard" scope="page" />
<jsp:setProperty name="qnaBoard" property="qnaboardTitle" />
<jsp:setProperty name="qnaBoard" property="qnaboardpw" />
<jsp:setProperty name="qnaBoard" property="qnaboardContent" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
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
	 		script.println("로그인를 하세요')");
	 		script.println("location.href = 'login'");
	 		script.println("</script>");
	 	}else{
	 	if (qnaBoard.getqnaboardTitle() == null || qnaBoard.getqnaboardpw() == null || qnaBoard.getqnaboardContent() == null){
	 		PrintWriter script = response.getWriter();
	 		script.println("<script>");
	 		script.println("alert('입력이 안된 사항이 있습니다.')");
	 		script.println("history.back()");
	 		script.println("</script>");
	 	} else {
        	 	qnaBoardDAO qnaBoardDAO = new qnaBoardDAO();
        	 	int result = qnaBoardDAO.write(userID,qnaBoard.getqnaboardTitle(),qnaBoard.getqnaboardpw(),qnaBoard.getqnaboardContent());
	 		if (result == -1){
        	 		PrintWriter script = response.getWriter();
        	 		script.println("<script>");
        	 		script.println("alert('글쓰기에 실패하셨습니다')");
        	 		script.println("history.back()");
        	 		script.println("</script>");
		 	}
		 	else{
        	 		PrintWriter script = response.getWriter();
        	 		script.println("<script>");
        	 		script.println("alert('글작성에 성공하셨습니다')");
        	 		script.println("location.href = '/'");
        	 		//script.println("location.href = 'qna.jsp'");
        	 		script.println("</script>");
		 	}
	 	}
	 }
	 %>
</body>
</html>