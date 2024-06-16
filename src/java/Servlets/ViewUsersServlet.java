
package Servlets;

import Java_Classes.DBConncetion;
import Java_Classes.customerRegistration;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;


@WebServlet(name = "ViewUsersServlet", urlPatterns = {"/ViewUsersServlet"})
public class ViewUsersServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        DBConncetion dbconn = new DBConncetion();
        customerRegistration regcus;
        ArrayList<customerRegistration> regcusArray = new ArrayList<>();

        String query = "SELECT * FROM test";
        ResultSet resultSet = dbconn.dbretrieve(query);

        try {
            while (resultSet.next()) {
                regcus = new customerRegistration(resultSet.getString("first_name"), resultSet.getString("last_name"), resultSet.getString("dob"), resultSet.getString("address"), resultSet.getString("phone"), resultSet.getString("email"), resultSet.getString("username"), resultSet.getString("password"));
                regcusArray.add(regcus);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        request.setAttribute("regcusArray", regcusArray);
        request.getServletContext().getRequestDispatcher("/pages/ViewUsers.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
