package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import database.KhachHangDAO;
import model.KhachHang;

@WebServlet("/thaydoiavatar")
public class ThayDoiAnh extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        KhachHang khachHang = (KhachHang) request.getSession().getAttribute("khachHang");
        if (khachHang != null) {
            try {

                request.setCharacterEncoding("UTF-8");

                response.setCharacterEncoding("UTF-8");
                response.setContentType("text/html; charset=UTF-8");

                String folder = getServletContext().getRealPath("/avatar");
                System.out.println(folder);
                File file;
                int maxSize = 5 * 1024 * 1024;
                int maxMemory = 5 * 1024 * 1024;

                String contentType = request.getContentType();

                if (contentType != null && contentType.contains("multipart/form-data")) {

                    DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();

                    diskFileItemFactory.setSizeThreshold(maxMemory);

                    ServletFileUpload upload = new ServletFileUpload(diskFileItemFactory);
                    upload.setSizeMax(maxSize);

                    List<FileItem> files = upload.parseRequest(request);

                    KhachHangDAO khachHangDAO = new KhachHangDAO();

                    for (FileItem fileItem : files) {
                        if (!fileItem.isFormField()) {
                            String fileName = System.currentTimeMillis() + fileItem.getName();
                            String path = folder + "\\" + fileName;
                            file = new File(path);
                            fileItem.write(file);

                            khachHang.setUrlAnh(fileName);
                            khachHangDAO.updateAvatar(khachHang);
                            khachHang = khachHangDAO.selectById(khachHang);
                        } else {
                            String name = fileItem.getFieldName();
                            String value = fileItem.getString();
                            System.out.println(name + ": " + value);
                        }
                    }
                }
                RequestDispatcher dispatcher = request.getRequestDispatcher("/khachhang/thaydoianh.jsp");
                dispatcher.forward(request, response);
            } catch (IOException | ServletException | FileUploadException e) {
                e.printStackTrace();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

}
