
package Servlets;

import Java_Classes.Order;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "DownloadInvoiceServlet", urlPatterns = {"/DownloadInvoiceServlet"})
public class DownloadInvoiceServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

    // Set content type to force download
    response.setContentType("text/plain");
    response.setHeader("Content-Disposition", "attachment;filename=invoice.pdf");

    try (PrintWriter out = response.getWriter()) {
        // Retrieve orders from request attribute
        ArrayList<Order> orders = (ArrayList<Order>) request.getAttribute("ordArray");
        
        if (orders != null && !orders.isEmpty()) {
            // Loop through orders and write to the response
            for (Order ord : orders) {
                out.println("Customer Name: " + ord.getCustomerName());
                out.println("Product Name: " + ord.getProductName());
                out.println("Quantity: " + ord.getQuantity());
                out.println();
            }
        } else {
            // If no orders found, provide a message in the invoice file
            out.println("No orders found for invoice.");
        }
    } catch (IOException e) {
        // Handle IO exception
        System.out.println("Error downloading invoice: " + e.getMessage());
    }
}

    


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


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
        return "DownloadInvoiceServlet";
    }// </editor-fold>

}
