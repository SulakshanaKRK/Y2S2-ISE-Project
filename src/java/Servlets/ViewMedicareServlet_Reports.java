//package Servlets;
//
//import Java_Classes.Appointment;
//import Java_Classes.CalendarAp;
//import Java_Classes.DBConncetion;
//import Java_Classes.MediCareAppointment;
//import com.google.gson.Gson;
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//@WebServlet(name = "ViewMedicareServlet_Reports", urlPatterns = {"/ViewMedicareServlet_Reports"})
//public class ViewMedicareServlet_Reports extends HttpServlet {
//
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        DBConncetion dbconn = new DBConncetion();
//        MediCareAppointment medicareappointment;
//        ArrayList<MediCareAppointment> medicareappointmentArray = new ArrayList<>();
//
//        String query = "SELECT * FROM medicare_appointment";
//        ResultSet resultSet = dbconn.dbretrieve(query);
//        try {
//            while (resultSet.next()) {
//                medicareappointment = new MediCareAppointment(resultSet.getString("A_id"), resultSet.getString("firstName"), resultSet.getString("lastName"), resultSet.getString("dob"), resultSet.getString("phone"), resultSet.getString("streetAddress"), resultSet.getString("city"), resultSet.getString("province"), resultSet.getString("preferredDateTime"), resultSet.getString("additionalInfo"));
//                medicareappointmentArray.add(medicareappointment);
//            }
//
//        } catch (SQLException e) {
//            System.out.println(e.getMessage());
//        }
//
//        request.setAttribute("medicareappointmentArray", medicareappointmentArray);
//        request.getServletContext().getRequestDispatcher("/pages/calendar-19/Admin_Dashboard_Reports.jsp").forward(request, response);
//
//    }
//
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        DBConncetion dbconn = new DBConncetion();
//        ArrayList<MediCareAppointment> medicareappointmentArray = new ArrayList<>();
//
//        String query = "SELECT * FROM medicare_appointment";
//        ResultSet resultSet = dbconn.dbretrieve(query);
//        try {
//            while (resultSet.next()) {
//                MediCareAppointment medicareappointment = new MediCareAppointment(resultSet.getString("A_id"), resultSet.getString("firstName"), resultSet.getString("lastName"), resultSet.getString("dob"), resultSet.getString("phone"), resultSet.getString("streetAddress"), resultSet.getString("city"), resultSet.getString("province"), resultSet.getString("preferredDateTime"), resultSet.getString("additionalInfo"));
//                medicareappointmentArray.add(medicareappointment);
//            }
//
//        } catch (SQLException e) {
//            System.out.println(e.getMessage());
//        }
//
//// Convert appointmentArray to required format
//        ArrayList<CalendarAp> calendarapArray = new ArrayList<>();
//        for (MediCareAppointment medicareappointment : medicareappointmentArray) {
//            String startDateTime = medicareappointment.getDate() + "T" + medicareappointment.getTime();
//            CalendarAp calendarap = new CalendarAp(
//                    medicareappointment.getService_type(),
//                    "/SalonSIlkyHair/ViewAppointmentServlet?app_id=" + medicareappointment.getAppointment_id(),
//                    startDateTime
//            );
//            calendarapArray.add(calendarap);
//        }
//
//        // Convert CalendarAp ArrayList to JSON using Gson
//        Gson gson = new Gson();
//        String jsonCalendarAp = gson.toJson(calendarapArray);
//
////        request.setAttribute("dbConnection", dbconn);
//        request.setAttribute("jsonCalendarAp", jsonCalendarAp);
//
////        request.getServletContext().getRequestDispatcher("/pages/Admin_Dashboard_Reports.jsp").forward(request, response);
//        request.getServletContext().getRequestDispatcher("/pages/calendar-19/Admin_Dashboard_Reports.jsp").forward(request, response);
//
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        processRequest(request, response);
//    }
//
//}
