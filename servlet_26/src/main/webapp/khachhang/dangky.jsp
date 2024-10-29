<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Register</title>
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
    <body>
        <% String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath(); %>  
        <jsp:include page="/header.jsp" />

        <%
         String baoLoi = request.getAttribute("baoLoi") + "";
         baoLoi = baoLoi.equals("null") ? "" : baoLoi;  

        String tenDangNhap = request.getAttribute("tenDangNhap") + "";
         tenDangNhap = tenDangNhap.equals("null") ? "" : tenDangNhap;

        String hoVaTen = request.getAttribute("hoVaTen") + "";
         hoVaTen = hoVaTen.equals("null") ? "" : hoVaTen;

        String goiTinh = request.getAttribute("goiTinh") + "";
         goiTinh = goiTinh.equals("null") ? "" : goiTinh;

        String ngaySinh = (String) request.getAttribute("ngaySinh");
        ngaySinh = (ngaySinh == null || ngaySinh.equals("null")) ? "" : ngaySinh;

        String diaChiKhachHang = request.getAttribute("diaChiKhachHang") + "";
         diaChiKhachHang = diaChiKhachHang.equals("null") ? "" : diaChiKhachHang;

        String diaChiMuaHang = request.getAttribute("diaChiMuaHang") + "";
         diaChiMuaHang = diaChiMuaHang.equals("null") ? "" : diaChiMuaHang;

        String diaChiNhanHang = request.getAttribute("diaChiNhanHang") + "";
         diaChiNhanHang = diaChiNhanHang.equals("null") ? "" : diaChiNhanHang;

        String soDienThoai = request.getAttribute("soDienThoai") + "";
         soDienThoai = soDienThoai.equals("null") ? "" : soDienThoai;

        String email = request.getAttribute("email") + "";
         email = email.equals("null") ? "" : email;

        String dongYNhanEmail = (String) request.getAttribute("dongYNhanEmail");
         if (dongYNhanEmail == null) {
            dongYNhanEmail = "";
        } else {
            dongYNhanEmail = "checked"; // Giữ giá trị "checked" nếu checkbox được chọn
        }
        
         %>

        <div class="container">
            <h1 class="text-center">Đăng ký tài khoản</h1>
            <h2 style="color: red"> <%= baoLoi %> </h2>
            
            <form action="<%= url %>/khachhang" method="get">
            <input type="hidden" name="hanhDong" value="dangKy">
                <div class="row">
                    <div class="col-md-10 col-xl-6 offset-md-1 offset-xl-0">
                        <h3 class="text-center">Thông tin đăng nhập</h3>
                        <div class="mb-3">
                            <label for="tenDangNhap" class="email"
                                >Tên đăng nhập</label
                            >
                            <input
                                tabindex="1"
                                type="text"
                                class="form-control"
                                id="tenDangNhap"
                                name="tenDangNhap"
                                value="<%= tenDangNhap %>"
                            />
                        </div>
                        <div class="mb-3">
                            <label for="password" class="password"
                                >Mật khẩu</label
                            >
                            <input
                                tabindex="2"
                                type="password"
                                class="form-control"
                                id="password"
                                name="password"
                                onkeyup="kiemTraMK()"
                            />
                        </div>

                        <div class="mb-3">
                            <label for="passwordNhapLai" class="password"
                                >Nhập lại mật khẩu</label
                            >
                            <input
                                tabindex="2"
                                type="password"
                                class="form-control"
                                id="passwordNhapLai"
                                name="passwordNhapLai"
                                onkeyup="kiemTraMK()"
                            />
                            <small id="msg"></small>
                        </div>
                        <hr />
                    </div>

                    <div class="col-md-10 col-xl-6 offset-md-1 offset-xl-0">
                        <h3 class="text-center">Thông tin khách hàng</h3>
                        <div class="mb-3">
                            <label for="hoVaTen" class="hoVaTen"
                                >Họ và tên</label
                            >
                            <input
                                type="text"
                                class="form-control"
                                id="hoVaTen"
                                name="hoVaTen"
                                value="<%= hoVaTen %>"
                            />
                        </div>
                        <div class="mb-3">
                            <label for="goiTinh" class="goiTinh"
                                >Giói tính</label
                            >
                            <select
                                name="goiTinh"
                                id="goiTinhID"
                                class="form-select"
                            >
                                <option value="nam" <%= goiTinh.equals("nam")?"selected":"" %> >Nam</option>
                                <option value="nu" <%= goiTinh.equals("nu")?"selected":"" %> >Nữ</option>
                                <option value="khac" <%= goiTinh.equals("khac")?"selected":"" %> >khác</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="ngaySinh" class="diaChi"
                                >Ngày sinh</label
                            >
                            <input
                                type="date"
                                name="ngaySinh"
                                id="ngaySinh"
                                class="form-control"
                                value="<%= ngaySinh %>"
                            />
                        </div>
                        <hr />
                    </div>

                    <div class="col-md-10 col-xl-8 offset-md-1 offset-xl-2">
                        <h3 class="text-center">Địa chỉ</h3>
                        <div class="mb-3">
                            <label for="diaChiKhachHang" class="form-label"
                                >Địa chỉ khách hàng</label
                            >
                            <input
                                type="text"
                                name="diaChiKhachHang"
                                id="diaChiKhachHang"
                                class="form-control"
                                rows="3"
                                value="<%= diaChiKhachHang %>"
                            />
                        </div>

                        <div class="mb-3">
                            <label for="diaChiMuaHang" class="form-label"
                                >Địa chỉ mua hang</label
                            >
                            <input
                                type="text"
                                name="diaChiMuaHang"
                                id="diaChiMuaHang"
                                class="form-control"
                                rows="3"
                                value="<%= diaChiMuaHang %>"
                            />
                        </div>

                        <div class="mb-3">
                            <label for="diaChiNhanHang" class="form-label"
                                >Địa chỉ nhận hàng</label
                            >
                            <input type="text" name="diaChiNhanHang"
                            id="diaChiNhanHang" class="form-control" rows="3" value="<%= diaChiNhanHang %>">
                            
                        </div>

                        <div class="mb-3">
                            <label for="soDienThoai" class="form-label"
                                >Số diện thoại</label
                            >
                            <input
                                type="tel"
                                name="soDienThoai"
                                id="soDienThoai"
                                class="form-control"
                                value="<%= soDienThoai %>"
                            />
                        </div>

                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input
                                type="email"
                                name="email"
                                id="email"
                                class="form-control"
                                value="<%= email %>"
                            />
                        </div>
                    </div>
                </div>
                <div class="form-check mb-2">
                    <input
                        class="form-check-input"
                        type="checkbox"
                        value="dongYDieuKhoan"
                        id="dongYDieuKhoan"
                        required
                        onchange="kiemTraMK()"
                    />
                    <label class="form-check-label" for="dongYDieuKhoan">
                        <a href="#">Đồng ý điều khoản</a>
                    </label>
                </div>

                <div class="form-check mb-3">
                    <input
                        class="form-check-input"
                        type="checkbox"
                        name="dongYNhanEmail"
                        id="dongYNhanEmail"
                        value="dongYNhanEmail"
                        <%= (dongYNhanEmail != null && dongYNhanEmail.equals("checked")) ? "checked" : "" %>
                    />
                    <label class="form-check-label" for="dongYNhanEmail">
                        Đồng ý nhận email
                    </label>
                </div>
                <div class="d-flex justify-content-center">
                    <button
                        type="submit"
                        class="btn btn-primary w-25 mb-5"
                        name="submit"
                        id="submit"
                        style="opacity: 0.6"
                    >
                        Submit
                    </button>
                </div>
            </form>
        </div>

        <script>
            function kiemTraMK() {
                const submit = document.getElementById("submit");
                const value_password =
                    document.getElementById("password").value;
                const value_passwordNhapLai =
                    document.getElementById("passwordNhapLai").value;

                const checked_dongYDieuKhoan =
                    document.getElementById("dongYDieuKhoan");

                const msg = document.getElementById("msg");

                if (value_password !== value_passwordNhapLai) {
                    msg.textContent = "Mật khẩu không khớp";
                    msg.style.color = "red";
                    submit.setAttribute("disabled", "disabled");
                    submit.setAttribute("style", "opacity: 0.6");
                } else {
                    submit.removeAttribute("disabled");
                    submit.style.opacity = "1";
                    msg.textContent = "";
                }

                if (!checked_dongYDieuKhoan.checked) {
                    submit.setAttribute("disabled", "disabled");
                    submit.style.opacity = "0.6";
                } else {
                    submit.removeAttribute("disabled");
                    submit.style.opacity = "1";
                }
            }
        </script>

        <%@include file="../footer.jsp" %>
    </body>
</html>
