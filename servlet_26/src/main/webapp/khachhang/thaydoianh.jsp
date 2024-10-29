<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ page import="model.KhachHang" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Thay đổi ảnh</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
            crossorigin="anonymous"
        />
        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
            integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
            integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
            crossorigin="anonymous"
        ></script>
    </head>
    <% String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath(); %> 
    <body style="height: 100vh">
        
        <jsp:include page="/header.jsp" />

        <% KhachHang khachHang = (KhachHang) session.getAttribute("khachHang");
             if (khachHang == null) 
            {%>

            <div
                class="container text-center h-100 d-flex justify-content-center align-items-center"
                style="color: red"
            >
                <h1>Bạn chưa đăng nhập, vui vòng quay lại trang chủ</h1>
            </div>  
            <script>
                setTimeout(function () {
                    window.location.href = "<%= url %>/index.jsp";
                }, 3000);
            </script>

        <% }else { 

        String urlAnh = khachHang.getUrlAnh();

        String msg = (String) request.getAttribute("msg");

        if(msg == null) {
            msg = "";
        } else if (msg.equals("Cập nhật thành công")) { %>
            
            <script> 
                setTimeout(function () {
                    window.location.href = "<%= url %>/index.jsp";
                }, 3000);
            </script>

        <% }else if (msg.equals("Cập nhật thất bại")) { %>
            
            <script> 
                setTimeout(function () {
                    window.location.href = "<%= url %>/khachhang/thaydoithongtin.jsp";
                }, 1000);
            </script>

        <% }


         %>

        <div class="container">
            <form action="<%= url %>/thaydoiavatar" method="post" enctype="multipart/form-data">
            <h1 class = "text-danger text-center mt-3"> <%= msg %> </h1>
                <img src="<%= url %>/avatar/<%= urlAnh %>" width= "200px" alt="avatar">

                <h3 class="text-center">Thay avatar</h3>
                <div class="mb-3">
                    <label for="duongDanAnh" class="duongDanAnh"
                        >Họ và tên</label
                    >
                    <input
                        type="file"
                        class="form-control"
                        id="duongDanAnh"
                        name="duongDanAnh"
                    />
                </div>    

                <div class="d-flex justify-content-center">
                    <button
                        type="submit"
                        class="btn btn-primary w-25 mt-5"
                        name="submit"
                        id="submit"
                    >
                        Lưu thông tin
                    </button>
                </div>
            </form>
        </div>
        <% } %>
        <jsp:include page="../footer.jsp" />ss= "container">

    </body>
</html>
