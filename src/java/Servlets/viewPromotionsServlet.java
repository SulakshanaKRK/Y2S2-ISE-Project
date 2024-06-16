
package Servlets;

import Java_Classes.DBConncetion;
import Java_Classes.promotions;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.ArrayList;


@WebServlet(name = "viewPromotionsServlet", urlPatterns = {"/viewPromotionsServlet"})
public class viewPromotionsServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String promo_code = request.getParameter("promo_code");
        
        DBConncetion dbconn = new DBConncetion();
        promotions pr;
        ArrayList<promotions> prArray = new ArrayList<>();

        String query = "SELECT * FROM `promotion` WHERE `promo_code` = '" + promo_code + "'";
        ResultSet resultSet = dbconn.dbretrieve(query);

        try {
            while (resultSet.next()) {
                pr = new promotions(resultSet.getString("promo_code"), resultSet.getString("promo_name"), resultSet.getString("promo_type"), resultSet.getString("promo_des"), resultSet.getString("valid_period"));
                prArray.add(pr);
                
                 request.setAttribute("prArray", prArray);
        request.getServletContext().getRequestDispatcher("/pages/promotionspage.jsp").forward(request, response);
            }
            
            if (!resultSet.next()) {
            
           
            request.getServletContext().getRequestDispatcher("/pages/promoErrorMsg.jsp").forward(request, response);
           
        }
            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

       

        
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
