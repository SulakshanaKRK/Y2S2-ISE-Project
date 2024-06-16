package Servlets;

import Java_Classes.DBConncetion;
import java.io.IOException;
import java.sql.*;
import Java_Classes.Product;
import java.util.ArrayList;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "DeleteProductsServlet", urlPatterns = {"/DeleteProductsServlet"})
public class DeleteProductsServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String product_id = request.getParameter("product_id");

        DBConncetion dbconn = new DBConncetion();

        try {
            String query = "DELETE FROM `product` WHERE `product_id` = '" + product_id + "'";

            if (dbconn.dbcreate(query)) {
                System.out.println("Delete Succesfull");
//                getServletContext().getRequestDispatcher("/pages/SuccessPage.jsp").forward(request, response);
                getServletContext().getRequestDispatcher("ViewProducts").forward(request, response);
            
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

        }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String productId = request.getParameter("product_id");

        DBConncetion dbconn = new DBConncetion();

        try {
            String query = "DELETE FROM `product` WHERE `product_id` = '" + productId + "'";

            if (dbconn.dbcreate(query)) {
                System.out.println("Delete Successful");
                // Optionally, you can send a success message back to the client
                response.getWriter().write("Product deleted successfully");
            } else {
                System.out.println("Delete failed");
                // Optionally, you can send an error message back to the client
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Failed to delete product");
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
            // Optionally, you can send an error message back to the client
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }

}
