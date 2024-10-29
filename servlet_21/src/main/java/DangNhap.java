import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/DangNhap") // Đường dẫn truy cập servlet
public class DangNhap extends HttpServlet {

    // Phương thức xử lý GET request
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        response.getWriter().append("Bạn đã vào doget");

        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String password = request.getParameter("password");

        String url = "";

        if (name.equalsIgnoreCase("thai") && password.equals("123")) {
            url = "success.jsp";
        } else {
            url = "error.jsp";
        }

        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);

        // PrintWriter out = response.getWriter();
        // String name = request.getParameter("name");

        // out.println("<html><head><meta charset='UTF-8'></head><body>");
        // out.println("<h1>Hello, " + name + "</h1>");
        // out.println("</body></html>");
    }

    // Phương thức xử lý POST request
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
