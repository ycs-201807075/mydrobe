<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String target = request.getParameter("target");
    <!-- 가운데 페이지 이동-->
    if(target == null) target = "bottom";
    String targetPage = target + ".jsp";
    //
%>
<!DOCTYPE html>
<head>
    <meta name="Author" content="">
    <meta name="Keywords" content="">
    <meta name="Description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="./styles.css">
    <meta charset="UTF-8">
    <title>frameset banner</title>
</head>
<body>
    <table width="100%" cellpadding="5" align="center">
    <!-- tr td 태그를 통한 화면 분할 상단. banner.jsp-->
        <tr>
            <td>
                <jsp:include page="banner.jsp" flush="false" />
            </td>
        </tr>
     <!-- tr td 태그를 통한 화면 분할 하단. banner.jsp-->
        <tr>
            <td valign="middle">
                <jsp:include page="<%= targetPage%>" flush="false" />
            </td>
        </tr>
    </table>
</body>
</html>