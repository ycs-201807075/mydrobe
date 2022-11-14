
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<header>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MyDrobe</title>

    <!-- Head -->
    <div style="padding:0 0 10rem">
        <%@ include file="banner.jsp" %>
    </div>
</header>

       <%
         String target = request.getParameter("target");
         if (target == null) target = "home";
         String targetPage = target + ".jsp";
       %>

<body>
    <tr>
     <jsp:include page="<%= targetPage %>" flush="false"/>
    <!-- alert(targetPage); -->
    </tr>
</body>
<footer>
    <!-- footer -->
    <%@ include file="bottom.jsp" %>
</footer>
</html>