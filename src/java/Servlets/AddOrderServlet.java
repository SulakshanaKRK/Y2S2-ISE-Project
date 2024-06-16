
package Servlets;

import Java_Classes.DBConncetion;
import java.io.IOException;
import java.io.PrintWriter;
import Java_Classes.Order;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
@WebServlet(name = "AddOrderServlet", urlPatterns = {"/AddOrderServlet"})
public class AddOrderServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String CustomerName = request.getParameter("CustomerName");
        String productName = request.getParameter("productName");
        int quantity = Integer.parseInt(request.getParameter("quantity"));


        Order  or = new  Order(CustomerName, productName, quantity);
        DBConncetion dbconn = new DBConncetion();

        try {
            String query = String.format("INSERT INTO `order1` (`CustomerName`,`productName`,`quantity`) VALUES('%s','%s',%d)",
                    or.getCustomerName(),  or.getProductName(), or.getQuantity());

            if (dbconn.dbcreate(query)) {
                System.out.println("Insert successful");
                
                String updateProductQuery = String.format("UPDATE `product` SET prQuantity = prQuantity - %d WHERE name = '%s'",
                        or.getQuantity(), or.getProductName());
                
                if (dbconn.dbcreate(updateProductQuery)){
                    System.out.println("Product quantity updated successfully");
                } else {
                    System.out.println("Failed to update product quantity");
                }
                

                response.sendRedirect("AddPaymentServlet");
            } else {
                System.out.println("Insert failed");
                getServletContext().getRequestDispatcher("/pages/Errorpage.jsp").forward(request, response);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/pages/Order.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
 

   
