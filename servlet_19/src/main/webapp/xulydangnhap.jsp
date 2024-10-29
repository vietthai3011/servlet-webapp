<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Xu ly dang nhap</title>
    </head>

    <body>
        <% String username=request.getParameter("username"); String
        password=request.getParameter("password"); %> <%
        if(username.equalsIgnoreCase("Thai") && password.equals("123")) { %>
        <p>Ban da dang nhap thanh cong</p>
        <% }else { %>

        <p>Khong tim thay ban</p>
        <% } %>
    </body>
</html>
