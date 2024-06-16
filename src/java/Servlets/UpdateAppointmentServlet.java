package Servlets;

import Java_Classes.Appointment;
import Java_Classes.DBConncetion;
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

@WebServlet(name = "UpdateAppointmentServlet", urlPatterns = {"/UpdateAppointmentServlet"})
public class UpdateAppointmentServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        DBConncetion dbconn = new DBConncetion();
        Appointment appointment;
        ArrayList<Appointment> appointmentArray = new ArrayList<>();
        String telephone = request.getParameter("phno");

//        String query = "SELECT * FROM appointment WHERE appointment_id = '" + appointment_id + "' ";
        String query = "SELECT * FROM appointment WHERE telephone = '" + telephone + "' AND appointment_id = ("
                + "SELECT MAX(appointment_id) FROM appointment WHERE telephone = '" + telephone + "')";

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
        request.getServletContext().getRequestDispatcher("/pages/UpdateAppointment.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String restype = request.getParameter("restype");
        String appointment_id = request.getParameter("appointment_id");
        String telephone = request.getParameter("telephone");
        String service_type = request.getParameter("service_type");
        String date = request.getParameter("date");
        String time = request.getParameter("time");

        DBConncetion dbconn = new DBConncetion();

        try {

            String query = String.format("UPDATE `appointment` SET `telephone` = '%s', `service_type` = '%s', `date` = '%s', `time` = '%s' WHERE `appointment_id` = '%s'",
                    telephone, service_type, date, time, appointment_id);

            // Execute the SQL query to update the appointment details
            if (dbconn.dbcreate(query)) {
                System.out.println("Update Successful");
                if (restype.equalsIgnoreCase("admin")) {
                    request.setAttribute("redirect", "ViewAppointmentServlet");
                    getServletContext().getRequestDispatcher("/ViewAppointmentServlet").forward(request, response);
                }
                request.setAttribute("telephone", telephone);
                getServletContext().getRequestDispatcher("/pages/AppoimentRecorded.jsp").forward(request, response);
            } else {
                System.out.println("Update failed");
                getServletContext().getRequestDispatcher("/pages/ErrorPage.jsp").forward(request, response);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

    }

}
