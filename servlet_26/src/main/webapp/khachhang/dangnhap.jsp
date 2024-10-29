<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>

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

        <link
            rel="canonical"
            href="https://getbootstrap.com/docs/5.3/examples/sign-in/"
        />

        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/@docsearch/css@3"
        />

        <link
            href="/docs/5.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous"
        />

        <!-- Favicons -->
        <link
            rel="apple-touch-icon"
            href="/docs/5.3/assets/img/favicons/apple-touch-icon.png"
            sizes="180x180"
        />
        <link
            rel="icon"
            href="/docs/5.3/assets/img/favicons/favicon-32x32.png"
            sizes="32x32"
            type="image/png"
        />
        <link
            rel="icon"
            href="/docs/5.3/assets/img/favicons/favicon-16x16.png"
            sizes="16x16"
            type="image/png"
        />
        <link
            rel="manifest"
            href="/docs/5.3/assets/img/favicons/manifest.json"
        />
        <link
            rel="mask-icon"
            href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg"
            color="#712cf9"
        />
        <link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico" />
        <meta name="theme-color" content="#712cf9" />

        <% String url = request.getScheme() + "://" + request.getServerName() +
        ":" + request.getServerPort() + request.getContextPath(); %>
        <link rel="stylesheet" href="<%= url %>/assets/style.css" />

        <style>
            .sign-in__hover:hover {
                opacity: 0.8;
            }
        </style>
    </head>

    <body class="d-flex align-items-center py-4 bg-body-tertiary">
        <main class="form-signin w-100 m-auto">
            <form action="<%= url %>/khachhang" method="post">
            <input type="hidden" name="hanhDong" value ="dangNhap">
                <img
                    src="<%= url %>/img/logo/logo.jpg"  
                    alt=""
                    class="logo w-50 mb-5 user-select-none"
                />
                <h1 class="h3 mb-3 fw-normal">Đăng Nhập</h1>

                <% String baoLoi = (String) request.getAttribute("baoLoi");
                    if(baoLoi == null) baoLoi = "";
                %>
                <div class="text-center">
                    <span class="text-danger fw-bold text-center text-nowrap"><%= baoLoi%></span>
                </div>

                <div class="form-floating">
                    <input
                        type="text"
                        class="form-control"
                        id="tenDangNhap"
                        name="tenDangNhap"
                        placeholder="Tên đăng nhập"
                    />
                    <label for="tenDangNhap">Tên đăng nhập</label>
                </div>
                <div class="form-floating">
                    <input
                        type="password"
                        class="form-control"
                        id="floatingPassword"
                        placeholder="Password"
                        name="password"
                    />
                    <label for="floatingPassword">Password</label>
                </div>

                <div class="form-check text-start my-3">
                    <input
                        class="form-check-input"
                        type="checkbox"
                        value="remember-me"
                        id="flexCheckDefault"
                    />
                    <label class="form-check-label" for="flexCheckDefault">
                        Remember me
                    </label>
                </div>
                <button class="btn btn-primary w-100 py-2" type="submit">
                    Sign in
                </button>
                <div class="mt-3 sign-in__hover">
                    <a
                        href="<%= url %>/khachhang/dangky.jsp"
                        class="btn w-100 border-secondary-subtle fs-6 fw-semibold"
                        >Đăng ký tài khoản mới</a
                    >
                </div>
            </form>
        </main>
        <!-- Bootstrap JavaScript Libraries -->
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
    </body>
</html>
