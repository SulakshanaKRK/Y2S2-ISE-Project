
package Servlets;

import Java_Classes.DBConncetion;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "deleteMyprofileServlet", urlPatterns = {"/deleteMyprofileServlet"})
public class deleteMyprofileServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        DBConncetion dbconn = new DBConncetion();

        try {
            String query = "DELETE FROM `test` WHERE `username` = '" + username + "' AND `password` = '" + password + "'";

            if (dbconn.dbcreate(query)) {
        HttpSession session=request.getSession();
        session.removeAttribute("cus-ob");
        
        response.sendRedirect("/SalonSIlkyHair/pages/index.jsp");
            } else {
                System.out.println("Delete failed");
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
