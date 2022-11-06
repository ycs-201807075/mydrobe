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
	 	String userID = null;
	 	if(session.getAttribute("userID") != null){
	 		userID = (String) session.getAttribute("userID");
	 	}
	 	if(userID != null){
	 		PrintWriter script = response.getWriter();
	 		script.println("<script>");
	 		script.println("이미 로그인이 되어 있습니다')");
	 		script.println("location.href = '/'");
	 		script.println("</script>");
	 	}
	 	if (user.getUserID() == null || user.getUserPassword() == null){
	 		PrintWriter script = response.getWriter();
	 		script.println("<script>");
	 		script.println("alert('입력이 안된 사항이 있습니다.')");
	 		script.println("history.back()");
	 		script.println("</script>");
	 	} else {
	 		UserDAO userDAO = new UserDAO();
	 		int result = userDAO.login(user.getUserID(), user.getUserPassword());
	 		if (result == 0){
		 		PrintWriter script = response.getWriter();
		 		script.println("<script>");
		 		script.println("alert('비밀번호를 잘못 입력하였습니다. 다시 확인해주세요.')");
		 		script.println("history.back()");
		 		script.println("</script>");
		 	}
		 	else if(result == -1){
                PrintWriter script = response.getWriter();
		 		script.println("<script>");
		 		script.println("alert('아이디를 잘못 입력하였습니다. 다시 확인해주세요.')");
		 		script.println("history.back()");
		 		script.println("</script>");
		 	}
		 	else if(result == -2){
                PrintWriter script = response.getWriter();
		 		script.println("<script>");
		 		script.println("alert('데이터베이스 오류가 발생하였습니다.')");
		 		script.println("history.back()");
		 		script.println("</script>");
		 	}
		 	else{
		 		session.setAttribute("userID",user.getUserID());
		 		PrintWriter script = response.getWriter();
		 		script.println("<script>");
		 		script.println("location.href = '/'");
		 		script.println("</script>");
		 	}
	 	}
	 %>
</body>
</html>