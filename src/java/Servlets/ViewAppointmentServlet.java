package Servlets;

import Java_Classes.*;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ViewAppointmentServlet", urlPatterns = {"/ViewAppointmentServlet"})
public class ViewAppointmentServlet extends HttpServlet {

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



        request.setAttribute("appointmentArray", appointmentArray);

        request.getServletContext().getRequestDispatcher("/pages/Admin_Dashboard.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
