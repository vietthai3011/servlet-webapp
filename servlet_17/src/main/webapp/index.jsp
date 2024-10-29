<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ page import= "java.lang.Math" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous"
        />
        <title>Hello world</title>
    </head>
    <body>
        <div class="container">
            <form action="dathang.jsp" method="get">
                <div class="form-group mb-5">
                    <label for="hovaten">Nhao fullname</label>
                    <input
                        type="text"
                        name="hovaten"
                        id="hovaten"
                        class="form-control"
                        placeholder="Ho va ten"
                        aria-describedby="helpId"
                    />
                </div>

                <div class="mb-5">
                    <label for="email" class="form-label">Email address</label>
                    <input
                        type="email"
                        class="form-control"
                        id="email"
                        aria-describedby="emailHelp"
                        name="email"
                    />
                </div>

                <div class="form-group mb-5">
                    <label for="soluong">Nhap so luong</label>
                    <input
                        type="text"
                        class="form-control"
                        name="soluong"
                        id="soluong"
                        aria-describedby="helpId"
                        placeholder=""
                    />
                </div>

                <div class="d-flex justify-content-center">
                    <button type="submit" class="btn btn-primary w-25">
                        Submit
                    </button>
                </div>
            </form>
        </div>
    </body>
</html>
