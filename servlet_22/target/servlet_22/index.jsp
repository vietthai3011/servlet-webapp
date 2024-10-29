<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Hello</title>
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
    </head>

    <% String value_maSanPham = request.getAttribute("value_maSanPham") + "";
    String value_tenSanPham = request.getAttribute("value_tenSanPham") + "";
    String value_giaBan = request.getAttribute("value_giaBan") + ""; String
    value_giaNhap = request.getAttribute("value_giaNhap") + ""; String
    value_hanSuDung = request.getAttribute("value_hanSuDung") + ""; String
    value_vat = request.getAttribute("value_vat") + ""; String value_moTa =
    request.getAttribute("value_moTa") + "";value_maSanPham =
    (request.getAttribute("value_maSanPham") == null ||
    request.getAttribute("value_maSanPham").equals("null")) ? "" :
    request.getAttribute("value_maSanPham").toString(); value_tenSanPham =
    (request.getAttribute("value_tenSanPham") == null ||
    request.getAttribute("value_tenSanPham").equals("null")) ? "" :
    request.getAttribute("value_tenSanPham").toString(); value_giaBan =
    (request.getAttribute("value_giaBan") == null ||
    request.getAttribute("value_giaBan").equals("null")) ? "" :
    request.getAttribute("value_giaBan").toString(); value_giaNhap =
    (request.getAttribute("value_giaNhap") == null ||
    request.getAttribute("value_giaNhap").equals("null")) ? "" :
    request.getAttribute("value_giaNhap").toString(); value_hanSuDung =
    (request.getAttribute("value_hanSuDung") == null ||
    request.getAttribute("value_hanSuDung").equals("null")) ? "" :
    request.getAttribute("value_hanSuDung").toString(); value_vat =
    (request.getAttribute("value_vat") == null ||
    request.getAttribute("value_vat").equals("null")) ? "" :
    request.getAttribute("value_vat").toString(); value_moTa =
    (request.getAttribute("value_moTa") == null ||
    request.getAttribute("value_moTa").equals("null")) ? "" :
    request.getAttribute("value_moTa").toString(); %>

    <body>
        <div class="container p-3">
            <form
                class="row g-3 needs-validation"
                action="save-product"
                id="my-form"
            >
                <div class="row">
                    <div class="col-6">
                        <label for="maSanPham" class="form-label"
                            >ID<span style="color: red">*</span></label
                        >

                        <input
                            type="text"
                            class="form-control"
                            id="maSanPham"
                            name="maSanPham"
                            required
                            value="<%= value_maSanPham %>"
                        />
                        <div style="color: red">
                            <%= request.getAttribute("error_masanpham") != null
                            ? request.getAttribute("error_masanpham") : "" %>
                        </div>
                    </div>
                    <div class="col-6">
                        <label for="tenSanPham" class="form-label"
                            >Name<span style="color: red">*</span></label
                        >
                        <input
                            type="text"
                            class="form-control"
                            id="tenSanPham"
                            name="tenSanPham"
                            required
                            value="<%= value_tenSanPham   %>"
                        />
                    </div>
                </div>

                <div class="row">
                    <div class="col-6">
                        <label for="giaNhap" class="form-label"
                            >Giá nhập<span style="color: red">*</span></label
                        >
                        <input
                            type="number"
                            class="form-control"
                            id="giaNhap"
                            name="giaNhap"
                            value="<%= value_giaNhap   %>"
                        />
                    </div>
                    <div class="col-6">
                        <label for="giaBan" class="form-label"
                            >Giá Bán<span style="color: red">*</span></label
                        >
                        <input
                            type="number"
                            class="form-control"
                            id="giaBan"
                            name="giaBan"
                            required
                            value="<%= value_giaBan  %>"
                        />
                        <span id="error_giaban"></span>
                    </div>
                </div>

                <div class="row">
                    <div class="col-6">
                        <label for="hanSuDung" class="form-label"
                            >Hạn sử dụng</label
                        >
                        <input
                            type="date"
                            class="form-control"
                            id="hanSuDung"
                            name="hanSuDung"
                            value="<%= value_hanSuDung   %>"
                        />
                    </div>
                    <div class="col-6">
                        <label for="vat" class="form-label">Thuế</label>
                        <input
                            type="text"
                            class="form-control"
                            id="vat"
                            name="vat"
                            value="<%= value_vat   %>"
                        />
                    </div>
                </div>

                <div class="row">
                    <div class="mb-3">
                        <label for="moTa" class="form-label">Mo tả</label>
                        <textarea
                            class="form-control"
                            name="moTa"
                            id="moTa"
                            rows="3"
                        >
<%= value_moTa  %></textarea
                        >
                    </div>
                </div>

                <button
                    type="submit"
                    class="btn btn-primary"
                    onclick="my_submit()"
                >
                    Submit
                </button>
            </form>
        </div>

        <script>
            function my_submit(params) {
                // Bat loi
                let error = "";
                const maSanPham = document.getElementById("maSanPham").value;
                const giaBan = document.getElementById("giaBan").value;
                alert(maSanPham);
                if (maSanPham.length == 0) {
                    error = "Ban phai nhap ma SP";
                }

                if (giaBan <= 0) {
                    const error_giaban =
                        document.getElementById("error_giaban");
                    error_giaban.innerHTML =
                        '<span style="color: red">Ban can nhap gia ban</span>';
                }

                if (error) {
                    alert(error);
                    return;
                } else {
                    // submit
                    const myForm = document.getElementById("my-form");
                    myForm.submit();
                }
            }
        </script>

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
