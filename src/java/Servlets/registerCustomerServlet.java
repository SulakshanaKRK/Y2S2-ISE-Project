package Servlets;

import Java_Classes.DBConncetion;
import Java_Classes.customerRegistration;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "registerCustomerServlet", urlPatterns = {"/registerCustomerServlet"})
public class registerCustomerServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String dob = request.getParameter("dob");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        customerRegistration customer = new customerRegistration(first_name, last_name, dob, address, phone, email, username, password);
        DBConncetion dbconn = new DBConncetion();

        try {
            String query = String.format("INSERT INTO `test` (`first_name`,`last_name`,`dob`,`address`,`phone`,`email`,`username`,`password`) VALUES('%s','%s','%s','%s','%s','%s','%s','%s')",
                    customer.getFirst_name(), customer.getLast_name(), customer.getDob(), customer.getAddress(), customer.getPhone(), customer.getEmail(), customer.getUsername(), customer.getPassword());

            if (dbconn.dbcreate(query)) {
                System.out.println("Insert successful");
//                getServletContext().getRequestDispatcher("/pages/SuccessPage.jsp").forward(request, response);
                response.sendRedirect("loginServlet");
            } else {
                System.out.println("Insert failed");
                getServletContext().getRequestDispatcher("/pages/registrationErrorMsg.jsp").forward(request, response);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/pages/registration.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
