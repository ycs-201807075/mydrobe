<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.yuhan.mydrobe.User" %>
<%@ page import="com.yuhan.mydrobe.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="com.yuhan.mydrobe.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	 <%

	 		String userID = (String) session.getAttribute("userID");
        	String userPassword = request.getParameter("userPassword");

	 	if (request.getParameter("userPassword") == null ){
	 		PrintWriter script = response.getWriter();
	 		script.println("<script>");
	 		script.println("alert('새로운 비밀번호를 입력해주세요.')");
	 		script.println("history.back()");
	 		script.println("</script>");
	 	} else {
	 		UserDAO userDAO = new UserDAO();
	 		int result = userDAO.update(userPassword,userID);
	 		if (result == -1){
		 		PrintWriter script = response.getWriter();
		 		script.println("<script>");
		 		script.println("alert('비밀번호 변경이 실패하였습니다')");
		 		script.println("history.back()");
		 		script.println("</script>");
		 	}
		 	else{
		 		PrintWriter script = response.getWriter();
		 		script.println("<script>");
		 		script.println("alert('비밀번호 변경이 완료되었습니다.')");
		 		script.println("location.href = '/'");
		 		script.println("</script>");
		 	}
	 	}
	 %>
</body>
</html>