package Servlets;

import Java_Classes.DBConncetion;
import Java_Classes.Service;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "DeleteNailServiceServlet", urlPatterns = {"/delete-nail-service"})
public class DeleteNailServiceServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String service_type = request.getParameter("service_type");

        DBConncetion dbconn = new DBConncetion();

        try {
            String query = "DELETE FROM `AddNailServices` WHERE `type` = '" + service_type + "'";

            if (dbconn.dbcreate(query)) {
                System.out.println("Delete Succesfull");
                getServletContext().getRequestDispatcher("/pages/SuccessPage.jsp").forward(request, response);
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

        DBConncetion dbconn = new DBConncetion();
        Service service;
        ArrayList<Service> serviceArray = new ArrayList<>();

        String query = "SELECT * FROM addnailservices";
        ResultSet resultSet = dbconn.dbretrieve(query);

        try {
            while (resultSet.next()) {
                service = new Service(resultSet.getString("image"), resultSet.getString("type"), resultSet.getString("product"), resultSet.getString("beautcian"), resultSet.getDouble("price"));
                serviceArray.add(service);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        request.setAttribute("serviceArray", serviceArray);
        request.getServletContext().getRequestDispatcher("/pages/DeleteNailServices.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
