<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 파일업로드 위한 라이브러리 임포트 -->
<%@ page import="com.yuhan.mydrobe.User" %>
<%@ page import="com.yuhan.mydrobe.UserDAO" %>
<%@ page import="com.yuhan.mydrobe.ImgFileDAO" %>
<%@ page import="com.yuhan.mydrobe.ImgFile" %>
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
	 	if(userID == null){
	 	    PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('로그인 후 이용해주세요.')");
            script.println("location.href = '/login'");
            script.println("</script>");
	 	} else{
            // 이미지 파일을 저장할 경로 지정
            String uploadDir = application.getRealPath("./");
            uploadDir = uploadDir.substring(0,uploadDir.indexOf("webapp")) + "resources/static/uploadImage/";

            // 이미지 크기, 인코딩 형식 지정 (100MB, UTF-8)
            int maxSize = 1024 * 1024 * 100;
            String encoding = "UTF-8";

            // 사용자가 작성한 게시글의 이미지 파일을 업로드 폴더에 저장
            DefaultFileRenamePolicy df = new DefaultFileRenamePolicy();
            MultipartRequest multipartRequest = new MultipartRequest(request, uploadDir, maxSize, encoding, df);

            // 게시글의 이미지 파일 및 텍스트 정보 저장
            Enumeration e = multipartRequest.getFileNames();
            String boardTitle = multipartRequest.getParameter("boardTitle");
            String boardContent = multipartRequest.getParameter("boardContent");

            // 게시글 정보를 DB에 저장
            if(e != null){
                BoardDAO boardDAO = new BoardDAO();
                int result = boardDAO.write(userID, boardTitle, boardContent);  // 게시글 텍스트 저장
                if(result == -1){
                    PrintWriter script = response.getWriter();
                    script.println("<script>");
                    script.println("alert('오류가 발생하였습니다.')");
                    script.println("history.back()");
                    script.println("</script>");
                } else{
                    int start = 1;
                    while(e.hasMoreElements()){
                        String n = (String)e.nextElement();
                        String fileName = multipartRequest.getOriginalFileName(n);
                        String fileRealName = multipartRequest.getFilesystemName(n);
                        if(fileName != null && fileRealName != null){
                            ImgFileDAO imgFileDAO = new ImgFileDAO();
                            imgFileDAO.upload(result, fileName, fileRealName, start);
                            start = 0;
                        }
                    }
                    PrintWriter script = response.getWriter();
                    script.println("<script>");
                    script.println("alert('저장이 완료되었습니다.')");
                    script.println("location.href = '/?target=today'");
                    script.println("</script>");
                }
            } else{
                PrintWriter script = response.getWriter();
                script.println("<script>");
                script.println("alert('사진을 한 장 이상 첨부해주세요.')");
                script.println("history.back()");
                script.println("</script>");
            }
        }

	 %>
</body>
</html>