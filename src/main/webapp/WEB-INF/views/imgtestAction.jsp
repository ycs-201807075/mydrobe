<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 파일업로드 위한 라이브러리 임포트 -->
<%@ page import="com.yuhan.mydrobe.ImgFileDAO" %>
<%@ page import="com.yuhan.mydrobe.ImgFile" %>
<%@ page import="java.io.File" %>
<%@ page import="java.util.Enumeration" %>
<!-- 파일 이름이 동일한게 나오면 자동으로 다른걸로 바꿔주고 그런 행동 해주는것 -->
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<!-- 실제로 파일 업로드 하기 위한 클래스 -->
<%@ page import="com.oreilly.servlet.MultipartRequest" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		 // 이미지 파일을 저장할 경로 지정
  	 	 //String uploadDir = this.getClass().getResource("").getPath();
		 //uploadDir = uploadDir.substring(1,uploadDir.indexOf(".metadata"))+"uploadImage";
		 String uploadDir = application.getRealPath("./");
		 uploadDir = uploadDir.substring(0,uploadDir.indexOf("webapp")) + "resources/static/uploadImage/";
		 out.println("절대경로 : " + uploadDir + "<br/>");


		// 이미지 크기, 인코딩 형식 지정 (100MB, UTF-8)
		int maxSize = 1024 * 1024 * 100;
		String encoding = "UTF-8";

		// 사용자가 작성한 게시글의 이미지 파일을 업로드 폴더에 저장
		MultipartRequest multipartRequest = new MultipartRequest(request, uploadDir, maxSize, encoding, new DefaultFileRenamePolicy());

        // 게시글의 이미지 파일 정보 저장
        Enumeration e = multipartRequest.getFileNames();

        // 게시글 정보를 DB에 저장
        boolean start = true;
        while(e.hasMoreElements()){
            String n = (String)e.nextElement();
            String fileName = multipartRequest.getOriginalFileName(n);
            String fileRealName = multipartRequest.getFilesystemName(n);
            ImgFileDAO imgFileDAO = new ImgFileDAO();
            imgFileDAO.upload(fileName, fileRealName, start);
            start = false;
            out.write("파일명 : " + fileName + "<br>");
            out.write("실제파일명 : " + fileRealName + "<br>");
        }



		// 이전 클래스 name = "file" 실제 사용자가 저장한 실제 네임
		String fileName = multipartRequest.getOriginalFileName("file");
		// 실제 서버에 업로드 된 파일시스템 네임
		String fileRealName = multipartRequest.getFilesystemName("file");

		// 데이터베이스에 이미지 정보 저장
		//ImgFileDAO imgFileDAO = new ImgFileDAO();
		//imgFileDAO.upload(fileName, fileRealName);
		//out.write("파일명 : " + fileName + "<br>");
        //out.write("실제파일명 : " + fileRealName + "<br>");

	%>
</body>
</html>