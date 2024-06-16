package Servlets;

import Java_Classes.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "DeleteAppointmentServlet", urlPatterns = {"/DeleteAppointmentServlet"})
public class DeleteAppointmentServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String appointment_id = request.getParameter("appointment_id");

        DBConncetion dbconn = new DBConncetion();

        try {
            String query = "DELETE FROM `appointment` WHERE `appointment_id` = '" + appointment_id + "'";

            if (dbconn.dbcreate(query)) {
                System.out.println("Delete Succesfull");
                getServletContext().getRequestDispatcher("/ViewAppointmentServlet").forward(request, response);
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
        Appointment appointment;
        ArrayList<Appointment> appointmentArray = new ArrayList<>();

        String query = "SELECT * FROM appointment";
        ResultSet resultSet = dbconn.dbretrieve(query);
        try {
            while (resultSet.next()) {
                appointment = new Appointment(resultSet.getString("appointment_id"), resultSet.getString("telephone"), resultSet.getString("service_type"), resultSet.getString("date"), resultSet.getString("time"));
                appointmentArray.add(appointment);
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        request.setAttribute("appointmentArray", appointmentArray);
        request.getServletContext().getRequestDispatcher("/pages/Admin_Dashboard.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
