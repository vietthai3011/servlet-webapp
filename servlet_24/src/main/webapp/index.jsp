<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title></title>
    </head>
    <body>
        <% String path = request.getScheme() + "://" + request.getServerName() +
        ":" + request.getServerPort() + request.getContextPath(); %>
        <h1>hello</h1>
        <img src="<%= path%>/img/e404.svg" alt="" />
        <h1><%= path%>/img/e404.svg</h1>
    </body>
</html>
