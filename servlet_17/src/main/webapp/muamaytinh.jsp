<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title></title>

        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous"
        />
    </head>
    <body>
        <div class="container">
            <h1>Chọn cấu hình máy tính bạn cần mua</h1>
            <form action="datmuamaytinh.jsp">
                <h2>Processor</h2>
                <label class="custom-control custom-radio">
                    <input
                        type="radio"
                        name="processor"
                        id="core_i9"
                        value="core_i9"
                        class="custom-control-input"
                    />
                    <span class="custom-control-indicator">core-i9</span>
                    <span class="custom-control-description"></span>
                </label>

                <label class="custom-control custom-radio">
                    <input
                        type="radio"
                        name="processor"
                        id="core_i7"
                        value="core_i7"
                        class="custom-control-input"
                    />
                    <span class="custom-control-indicator">core-i7</span>
                    <span class="custom-control-description"></span>
                </label>

                <label class="custom-control custom-radio">
                    <input
                        type="radio"
                        name="processor"
                        id="core_i5"
                        value="core_i5"
                        class="custom-control-input"
                    />
                    <span class="custom-control-indicator">core-i5</span>
                    <span class="custom-control-description"></span>
                </label>

                <h2>ram</h2>

                <label class="custom-control custom-radio">
                    <input
                        type="radio"
                        name="ram"
                        id="ram"
                        value="ram_8"
                        class="custom-control-input"
                    />
                    <span class="custom-control-indicator">ram 8</span>
                    <span class="custom-control-description"></span>
                </label>

                <label class="custom-control custom-radio">
                    <input
                        type="radio"
                        name="ram"
                        id="ram"
                        value="ram_16"
                        class="custom-control-input"
                    />
                    <span class="custom-control-indicator">ram 16</span>
                    <span class="custom-control-description"></span>
                </label>

                <h2>Monitor</h2>

                <div class="form-check">
                    <label class="form-check-label">
                        <input
                            type="radio"
                            class="form-check-input"
                            name="monitor"
                            id="monitor"
                            value="monitor"
                        />
                        monitor
                    </label>
                </div>

                <h2>Accessories</h2>

                <div class="form-group">
                    <select
                        class="form-control"
                        name="accessories"
                        id="accessories"
                        multiple
                    >
                        <option value="camera">camera</option>
                        <option value="printer">printer</option>
                        <option value="scanner">scanner</option>
                    </select>
                </div>

                <div class="d-flex justify-content-center">
                    <button type="submit" class="btn btn-primary">
                        Submit
                    </button>
                </div>
            </form>
        </div>
    </body>
</html>
