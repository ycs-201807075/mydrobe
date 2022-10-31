<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- enctype은 파입 업로드에서 무조건 사용되어야한다 여러개의 파일이 폼 태그를 이용하여 이동가능-->
	<form action="imgtestAction" method="post" enctype="multipart/form-data">
		파일 : <input type="file" name="file"><br>
		파일 : <input type="file" name="file2"><br>
		<input type="submit" value="업로드"><br>
	</form>
	<%
	    String uploadDir = application.getRealPath("./");
        uploadDir = uploadDir.substring(0,uploadDir.indexOf("webapp")) + "resources/static/uploadImage/";
    	out.println("절대경로 : " + uploadDir + "<br/>");
    %>
</body>
</html>