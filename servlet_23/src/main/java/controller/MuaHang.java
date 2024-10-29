package controller;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mua-hang")
public class MuaHang extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; UTF-8");

        String soLuong = request.getParameter("soLuong");
        String soDienThoai = request.getParameter("soDienThoai");
        String email = request.getParameter("email");

        boolean checkError = false;
        double value_SoLuong = 0;

        try {
            value_SoLuong = Double.parseDouble(soLuong);
        } catch (Exception e) {
            checkError = true;
            request.setAttribute("e_soLuong", "Nhập dữ liệu số không đúng");
        }

        if (value_SoLuong == 0) {
            checkError = true;
            request.setAttribute("e_soLuong", "Cấn nhập số lượng lớn hơn 0!");
        }

        // Kiểm tra số điện thoại

        Pattern soDienThoaiPattern = Pattern.compile("\\d{10}");
        Matcher soDienThoaiMatcher = soDienThoaiPattern.matcher(soDienThoai);
        if (!soDienThoaiMatcher.matches()) {
            request.setAttribute("e_soDienThoai", "Số điện thoại bao gồm 10 ký tự!");
        }
        Pattern emailPattern = Pattern.compile("\\w+@\\w+(.\\w+)+(.\\w+)*");
        Matcher emailMatcher = emailPattern.matcher(email);
        if (!emailMatcher.matches()) {
            request.setAttribute("e_email", "Cấu trúc email chưa đúng");
        }

        String url = "/success.jsp";

        if (checkError) {
            url = "/index.jsp";
        }

        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}