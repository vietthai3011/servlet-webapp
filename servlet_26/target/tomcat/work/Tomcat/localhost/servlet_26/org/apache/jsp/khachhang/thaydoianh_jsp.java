/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2024-10-29 08:50:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.khachhang;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.KhachHang;

public final class thaydoianh_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"UTF-8\" />\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n");
      out.write("        <title>Thay đổi ảnh</title>\r\n");
      out.write("        <link\r\n");
      out.write("            href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css\"\r\n");
      out.write("            rel=\"stylesheet\"\r\n");
      out.write("            integrity=\"sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT\"\r\n");
      out.write("            crossorigin=\"anonymous\"\r\n");
      out.write("        />\r\n");
      out.write("        <script\r\n");
      out.write("            src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js\"\r\n");
      out.write("            integrity=\"sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3\"\r\n");
      out.write("            crossorigin=\"anonymous\"\r\n");
      out.write("        ></script>\r\n");
      out.write("        <script\r\n");
      out.write("            src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js\"\r\n");
      out.write("            integrity=\"sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz\"\r\n");
      out.write("            crossorigin=\"anonymous\"\r\n");
      out.write("        ></script>\r\n");
      out.write("    </head>\r\n");
      out.write("    ");
 String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath(); 
      out.write(" \r\n");
      out.write("    <body style=\"height: 100vh\">\r\n");
      out.write("        \r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("        ");
 KhachHang khachHang = (KhachHang) session.getAttribute("khachHang");
             if (khachHang == null) 
            {
      out.write("\r\n");
      out.write("\r\n");
      out.write("            <div\r\n");
      out.write("                class=\"container text-center h-100 d-flex justify-content-center align-items-center\"\r\n");
      out.write("                style=\"color: red\"\r\n");
      out.write("            >\r\n");
      out.write("                <h1>Bạn chưa đăng nhập, vui vòng quay lại trang chủ</h1>\r\n");
      out.write("            </div>  \r\n");
      out.write("            <script>\r\n");
      out.write("                setTimeout(function () {\r\n");
      out.write("                    window.location.href = \"");
      out.print( url );
      out.write("/index.jsp\";\r\n");
      out.write("                }, 3000);\r\n");
      out.write("            </script>\r\n");
      out.write("\r\n");
      out.write("        ");
 }else { 

        String urlAnh = khachHang.getUrlAnh();

        String msg = (String) request.getAttribute("msg");

        if(msg == null) {
            msg = "";
        } else if (msg.equals("Cập nhật thành công")) { 
      out.write("\r\n");
      out.write("            \r\n");
      out.write("            <script> \r\n");
      out.write("                setTimeout(function () {\r\n");
      out.write("                    window.location.href = \"");
      out.print( url );
      out.write("/index.jsp\";\r\n");
      out.write("                }, 3000);\r\n");
      out.write("            </script>\r\n");
      out.write("\r\n");
      out.write("        ");
 }else if (msg.equals("Cập nhật thất bại")) { 
      out.write("\r\n");
      out.write("            \r\n");
      out.write("            <script> \r\n");
      out.write("                setTimeout(function () {\r\n");
      out.write("                    window.location.href = \"");
      out.print( url );
      out.write("/khachhang/thaydoithongtin.jsp\";\r\n");
      out.write("                }, 1000);\r\n");
      out.write("            </script>\r\n");
      out.write("\r\n");
      out.write("        ");
 }


         
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <form action=\"");
      out.print( url );
      out.write("/thaydoiavatar\" method=\"post\" enctype=\"multipart/form-data\">\r\n");
      out.write("            <h1 class = \"text-danger text-center mt-3\"> ");
      out.print( msg );
      out.write(" </h1>\r\n");
      out.write("                <img src=\"");
      out.print( url );
      out.write("/avatar/");
      out.print( urlAnh );
      out.write("\" width= \"200px\" alt=\"avatar\">\r\n");
      out.write("\r\n");
      out.write("                <h3 class=\"text-center\">Thay avatar</h3>\r\n");
      out.write("                <div class=\"mb-3\">\r\n");
      out.write("                    <label for=\"duongDanAnh\" class=\"duongDanAnh\"\r\n");
      out.write("                        >Họ và tên</label\r\n");
      out.write("                    >\r\n");
      out.write("                    <input\r\n");
      out.write("                        type=\"file\"\r\n");
      out.write("                        class=\"form-control\"\r\n");
      out.write("                        id=\"duongDanAnh\"\r\n");
      out.write("                        name=\"duongDanAnh\"\r\n");
      out.write("                    />\r\n");
      out.write("                </div>    \r\n");
      out.write("\r\n");
      out.write("                <div class=\"d-flex justify-content-center\">\r\n");
      out.write("                    <button\r\n");
      out.write("                        type=\"submit\"\r\n");
      out.write("                        class=\"btn btn-primary w-25 mt-5\"\r\n");
      out.write("                        name=\"submit\"\r\n");
      out.write("                        id=\"submit\"\r\n");
      out.write("                    >\r\n");
      out.write("                        Lưu thông tin\r\n");
      out.write("                    </button>\r\n");
      out.write("                </div>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("        ");
 } 
      out.write("\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../footer.jsp", out, false);
      out.write("ss= \"container\">\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
