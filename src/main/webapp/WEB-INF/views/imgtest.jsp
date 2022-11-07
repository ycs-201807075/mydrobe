<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.yuhan.mydrobe.ImgFileDAO" %>
<%@ page import="com.yuhan.mydrobe.ImgFile" %>
<%@ page import="com.yuhan.mydrobe.BoardDAO" %>
<%@ page import="com.yuhan.mydrobe.Board" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.io.File" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
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
    <%
        ImgFileDAO imgFileDAO = new ImgFileDAO();
        ArrayList<ImgFile> listImgToday = imgFileDAO.getImgListToday();
        ArrayList<ArrayList<ImgFile>> listImgDetail = imgFileDAO.getImgListDetail();

        BoardDAO boardDAO = new BoardDAO();
        ArrayList<Board> listBoardToday = boardDAO.getBoardListToday();
    %>
    <table border = 1>
            <%
                for(int i = 1; i <= listImgToday.size(); i++){
                    if(i % 5 == 1){
            %>
            <tr>
            <% } %>
            <td>
                <%
                    for(int j = 0; j < listImgDetail.get(i-1).size(); j++){
                %>
                    <div><%= listImgDetail.get(i-1).get(j).getImgFileRealName()%></div>
                <%
                    }
                %>
            </td>
            <%
                if(i % 5 == 0){ %>
                </tr>
                <% } %>
                <%
                }
            %>
    </table>
</body>
</html>