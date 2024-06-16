
package Servlets;

import Java_Classes.DBConncetion;
import Java_Classes.promotions;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet(name = "viewAdminPromoServlet", urlPatterns = {"/viewAdminPromoServlet"})
public class viewAdminPromoServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        DBConncetion dbconn = new DBConncetion();
        promotions pr2;
        ArrayList<promotions> pr2Array = new ArrayList<>();

        String query = "SELECT * FROM promotion";
        ResultSet resultSet = dbconn.dbretrieve(query);

        try {
            while (resultSet.next()) {
                pr2 = new promotions(resultSet.getString("promo_code"), resultSet.getString("promo_name"), resultSet.getString("promo_type"), resultSet.getString("promo_des"), resultSet.getString("valid_period"));
                pr2Array.add(pr2);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        request.setAttribute("pr2Array", pr2Array);
        request.getServletContext().getRequestDispatcher("/pages/checkPromoValidity.jsp").forward(request, response);
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
