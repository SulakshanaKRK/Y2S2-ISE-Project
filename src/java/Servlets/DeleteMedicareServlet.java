package Servlets;

import Java_Classes.Appointment;
import Java_Classes.DBConncetion;
import Java_Classes.MediCareAppointment;
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

@WebServlet(name = "DeleteMedicare", urlPatterns = {"/DeleteMedicare"})
public class DeleteMedicareServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String appointmentId = request.getParameter("A_id");

        DBConncetion dbconn = new DBConncetion();

        try {

            String query = "DELETE FROM `medicare_appointment` WHERE `A_id` = '" + appointmentId + "'";

            if (dbconn.dbcreate(query)) {
                System.out.println("Delete Succesfull");
                getServletContext().getRequestDispatcher("ViewMedicare").forward(request, response);
            } else {
                System.out.println("Delete failed");
                getServletContext().getRequestDispatcher("/pages/ErrorPage.jsp").forward(request, response);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String appointmentId = request.getParameter("A_id");

        DBConncetion dbconn = new DBConncetion();

        try {
            String query = "DELETE FROM `medicare_appointment` WHERE `A_id` = '" + appointmentId + "'";

            if (dbconn.dbcreate(query)) {
                System.out.println("Delete Successful");
                response.getWriter().write("Appointment cancelled successfully");
            } else {
                System.out.println("Delete failed");
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Failed to cancel appointment");
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, e.getMessage());
        }
    }

}
