<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Dat hang</title>
    </head>
    <body>
        <% String hovaten = request.getParameter("hovaten"); String email =
        request.getParameter("email"); String soluong =
        request.getParameter("soluong"); int soluongsanpham = 1; try {
        soluongsanpham = Integer.parseInt(soluong); } catch (Exception e) { } %>

        <h1>Xác nhận</h1>
        <p>
            Xin cản ơn <b><%= hovaten %></b> đã đặt
            <b><%= soluongsanpham %></b> sản phẩm
        </p>
        <p>Số tiền cần phait trả là : <b><%= soluongsanpham * 5 %>$</b></p>
        <p>Bạn sẽ nhận được thông báo qua email <b><%= email %></b></p>
    </body>
</html>
