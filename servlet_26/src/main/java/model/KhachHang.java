package model;

import java.sql.Date;
import java.sql.Timestamp;

public class KhachHang {
    private String maKhachHang;
    private String tenDangNhap;
    private String matKhau;
    private String hoVaTen;
    private String gioiTinh;
    private String diaChi; // xa, huyen, tinh
    private String diaChiNhanHang;
    private String diaChiMuaHang;
    private Date ngaySinh;
    private String soDienThoai;
    private String email;
    private boolean dangKyNhanBangTin;
    private String maXacThuc;
    private Timestamp thoiGianHieuLuc;
    private boolean trangThai;
    private String urlAnh;

    public KhachHang() {
    }

    public KhachHang(String tenDangNhap, String matKhau) {
        this.tenDangNhap = tenDangNhap;
        this.matKhau = matKhau;
    }

    public KhachHang(String maKhacHang, String diaChi, String diaChiMuaHang, String diaChiNhanHang, String email,
            String gioiTinh,
            String hoVaTen, Date ngaySinh, String soDienThoai, boolean dangKyNhanBangTin) {
        this.maKhachHang = maKhacHang;
        this.diaChi = diaChi;
        this.diaChiMuaHang = diaChiMuaHang;
        this.diaChiNhanHang = diaChiNhanHang;
        this.email = email;
        this.gioiTinh = gioiTinh;
        this.hoVaTen = hoVaTen;
        this.ngaySinh = ngaySinh;
        this.soDienThoai = soDienThoai;
        this.dangKyNhanBangTin = dangKyNhanBangTin;
    }

    public KhachHang(String maKhacHang, String tenDangNhap, String matKhau, String hoVaTen, String gioiTinh,
            String diaChi, String diaChiNhanHang, String diaChiMuaHang, Date ngaySinh, String soDienThoai, String email,
            boolean dangKyNhanBangTin) {
        this.maKhachHang = maKhacHang;
        this.tenDangNhap = tenDangNhap;
        this.matKhau = matKhau;
        this.hoVaTen = hoVaTen;
        this.gioiTinh = gioiTinh;
        this.diaChi = diaChi;
        this.diaChiNhanHang = diaChiNhanHang;
        this.diaChiMuaHang = diaChiMuaHang;
        this.ngaySinh = ngaySinh;
        this.soDienThoai = soDienThoai;
        this.email = email;
        this.dangKyNhanBangTin = dangKyNhanBangTin;
    }

    public KhachHang(String maKhachHang, String tenDangNhap, String matKhau, String hoVaTen, String gioiTinh,
            String diaChi, String diaChiNhanHang, String diaChiMuaHang, Date ngaySinh, String soDienThoai, String email,
            boolean dangKyNhanBangTin, String maXacThuc, Timestamp thoiGianHieuLuc, boolean trangThai) {
        this.maKhachHang = maKhachHang;
        this.tenDangNhap = tenDangNhap;
        this.matKhau = matKhau;
        this.hoVaTen = hoVaTen;
        this.gioiTinh = gioiTinh;
        this.diaChi = diaChi;
        this.diaChiNhanHang = diaChiNhanHang;
        this.diaChiMuaHang = diaChiMuaHang;
        this.ngaySinh = ngaySinh;
        this.soDienThoai = soDienThoai;
        this.email = email;
        this.dangKyNhanBangTin = dangKyNhanBangTin;
        this.maXacThuc = maXacThuc;
        this.thoiGianHieuLuc = thoiGianHieuLuc;
        this.trangThai = trangThai;
    }

    public KhachHang(String maKhachHang, String tenDangNhap, String matKhau, String hoVaTen, String gioiTinh,
            String diaChi, String diaChiNhanHang, String diaChiMuaHang, Date ngaySinh, String soDienThoai, String email,
            boolean dangKyNhanBangTin, String maXacThuc, Timestamp thoiGianHieuLuc, boolean trangThai, String urlAnh) {
        this.maKhachHang = maKhachHang;
        this.tenDangNhap = tenDangNhap;
        this.matKhau = matKhau;
        this.hoVaTen = hoVaTen;
        this.gioiTinh = gioiTinh;
        this.diaChi = diaChi;
        this.diaChiNhanHang = diaChiNhanHang;
        this.diaChiMuaHang = diaChiMuaHang;
        this.ngaySinh = ngaySinh;
        this.soDienThoai = soDienThoai;
        this.email = email;
        this.dangKyNhanBangTin = dangKyNhanBangTin;
        this.maXacThuc = maXacThuc;
        this.thoiGianHieuLuc = thoiGianHieuLuc;
        this.trangThai = trangThai;
        this.urlAnh = urlAnh;
    }

    public String getMaKhachHang() {
        return maKhachHang;
    }

    public void setMaKhachHang(String maKhacHang) {
        this.maKhachHang = maKhacHang;
    }

    public String getTenDangNhap() {
        return tenDangNhap;
    }

    public void setTenDangNhap(String tenDangNhap) {
        this.tenDangNhap = tenDangNhap;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public String getHoVaTen() {
        return hoVaTen;
    }

    public void setHoVaTen(String hoVaTen) {
        this.hoVaTen = hoVaTen;
    }

    public String getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(String gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getDiaChiNhanHang() {
        return diaChiNhanHang;
    }

    public void setDiaChiNhanHang(String diaChiNhanHang) {
        this.diaChiNhanHang = diaChiNhanHang;
    }

    public String getDiaChiMuaHang() {
        return diaChiMuaHang;
    }

    public void setDiaChiMuaHang(String diaChiMuaHang) {
        this.diaChiMuaHang = diaChiMuaHang;
    }

    public Date getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public String getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isDangKyNhanBangTin() {
        return dangKyNhanBangTin;
    }

    public void setDangKyNhanBangTin(boolean dangKyNhanBangTin) {
        this.dangKyNhanBangTin = dangKyNhanBangTin;
    }

    public String getMaXacThuc() {
        return maXacThuc;
    }

    public void setMaXacThuc(String maXacThuc) {
        this.maXacThuc = maXacThuc;
    }

    public Timestamp getThoiGianHieuLuc() {
        return thoiGianHieuLuc;
    }

    public void setThoiGianHieuLuc(Timestamp thoiGianHieuLuc) {
        this.thoiGianHieuLuc = thoiGianHieuLuc;
    }

    public boolean isTrangThai() {
        return trangThai;
    }

    public void setTrangThai(boolean trangThai) {
        this.trangThai = trangThai;
    }

    public String getUrlAnh() {
        return urlAnh;
    }

    public void setUrlAnh(String urlAnh) {
        this.urlAnh = urlAnh;
    }

}