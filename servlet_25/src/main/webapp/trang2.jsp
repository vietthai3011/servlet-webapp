<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Success</title>
</head>
<body>
    <%
        String username = session.getAttribute("username").toString();
        String password = session.getAttribute("password").toString();
    %>
    <h1> <%= username %></h1><br/>
    <hr/>
    <h1>Đây là trang trang 2</h1>
    <a href="trang1.jsp">Trang 1<a/>
</body>
</html>