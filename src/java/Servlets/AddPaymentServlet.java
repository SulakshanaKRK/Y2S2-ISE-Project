package Servlets;

import Java_Classes.DBConncetion;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AddPaymentServlet", urlPatterns = {"/AddPaymentServlet"})
public class AddPaymentServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

//        String pay_id = request.getParameter("pay_id");
        String card_no = request.getParameter("card_no");
        String cardholder_name = request.getParameter("cardholder_name");
        String card_type = request.getParameter("card_type");
        String date = request.getParameter("date");

        String CVV = request.getParameter("CVV");
        String ZIP = request.getParameter("ZIP");

        DBConncetion dbconn = new DBConncetion();

        try {
           String query = String.format("INSERT INTO payment (card_no, cardholder_name, card_type, date, CVV, ZIP) VALUES ('%s', '%s', '%s', '%s', '%s', '%s')",
                    card_no, cardholder_name, card_type, date, CVV, ZIP);



            if (dbconn.dbcreate(query)) {
                System.out.println("Insert Succesfull");
                getServletContext().getRequestDispatcher("/pages/SuccessPage.jsp").forward(request, response);
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
        getServletContext().getRequestDispatcher("/pages/payment.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
