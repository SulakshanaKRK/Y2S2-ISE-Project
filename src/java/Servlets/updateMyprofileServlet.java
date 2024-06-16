package Servlets;

import Java_Classes.DBConncetion;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "updateMyprofileServlet", urlPatterns = {"/updateMyprofileServlet"})
public class updateMyprofileServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String dob = request.getParameter("dob");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        DBConncetion dbconn = new DBConncetion();

        try {
            String query = "UPDATE test SET first_name =  '" + first_name + "', last_name = '" + last_name + "', dob = '" + dob + "', address = '" + address + "', phone = '" + phone + "', email = '" + email + "', password = '" + password + "' WHERE `username` = '" + username + "'";

            if (dbconn.dbcreate(query)) {
                System.out.println("Update Succesfull");
//                getServletContext().getRequestDispatcher("/pages/SuccessPage.jsp").forward(request, response);
                response.sendRedirect("deleteMyprofileServlet");
            } else {
                System.out.println("Update failed");
                getServletContext().getRequestDispatcher("/pages/ErrorPage.jsp").forward(request, response);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getServletContext().getRequestDispatcher("/pages/myprofile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
