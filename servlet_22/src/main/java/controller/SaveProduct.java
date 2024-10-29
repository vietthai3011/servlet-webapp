package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/save-product")
public class SaveProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; UTF-8");
        String maSanPham = request.getParameter("maSanPham");
        String tenSanPham = request.getParameter("tenSanPham");
        String giaBan = request.getParameter("giaBan");
        String giaNhap = request.getParameter("giaNhap");
        String hanSuDung = request.getParameter("hanSuDung");
        String vat = request.getParameter("vat");
        String moTa = request.getParameter("moTa");

        String error_masanpham = "";

        if (maSanPham == null || maSanPham.trim().isEmpty()) {
            error_masanpham = "Vui long nhap ma Sp";
        } else if (maSanPham.equals("123")) {
            error_masanpham = "Ma Sp 123 da ton tai, vui long nhap lai ma Sp";
        }
        request.setAttribute("error_masanpham", error_masanpham);
        request.setAttribute("value_maSanPham", maSanPham);
        request.setAttribute("value_tenSanPham", tenSanPham);
        request.setAttribute("value_giaBan", giaBan);
        request.setAttribute("value_giaNhap", giaNhap);
        request.setAttribute("value_hanSuDung", hanSuDung);
        request.setAttribute("value_vat", vat);
        request.setAttribute("value_moTa", moTa);

        String url = "/success.jsp";
        if (!error_masanpham.isEmpty()) {
            url = "/index.jsp";
        }

        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
