<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 파일업로드 위한 라이브러리 임포트 -->
<%@ page import="com.yuhan.mydrobe.ImgFileDAO" %>
<%@ page import="com.yuhan.mydrobe.ImgFile" %>
<%@ page import="com.yuhan.mydrobe.User" %>
<%@ page import="com.yuhan.mydrobe.UserDAO" %>
<%@ page import="com.yuhan.mydrobe.Board" %>
<%@ page import="com.yuhan.mydrobe.BoardDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.io.File" %>
<%@ page import="java.util.Enumeration" %>
<!-- 파일 이름이 동일한게 나오면 자동으로 다른걸로 바꿔주고 그런 행동 해주는것 -->
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<!-- 실제로 파일 업로드 하기 위한 클래스 -->
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="board" class="com.yuhan.mydrobe.Board" scope="page" />
<jsp:setProperty name="board" property="boardTitle" />
<jsp:setProperty name="board" property="boardContent" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	 <%
	 	String userID = null;
	 	if(session.getAttribute("userID") != null){
	 		userID = (String) session.getAttribute("userID");
	 	}

	 	String uploadDir = application.getRealPath("./");
        uploadDir = uploadDir.substring(0,uploadDir.indexOf("webapp")) + "resources/static/uploadImage/";

        int maxSize = 1024 * 1024 * 100;
        String encoding = "UTF-8";

		MultipartRequest multipartRequest = new MultipartRequest(request, uploadDir, maxSize, encoding, new DefaultFileRenamePolicy());
        Enumeration e = multipartRequest.getFileNames();

        if(multipartRequest == null){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('오류가 발생하였습니다.')");
            script.println("history.back()");
            script.println("</script>");
        } else{
            BoardDAO boardDAO = new BoardDAO();
            int result = boardDAO.write(userID, board.getBoardTitle(), board.getBoardContent());
            if(result == -1){
                PrintWriter script = response.getWriter();
                script.println("<script>");
                script.println("alert('오류가 발생하였습니다.')");
                script.println("history.back()");
                script.println("</script>");
            } else{
                int start = 1;  // 게시물 사진 시작 표시
                while(e.hasMoreElements()){
                    String n = (String)e.nextElement();
                    String fileName = multipartRequest.getOriginalFileName(n);
                    String fileRealName = multipartRequest.getFilesystemName(n);
                    ImgFileDAO imgFileDAO = new ImgFileDAO();
                    imgFileDAO.upload(result, fileName, fileRealName, start);
                    start = 0;
                }
                PrintWriter script = response.getWriter();
                script.println("<script>");
                script.println("alert('저장이 완료되었습니다.')");
                script.println("location.href = '/?target=today'");
                script.println("</script>");
            }
        }
	 %>
</body>
</html>