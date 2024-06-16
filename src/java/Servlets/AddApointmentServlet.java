package Servlets;

import Java_Classes.DBConncetion;
import Java_Classes.Service;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AddApointmentServlet", urlPatterns = {"/AddApointmentServlet"})
public class AddApointmentServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String telephone = request.getParameter("telephone");
        String service_type = request.getParameter("service_type");
        String date = request.getParameter("date");
        String time = request.getParameter("time");

        DBConncetion dbconn = new DBConncetion();

        try {
            String query = String.format("INSERT INTO `appointment` (`telephone`, `service_type`, `date`, `time`) VALUES('%s', '%s','%s','%s')",
                    telephone, service_type, date, time);

            if (dbconn.dbcreate(query)) {
                System.out.println("Insert Succesfull");
                request.setAttribute("telephone", telephone);
                getServletContext().getRequestDispatcher("/pages/AppoimentRecorded.jsp").forward(request, response);
            } else {
                System.out.println("Insert failed");
                getServletContext().getRequestDispatcher("/pages/AppoinmentError.jsp").forward(request, response);

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
        

        getServletContext().getRequestDispatcher("/pages/AddAppointment.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
