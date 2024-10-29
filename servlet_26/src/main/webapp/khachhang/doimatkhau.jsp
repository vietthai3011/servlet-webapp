<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ page import="model.KhachHang" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Đổi mật khẩu</title>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
        />

        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
        />
    </head>
    <% String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath(); %>
     <% String baoLoi = (String) request.getAttribute("baoLoi");
      if(baoLoi == null) baoLoi = ""; %>
    <body style="height: 100vh">
    
        <%-- <%@include file="../header.jsp" %> --%>
        <jsp:include page="/header.jsp" />

        <% 
        KhachHang khachHang = (KhachHang) session.getAttribute("khachHang");
        String tenDangNhap = null;  
        String password = null;
        if (khachHang != null) {
            tenDangNhap = khachHang.getTenDangNhap();
            password = khachHang.getMatKhau();
        }
        if(tenDangNhap == null && password == null) {%>

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
                String baoLoiPassword = (String) request.getAttribute("baoLoiPassword");
                if(baoLoiPassword == null) baoLoiPassword = ""; 
                String matKhauHienTai = (String) request.getAttribute("matKhauHienTai");
                if (baoLoiPassword.equals("Mật khẩu đã đổi thành công")) { %>
                    <script>
                        setTimeout(function () {
                            window.location.href = "<%= url %>/index.jsp";
                        }, 3000)
                    </script>
                <% } %>

        <div class="container">
            <main>
                <h1 class = "mt-5 mb-3 d-block text-center  ">Đổi mật khẩu</h1>
                <form action="../khachhang" method="get">
                    <input type="hidden" name="hanhDong" value="doiMatKhau">
                    
                    <span class = "text-danger"> <%= baoLoiPassword %> </span>
                    <div class="mb-3">
                        <label for="matKhauHienTai" class="form-label"
                            >Mật khẩu hiện tại </label
                        >
                        <input
                            type="password"
                            class="form-control"
                            id="matKhauHienTai"
                            name="matKhauHienTai"
                        />
                    </div>
                    <div class="mb-3">
                        <label for="matKhauMoi" class="form-label"
                            >Mật khẩu mới</label
                        >
                        <input
                            type="password"
                            class="form-control"
                            id="matKhauMoi"
                            name="matKhauMoi"
                            onkeyup="kiemTraMK()"
                        />
                    </div>
                    <div class="mb-3">
                        <label class="form-check-label" for="exampleCheck1"
                            >Nhập lại mật khẩu mới</label
                        >
                        <input
                            type="password"
                            class="form-control"
                            id="matKhauNhapLai"
                            name="matKhauNhapLai"
                            onkeyup="kiemTraMK()"
                        />
                        <small id="msg" class= "text-danger  pb-2"></small>
                    </div>
                    <div class= "text-center mt-2">
                        <button id="luuMatKhau" type="submit" class="btn btn-primary opacity-50 user-select-none" disabled onclick="kiemTraMK()" >
                            Lưu mật khẩu
                        </button>
                    </div>
                </form>
            </main>
        </div>
        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"
        ></script>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
            crossorigin="anonymous"
        ></script>

        <script>
            const matKhauHienTai = document.getElementById("matKhauHienTai");
            const matKhauMoi = document.getElementById("matKhauMoi");
            const matKhauNhapLai = document.getElementById("matKhauNhapLai");
            let msg = document.getElementById("msg");
            const luuMatKhau = document.getElementById("luuMatKhau");

            function kiemTraMK() {
                 if (matKhauMoi.value !== matKhauNhapLai.value || matKhauMoi.value === "" || matKhauNhapLai.value === "" || matKhauHienTai.value === "") {
                    msg.textContent = "Mật khẩu không khớp";     
                }else{
                    msg.textContent = "";
                    luuMatKhau.removeAttribute("disabled");
                    luuMatKhau.classList.remove("opacity-50");
                    luuMatKhau.classList.remove("user-select-none");
                }
            }
        </script>
        
         <%@include file="/footer.jsp"%>
    </body>

    <% } %> 
</html>
