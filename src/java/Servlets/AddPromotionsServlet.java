
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


@WebServlet(name = "AddPromotionsServlet", urlPatterns = {"/AddPromotionsServlet"})
public class AddPromotionsServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String promo_code = request.getParameter("promo_code");
        String promo_name = request.getParameter("promo_name");
        String promo_type = request.getParameter("promo_type");
        String promo_des = request.getParameter("promo_des");
        String valid_period = request.getParameter("valid_period");
        

        promotions promo = new promotions(promo_code, promo_name, promo_type, promo_des, valid_period);
        DBConncetion dbconn = new DBConncetion();

        try {
            String query = String.format("INSERT INTO Promotion(promo_code,promo_name,promo_type,promo_des,valid_period) VALUES('%s','%s','%s','%s','%s')",
                    promo.getPromo_code(), promo.getPromo_name(), promo.getPromo_type(), promo.getPromo_des(), promo.getValid_period());

            if (dbconn.dbcreate(query)) {
                System.out.println("Insert successful");
                getServletContext().getRequestDispatcher("/pages/AddSuccessfull.jsp").forward(request, response);
            } else {
                System.out.println("Insert failed");
                getServletContext().getRequestDispatcher("/pages/ErrorPage.jsp").forward(request, response);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/pages/AddPromotions.jsp").forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
}
