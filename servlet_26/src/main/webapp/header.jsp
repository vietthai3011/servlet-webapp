<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ page import="model.KhachHang" %>

 <% String urlHeader = request.getScheme() + "://" + request.getServerName() +
        ":" + request.getServerPort() + request.getContextPath(); %>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="/servlet_26">
            <img
                src="https://1.bp.blogspot.com/-f_5JLvF9_gU/YZGM7p_fkFI/AAAAAAAAAVo/zHkM8tD3ioAvD1pFznG1kw-QOmOibu5ywCLcBGAsYHQ/s150/1-removebg-preview.png"
                alt="Bootstrap"
                height="24"
            />
        </a>
        <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation"
        >
            <span class="navbar-toggler-icon"></span>
        </button>
        <div
            class="collapse navbar-collapse"
            id="navbarSupportedContent"
        >
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a
                        class="nav-link active"
                        aria-current="page"
                        href="#"
                        >Trang chủ</a
                    >
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Combo giảm giá</a>
                </li>
                <li class="nav-item dropdown">
                    <a
                        class="nav-link dropdown-toggle"
                        href="#"
                        role="button"
                        data-bs-toggle="dropdown"
                        aria-expanded="false"
                    >
                        Thể loại
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a class="dropdown-item" href="#"
                                >Quần Jean</a
                            >
                        </li>
                        <li>
                            <a class="dropdown-item" href="#"
                                >Áo thun</a
                            >
                        </li>
                        <li><hr class="dropdown-divider" /></li>
                        <li>
                            <a class="dropdown-item" href="#"
                                >Áo sơ mi</a
                            >
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled">Hết hàng</a>
                </li>
            </ul>
            <form class="d-flex" role="search">
                
                <%  
                    KhachHang khachHangHeader = (KhachHang) session.getAttribute("khachHang");
                    String tenDangNhapHeader = null;
                    String passwordHeader = null;
                    if (khachHangHeader != null) {
                        tenDangNhapHeader = khachHangHeader.getTenDangNhap();
                        passwordHeader = khachHangHeader.getMatKhau();
                    }
                if(tenDangNhapHeader != null && passwordHeader != null) { %>
                    
                    <input
                        class="form-control me-2"
                        type="search"
                        placeholder="Nội dung tìm kiếm"
                        aria-label="Search"
                    />
                    <button class="btn btn-outline-success ms-3 me-4" type="submit">
                        Tìm
                    </button>
                    <div class="btn-group dropstart me-3">
                        <button type="button" class="btn btn-primary dropdown-toggle fw-bold" data-bs-toggle="dropdown" aria-expanded="false">
                            <%= tenDangNhapHeader %>
                        </button>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item active" href="#">Đơn hàng của tôi</a></li>
                            <li><a class="dropdown-item" href="#">Thông báo</a></li>
                            <li><a class="dropdown-item" href="<%= urlHeader %>/khachhang/thaydoianh.jsp">Thay đổi ảnh avatar</a></li>
                            <li><a class="dropdown-item" href="<%= urlHeader %>/khachhang/thaydoithongtin.jsp">Thay đổi thông tin</a></li>
                            <li><a class="dropdown-item" href="<%= urlHeader %>/khachhang/doimatkhau.jsp">Dổi mật khẩu</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="<%= urlHeader %>/khachhang?hanhDong=dangXuat">Thoát tài khoản</a></li>
                        </ul>
                    </div>

                <%
                } else { %>
                <input
                    class="form-control me-2"
                    type="search"
                    placeholder="Nội dung tìm kiếm"
                    aria-label="Search"
                />
                <button class="btn btn-outline-success ms-3" type="submit">
                    Tìm
                </button>
                <%
                    out.println("<a class=\"btn btn-primary text-nowrap ms-3\" href=\"" + urlHeader + "/khachhang/dangnhap.jsp\">Đăng nhập</a>");
                } %>

            </form>
        </div>
    </div>
</nav>
<!-- End Navbar -->