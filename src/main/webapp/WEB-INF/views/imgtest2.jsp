<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  테스트로 실제 작동하는지 출력을 위한 것 -->
	<!--  실제 동작하는것은 ImgFile4 이다 나머지는 왜 안되지...? 절대경로인데... -->
	<%
	    String uploadDir = this.getClass().getResource("").getPath();
        uploadDir = uploadDir.substring(1,uploadDir.indexOf("views"))+"uploadImage/";
        String uploadDir2 = application.getRealPath("./");
        uploadDir2 = uploadDir2.substring(1,uploadDir.indexOf("webapp")) + "/resources/uploadImage/";
        out.println(uploadDir2 + "<br/>");
    	out.println("절대경로 : " + uploadDir + "<br/>");

		String imgFile = uploadDir + "dog.png";
		out.println("이미지파일 경로 : " + imgFile + "<br/>");

		String imgFile2 = uploadDir + "dog.png";
		out.println("이미지파일 경로 : " + imgFile2 + "<br/>");

		String imgFile4 = "./uploadImage/dog.png";
	%>
		<img src="<%=imgFile%>" width="300px" height="300px"></img>
		<img src="<%=imgFile2%>" width="300px" height="300px"></img>
		<img src="<%=imgFile4%>" width="300px" height="300px"></img>
		<img src="uploadImage/dog.png" width="300px" height="300px"></img>
		<img src="images/Mydrobelogo.png" alt="Error" />

</body>
</html>