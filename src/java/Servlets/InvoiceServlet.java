
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import Java_Classes.DBConncetion;
import Java_Classes.Order;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "InvoiceServlet", urlPatterns = {"/InvoiceServlet"})
public class InvoiceServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        DBConncetion dbconn = new DBConncetion();
        Order ord;
        ArrayList<Order> ordArray = new ArrayList<>();

        String query = "SELECT * FROM order1";
        ResultSet resultSet = dbconn.dbretrieve(query);

        try {
            while (resultSet.next()) {
                ord = new Order(resultSet.getString("CustomerName"), resultSet.getString("productName"), resultSet.getInt("quantity"));
                ordArray.add(ord);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        request.setAttribute("ordArray", ordArray);
        request.getServletContext().getRequestDispatcher("/pages/Invoice1.jsp").forward(request, response);
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
