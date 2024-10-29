package controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.KhachHangDAO;
import model.KhachHang;
import util.Email;
import util.MaHoa;
import util.SoNgauNhien;

@WebServlet(name = "KhachHang", urlPatterns = "/khachhang")
public class KhachHangController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String hanhDong = (String) request.getParameter("hanhDong");
        if (hanhDong.equals("dangNhap")) {
            dangNhap(request, response);
        } else if (hanhDong.equals("dangXuat")) {
            dangXuat(request, response);
        } else if (hanhDong.equals("dangKy")) {
            dangKy(request, response);
        } else if (hanhDong.equals("thayDoiThongTin")) {
            thayDoiThongTin(request, response);
        } else if (hanhDong.equals("doiMatKhau")) {
            doiMatKhau(request, response);
        } else if (hanhDong.equals("xacthuc")) {
            xacThuc(request, response);
        }
    }

    private void dangNhap(HttpServletRequest request, HttpServletResponse response) {
        String tenDangNhap = request.getParameter("tenDangNhap");
        String password = request.getParameter("password");
        password = MaHoa.toSHA1(password);

        KhachHang khachHang = new KhachHangDAO().selectByUsernameAndPassword(new KhachHang(tenDangNhap, password));

        String url = "";

        if (khachHang != null && khachHang.isTrangThai()) {
            HttpSession session = request.getSession();
            session.setAttribute("khachHang", khachHang);
            url = "/index.jsp";
        } else {
            request.setAttribute("baoLoi", "Tên đăng nhập và mật khẩu không chính xác hoặc tài khoản chưa xác thực!");
            url = "khachhang/dangnhap.jsp";
        }

        RequestDispatcher requestDispatcher = request.getRequestDispatcher(url);
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void dangXuat(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession(false);

        if (session != null) {
            session.invalidate();
            try {
                response.sendRedirect(request.getContextPath());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void dangKy(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.setCharacterEncoding("UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String tenDangNhap = request.getParameter("tenDangNhap");
        String password = request.getParameter("password");
        String passwordNhapLai = request.getParameter("passwordNhapLai");
        String hoVaTen = request.getParameter("hoVaTen");
        String goiTinh = request.getParameter("goiTinh");
        String ngaySinh = request.getParameter("ngaySinh");
        String diaChiKhachHang = request.getParameter("diaChiKhachHang");
        String diaChiMuaHang = request.getParameter("diaChiMuaHang");
        String diaChiNhanHang = request.getParameter("diaChiNhanHang");
        String soDienThoai = request.getParameter("soDienThoai");
        String email = request.getParameter("email");
        String dongYNhanEmail = request.getParameter("dongYNhanEmail");

        request.setAttribute("tenDangNhap", tenDangNhap);
        request.setAttribute("password", password);
        request.setAttribute("passwordNhapLai", passwordNhapLai);
        request.setAttribute("hoVaTen", hoVaTen);
        request.setAttribute("goiTinh", goiTinh);
        request.setAttribute("ngaySinh", ngaySinh);
        request.setAttribute("diaChiKhachHang", diaChiKhachHang);
        request.setAttribute("diaChiMuaHang", diaChiMuaHang);
        request.setAttribute("diaChiNhanHang", diaChiNhanHang);
        request.setAttribute("soDienThoai", soDienThoai);
        request.setAttribute("email", email);
        request.setAttribute("dongYNhanEmail", dongYNhanEmail);

        KhachHangDAO khachHangDAO = new KhachHangDAO();

        String url = "";

        String baoLoi = "";

        if (khachHangDAO.kiemTraTenDangNhap(tenDangNhap)) {
            baoLoi += "Tên đăng nhập đã được sử dụng";
        }

        request.setAttribute("baoLoi", baoLoi);

        if (baoLoi.length() > 0) {
            url = "/khachhang/dangky.jsp";
        } else {
            Random rd = new Random();
            password = MaHoa.toSHA1(password);
            String maKhachHang = System.currentTimeMillis() + rd.nextInt(1000) + "";
            KhachHang khachHang = new KhachHang(maKhachHang, tenDangNhap, password, hoVaTen, goiTinh, diaChiKhachHang,
                    diaChiNhanHang, diaChiMuaHang, Date.valueOf(ngaySinh), soDienThoai, email,
                    (dongYNhanEmail != null));

            if (khachHangDAO.insert(khachHang) > 0) {

                // Dãy số xác thực
                String soNgauNhien = SoNgauNhien.getSoNgauNhien();
                Timestamp toDay = new Timestamp(System.currentTimeMillis());
                Calendar c = Calendar.getInstance();
                c.add(Calendar.MINUTE, 5);
                Timestamp ngayHetHan = new Timestamp(c.getTimeInMillis());

                // Trạng tái hiệu lực
                boolean trangThaiXacThuc = false;

                khachHang.setMaXacThuc(soNgauNhien);
                khachHang.setThoiGianHieuLuc(ngayHetHan);
                khachHang.setTrangThai(trangThaiXacThuc);

                if (khachHangDAO.updateVerifyInformation(khachHang) > 0) {
                    Email.sendEmail(khachHang.getEmail(), "xác thực tài khoản", getNoiDung(khachHang));
                }

            }
            url = "/khachhang/thanhcong.jsp";
        }

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void thayDoiThongTin(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.setCharacterEncoding("UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String hoVaTen = request.getParameter("hoVaTen");
        String goiTinh = request.getParameter("goiTinh");
        String ngaySinh = request.getParameter("ngaySinh");
        String diaChiKhachHang = request.getParameter("diaChiKhachHang");
        String diaChiMuaHang = request.getParameter("diaChiMuaHang");
        String diaChiNhanHang = request.getParameter("diaChiNhanHang");
        String soDienThoai = request.getParameter("soDienThoai");
        String email = request.getParameter("email");
        String dongYNhanEmail = request.getParameter("dongYNhanEmail");

        KhachHangDAO khachHangDAO = new KhachHangDAO();
        HttpSession session = request.getSession(false);
        KhachHang khachHang = (KhachHang) session.getAttribute("khachHang");

        String msg = "";

        if (khachHang != null) {
            String maKhachHang = khachHang.getMaKhachHang();
            KhachHang khachHang_new = new KhachHang(maKhachHang, diaChiKhachHang, diaChiMuaHang, diaChiNhanHang, email,
                    goiTinh,
                    hoVaTen,
                    Date.valueOf(ngaySinh), soDienThoai, dongYNhanEmail != null);

            int update = khachHangDAO.updateInfo(khachHang_new);

            if (update <= 0) {
                msg = "Cập nhật thất bại";
            } else {
                msg = "Cập nhật thành công";
            }

            KhachHang khachHang1 = khachHangDAO.selectById(khachHang_new);

            session.setAttribute("khachHang", khachHang1);
        }

        request.setAttribute("msg", msg);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/khachhang/thaydoithongtin.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void xacThuc(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.setCharacterEncoding("UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String maKhachHang = request.getParameter("maKhachHang");
        String maXacThuc = request.getParameter("maXacThuc");

        KhachHangDAO khachHangDAO = new KhachHangDAO();
        String msg = "";

        KhachHang kh = new KhachHang();
        kh.setMaKhachHang(maKhachHang);
        KhachHang khachHang = khachHangDAO.selectById(kh);
        if (khachHang != null) {
            if (maXacThuc.equals(khachHang.getMaXacThuc())) {
                khachHang.setTrangThai(true);
                khachHangDAO.updateVerifyInformation(khachHang);
                msg = "Xác thực thành công";
            } else {
                msg = "Xác thực thất bại";
            }
        } else {
            msg = "Tài khoản không tồn tại";
        }
        request.setAttribute("msg", msg);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/khachhang/thongbao.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void doiMatKhau(HttpServletRequest request, HttpServletResponse response) {
        String matKhauHienTai = request.getParameter("matKhauHienTai");
        String matKhauMoi = request.getParameter("matKhauMoi");

        // if (matKhauHienTai == null || matKhauMoi == null) {
        // RequestDispatcher requestDispatcher =
        // req.getRequestDispatcher("/doimatkhau.jsp");
        // requestDispatcher.forward(req, resp);
        // return;
        // }

        KhachHangDAO khachHangDAO = new KhachHangDAO();

        String matKhauHienTai_SHA1 = MaHoa.toSHA1(matKhauHienTai);

        HttpSession session = request.getSession();
        KhachHang khachHang = (KhachHang) session.getAttribute("khachHang");

        String baoLoiPassword = "";

        String url = "/khachhang/doimatkhau.jsp";
        if (!matKhauHienTai_SHA1.equals(khachHang.getMatKhau())) {
            baoLoiPassword = "Mật khẩu hiện tại sai, vui lòng nhập lại";
        } else {
            matKhauMoi = MaHoa.toSHA1(matKhauMoi);
            khachHang.setMatKhau(matKhauMoi);
            if (khachHangDAO.changePassword(khachHang)) {
                baoLoiPassword = "Mật khẩu đã đổi thành công";
            } else {
                baoLoiPassword = "Quá trình thay đổi mật khẩu không thành công";
            }
        }

        request.setAttribute("baoLoiPassword", baoLoiPassword);

        RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher(url);
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }

        // req.getRequestDispatcher("/doimatkhau.jsp").forward(req, resp);
    }

    public static String getNoiDung(KhachHang khachHang) {
        String link = "http://localhost:8080/servlet_26/khachhang?hanhDong=xacthuc&maKhachHang="
                + khachHang.getMaKhachHang()
                + "&maXacThuc="
                + khachHang.getMaXacThuc();
        String result = "<p>Vui lòng nhập xác thực tài khoản của bạn bằng cách nhập mã <b style=\"color: red\">"
                + khachHang.getMaXacThuc()
                + "</b>. Hoặc ấn <a href=\"" + link + "\">vào đây</a></p><hr/>"
                + "<span>Đây là email tựu động, vui lòng không phản hồi email này</span>";

        // "<h1>Xác thực tài khoản</h1> <hr/>"

        return result;
    }
}
