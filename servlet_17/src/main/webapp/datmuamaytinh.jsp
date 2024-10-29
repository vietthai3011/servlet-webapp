<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Dat mua may tinh</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous"
        />
    </head>
    <body>
        <% String processor = request.getParameter("processor"); double tongtien
        = 0; double processorPrice = 0; if (processor != null) { if
        (processor.equals("core_i9")) { processorPrice += 5000000; } else if
        (processor.equals("core_i7")) { processorPrice += 4000000; } if
        (processor.equals("core_i5")) { processorPrice += 3000000; } tongtien +=
        processorPrice; } String ram = request.getParameter("ram"); double
        ramPrice = 0; if (ram != null) { if (ram.equals("ram_16")) { ramPrice +=
        2000000; } else if (ram.equals("ram_8")) { ramPrice += 500000; }
        tongtien += ramPrice; } String monitor =
        request.getParameter("monitor"); double monitorPrice = 0; if (monitor !=
        null) { monitorPrice += 4000000; } tongtien += monitorPrice; String[]
        accessories = request.getParameterValues("accessories"); double
        accessoriesPrice = 0; for (String string : accessories) { if
        (string.equals("camera")) { tongtien += 800000; } else if
        (string.equals("printer")) { tongtien += 1500000; } else if
        (string.equals("scanner")) { tongtien += 800000; } tongtien +=
        accessoriesPrice; } %>

        <h1>Hóa đơn</h1>

        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Tên sản phẩm</th>
                    <th scope="col">Giá tiền</th>
                </tr>
            </thead>
            <tbody>
                <% if(processor != null){ %>
                <tr>
                    <td><%= processor %></td>
                    <td><%= processorPrice %></td>
                </tr>
                <% }%> <% if(ram != null){ %>
                <tr>
                    <td><%= ram %></td>
                    <td><%= ramPrice %></td>
                </tr>
                <% } %> <% if(monitor != null){ %>
                <tr>
                    <td><%= monitor %></td>
                    <td><%= monitorPrice %></td>
                </tr>
                <% } %> <% if(accessories != null) { for (String string :
                accessories) { double ptice = 0; if (string.equals("camera")) {
                ptice += 800000; } else if (string.equals("printer")) { ptice +=
                1500000; } else if (string.equals("scanner")) { ptice += 800000;
                } %>
                <tr>
                    <td><%= string %></td>
                    <td><%= ptice %></td>
                </tr>
                <% } } %>
            </tbody>
        </table>
        <h3 class="text-end">Tổng tiền: <%= tongtien %> VND</h3>
    </body>
</html>
