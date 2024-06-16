
package Servlets;

import Java_Classes.DBConncetion;
import Java_Classes.Reviews;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "AddReviewsServlet", urlPatterns = {"/AddReviewsServlet"})
public class AddReviewsServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         String review_des = request.getParameter("review_des");
         
         Reviews revi = new Reviews(review_des);
        DBConncetion dbconn = new DBConncetion();
         
          try {
            String query = String.format("INSERT INTO Review(review_des) VALUES('%s')",
                    revi.getReview_des());

            if (dbconn.dbcreate(query)) {
                System.out.println("Insert successful");
                getServletContext().getRequestDispatcher("/pages/AddedReview.jsp").forward(request, response);
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
       request.getServletContext().getRequestDispatcher("/pages/myprofile.jsp").forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    

}
