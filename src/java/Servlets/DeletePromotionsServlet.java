
package Servlets;

import Java_Classes.DBConncetion;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "DeletePromotionsServlet", urlPatterns = {"/DeletePromotionsServlet"})
public class DeletePromotionsServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String promo_code = request.getParameter("promo_code");
        String promo_type = request.getParameter("promo_type");

        DBConncetion dbconn = new DBConncetion();

        try {
            String query = "DELETE FROM `promotion` WHERE `promo_code` = '" + promo_code + "' AND `promo_type` = '" + promo_type + "'";

            
            if (dbconn.dbcreate(query)) {
                System.out.println("Delete successful");
                getServletContext().getRequestDispatcher("/pages/deletedPromoMsg.jsp").forward(request, response);
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
        getServletContext().getRequestDispatcher("/pages/DeletePromotions.jsp").forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
  

}
