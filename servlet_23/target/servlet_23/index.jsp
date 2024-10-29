<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Title</title>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
        />

        <!-- Bootstrap CSS v5.2.1 -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
        />

        <style>
            .red {
                color: red;
            }
        </style>
    </head>

    <% String e_soLuong = (String) request.getAttribute("e_soLuong"); String
    e_soDienThoai = (String) request.getAttribute("e_soDienThoai"); String
    e_email = (String) request.getAttribute("e_email"); e_soLuong = (e_soLuong
    != null) ? e_soLuong : ""; e_soDienThoai = (e_soDienThoai != null) ?
    e_soDienThoai : ""; e_email = (e_email != null) ? e_email : ""; %>

    <body>
        <div class="container">
            <form action="mua-hang" method="get">
                <label for="soLuong">Số lượng cần mua</label>
                <input type="text" name="soLuong" id="soLuong" />
                <small class="red"><%= e_soLuong %></small>

                <label for="soDienThoai">Nhập số điện thoại</label>
                <input type="text" name="soDienThoai" id="soDienThoai" />
                <small class="red"><%= e_soDienThoai %></small>

                <label for="email">Nhập email</label>
                <input type="email" name="email" id="email" />
                <small class="red"><%= e_email %></small>

                <input type="submit" value="Submit" />
            </form>
        </div>
    </body>
</html>
