<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ page import="model.KhachHang" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Thay đổi thông tin</title>
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

        String hoVaTen =  khachHang.getHoVaTen();

        String goiTinh =  khachHang.getGioiTinh();

        String ngaySinh = khachHang.getNgaySinh().toString();

        String diaChiKhachHang = khachHang.getDiaChi();

        String diaChiNhanHang = khachHang.getDiaChiNhanHang();

        String diaChiMuaHang = khachHang.getDiaChiMuaHang();

        String soDienThoai = khachHang.getSoDienThoai();

        String email = khachHang.getEmail();
         
        boolean dongYNhanEmail = khachHang.isDangKyNhanBangTin();

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
            <form action="../khachhang" method="get">
            <input type="hidden" name="hanhDong" value="thayDoiThongTin">

            <h1 class = "text-danger text-center mt-3"> <%= msg %> </h1>
                <div class="row mt-5">
                    <div class="col-md-10 col-xl-6  ">
                        <h3 class="text-center">Thông tin tài khoản</h3>
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
                    </div>

                    <div class="col-md-10 col-xl-6  ">
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

                <div class="form-check mb-3">
                <input
                        class="form-check-input"
                        type="checkbox"
                        name="dongYNhanEmail"
                        id="dongYNhanEmail"
                        value="dongYNhanEmail"
                        <%= dongYNhanEmail ? "checked" : "" %>
                    />
                    <label class="form-check-label" for="dongYNhanEmail">
                        Đồng ý nhận email
                    </label>
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
