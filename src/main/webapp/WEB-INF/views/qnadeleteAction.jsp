<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.yuhan.mydrobe.qnaBoard" %>
<%@ page import="com.yuhan.mydrobe.qnaBoardDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="qnaBoard" class="com.yuhan.mydrobe.qnaBoard" scope="page" />
<jsp:setProperty name="qnaBoard" property="qnaboardTitle" />
<jsp:setProperty name="qnaBoard" property="qnaboardContent" />
<jsp:setProperty name="qnaBoard" property="qnaboardID" />
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
          }else{
        	 	qnaBoardDAO qnaBoardDAO = new qnaBoardDAO();
        	 	int result = qnaBoardDAO.delete(qnaboard.getqnaboardID());
	 		if (result == -1){
        	 		PrintWriter script = response.getWriter();
        	 		script.println("<script>");
        	 		script.println("alert('글삭제에 실패하셨습니다')");
        	 		script.println("history.back()");
        	 		script.println("</script>");
		 	}
		 	else{
        	 		PrintWriter script = response.getWriter();
        	 		script.println("<script>");
        	 		script.println("alert('글삭제에 성공하셨습니다')");
        	 		script.println("location.href = '/'");
        	 		//script.println("location.href = 'qna.jsp'");
        	 		script.println("</script>");
		 	}
	 	}
	 }
	 %>
</body>
</html>