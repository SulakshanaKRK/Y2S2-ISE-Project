package Servlets;

import Java_Classes.DBConncetion;
import Java_Classes.customerRegistration;
import Java_Classes.loginclass;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*; // Import java.sql.Connection explicitly
import javax.servlet.http.HttpSession;



@WebServlet(name = "loginServlet", urlPatterns = {"/loginServlet"})
public class loginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        DBConncetion dbconn = new DBConncetion();
        Connection connection = dbconn.getConnection();
        loginclass lobj = new loginclass(connection);

        customerRegistration cus = lobj.getLogin(username, password);

        if (cus != null) {
            HttpSession session = request.getSession(true); // Ensure session is created if not exists
            session.setAttribute("cus-ob", cus);
            response.sendRedirect("/SalonSIlkyHair/pages/index2.jsp");
        } else {
            HttpSession session = request.getSession(true);
//            session.setAttribute("error-msg", "Invalid email & password.");
            response.sendRedirect("/SalonSIlkyHair/pages/msg.jsp"); // Redirect back to login page
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("/pages/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}

