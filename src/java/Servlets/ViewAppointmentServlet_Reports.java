package Servlets;

import Java_Classes.Appointment;
import Java_Classes.MediCareAppointment;
import Java_Classes.CalendarAp;
import Java_Classes.DBConncetion;
import com.google.gson.Gson;

import java.io.IOException;
import static java.lang.System.out;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ViewAppointmentServlet_Reports", urlPatterns = {"/ViewAppointmentServlet_Reports"})
public class ViewAppointmentServlet_Reports extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
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

//        request.setAttribute("dbConnection", dbconn);
        request.setAttribute("appointmentArray", appointmentArray);

//        request.getServletContext().getRequestDispatcher("/pages/Admin_Dashboard_Reports.jsp").forward(request, response);
        request.getServletContext().getRequestDispatcher("/pages/calendar-19/Admin_Dashboard_Reports.jsp").forward(request, response);

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DBConncetion dbconn = new DBConncetion();
        ArrayList<Appointment> appointmentArray = new ArrayList<>();
        ArrayList<MediCareAppointment> medicaretArray = new ArrayList<>();

        String query = "SELECT * FROM appointment";
        ResultSet resultSet = dbconn.dbretrieve(query);
        try {
            while (resultSet.next()) {
                Appointment appointment = new Appointment(
                        resultSet.getString("appointment_id"),
                        resultSet.getString("telephone"),
                        resultSet.getString("service_type"),
                        resultSet.getString("date"),
                        resultSet.getString("time")
                );
                appointmentArray.add(appointment);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        query = "SELECT * FROM medicare_appointment";
        resultSet = dbconn.dbretrieve(query);
        try {
            while (resultSet.next()) {
                MediCareAppointment medicareappointment = new MediCareAppointment(
                        resultSet.getString("A_id"),
                        resultSet.getString("firstName"),
                        resultSet.getString("lastName"),
                        resultSet.getString("dob"),
                        resultSet.getString("phone"),
                        resultSet.getString("streetAddress"),
                        resultSet.getString("city"),
                        resultSet.getString("province"),
                        resultSet.getString("doctor"),
                        resultSet.getString("preferredDateTime"),
                        resultSet.getString("additionalInfo")
                );

                medicaretArray.add(medicareappointment);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        // Convert appointmentArray to required format
        ArrayList<CalendarAp> calendarapArray = new ArrayList<>();
        for (Appointment appointment : appointmentArray) {
            String startDateTime = appointment.getDate() + "T" + appointment.getTime();
            CalendarAp calendarap = new CalendarAp(
                    appointment.getService_type(),
                    "/SalonSIlkyHair/ViewAppointmentServlet?app_id=" + appointment.getAppointment_id(),
                    startDateTime
            );
            calendarapArray.add(calendarap);
        }

        for (MediCareAppointment medicareappointment : medicaretArray) {
            String startDateTime = medicareappointment.getPreferredDateTime();
            CalendarAp calendarap = new CalendarAp(
                    medicareappointment.getDoctor(),
                    "/SalonSIlkyHair/ViewMedicare?app_id=" + medicareappointment.getA_id(),
                    startDateTime
            );
            calendarapArray.add(calendarap);
        }

        // Convert CalendarAp ArrayList to JSON using Gson
        Gson gson = new Gson();
        String jsonCalendarAp = gson.toJson(calendarapArray);

        query = "SELECT \n"
                + "    (SELECT COUNT(*) FROM appointment) AS appointment_count,\n"
                + "    (SELECT COUNT(*) FROM medicare_appointment) AS medicare_appointment_count,\n"
                + "    (SELECT COUNT(*) FROM order1) AS order1_count";

        resultSet = dbconn.dbretrieve(query);

        int[] pieData = new int[3];
        try {
            int index = 0;
            while (resultSet.next()) {
                pieData[index++] = resultSet.getInt("appointment_count");
                pieData[index++] = resultSet.getInt("medicare_appointment_count");
                pieData[index] = resultSet.getInt("order1_count");
            }

            // Closing resources
            resultSet.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
//        request.setAttribute("dbConnection", dbconn);
        request.setAttribute("jsonCalendarAp", jsonCalendarAp);
        request.setAttribute("pieData", pieData);

//        request.getServletContext().getRequestDispatcher("/pages/Admin_Dashboard_Reports.jsp").forward(request, response);
        request.getServletContext().getRequestDispatcher("/pages/calendar-19/Admin_Dashboard_Reports.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
