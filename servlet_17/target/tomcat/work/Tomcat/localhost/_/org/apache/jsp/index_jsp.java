/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2024-10-17 07:27:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.lang.Math;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write(" \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\" />\n");
      out.write("        <link\n");
      out.write("            href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\"\n");
      out.write("            rel=\"stylesheet\"\n");
      out.write("            integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\"\n");
      out.write("            crossorigin=\"anonymous\"\n");
      out.write("        />\n");
      out.write("        <title>Hello world</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <form action=\"dathang.jsp\" method=\"get\">\n");
      out.write("                <div class=\"form-group mb-5\">\n");
      out.write("                    <label for=\"hovaten\">Nhao fullname</label>\n");
      out.write("                    <input\n");
      out.write("                        type=\"text\"\n");
      out.write("                        name=\"hovaten\"\n");
      out.write("                        id=\"hovaten\"\n");
      out.write("                        class=\"form-control\"\n");
      out.write("                        placeholder=\"Ho va ten\"\n");
      out.write("                        aria-describedby=\"helpId\"\n");
      out.write("                    />\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"mb-5\">\n");
      out.write("                    <label for=\"email\" class=\"form-label\">Email address</label>\n");
      out.write("                    <input\n");
      out.write("                        type=\"email\"\n");
      out.write("                        class=\"form-control\"\n");
      out.write("                        id=\"email\"\n");
      out.write("                        aria-describedby=\"emailHelp\"\n");
      out.write("                        name=\"email\"\n");
      out.write("                    />\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"form-group mb-5\">\n");
      out.write("                    <label for=\"soluong\">Nhap so luong</label>\n");
      out.write("                    <input\n");
      out.write("                        type=\"text\"\n");
      out.write("                        class=\"form-control\"\n");
      out.write("                        name=\"soluong\"\n");
      out.write("                        id=\"soluong\"\n");
      out.write("                        aria-describedby=\"helpId\"\n");
      out.write("                        placeholder=\"\"\n");
      out.write("                    />\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"d-flex justify-content-center\">\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-primary w-25\">\n");
      out.write("                        Submit\n");
      out.write("                    </button>\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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