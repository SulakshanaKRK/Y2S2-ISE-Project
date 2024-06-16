package Servlets;

import Java_Classes.DBConncetion;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "CreateNailServicesServlet", urlPatterns = {"/create-nail-services"})
public class CreateNailServicesServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String image_url = request.getParameter("image_url");
        String service_type = request.getParameter("service_type");
        String product = request.getParameter("product");
        String beautician = request.getParameter("beautician");
        Double price = Double.parseDouble(request.getParameter("price"));

        DBConncetion dbconn = new DBConncetion();

        try {
            String query = String.format("INSERT INTO `AddNailServices` (`image`, `type`, `product`, `beautcian`, `price`) VALUES('%s','%s','%s','%s',%f)",
                    image_url, service_type, product, beautician, price);

            if (dbconn.dbcreate(query)) {
                System.out.println("Insert Succesfull");
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
        getServletContext().getRequestDispatcher("/pages/AddNailServices.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
