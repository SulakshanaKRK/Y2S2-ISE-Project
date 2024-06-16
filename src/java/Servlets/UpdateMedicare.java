package Servlets;

import Java_Classes.MediCareAppointment;
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

@WebServlet(name = "UpdateMedicare", urlPatterns = {"/UpdateMedicare"})
public class UpdateMedicare extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        DBConncetion dbconn = new DBConncetion();
        MediCareAppointment medicareappointment;
        ArrayList<MediCareAppointment> medicareappointmentArray = new ArrayList<>();
        String phone = request.getParameter("phno");

        String query = "SELECT * FROM appointment WHERE phone = '" + phone + "' AND A_id = ("
                + "SELECT MAX(A_id) FROM appointment WHERE phone = '" + phone + "')";

        ResultSet resultSet = dbconn.dbretrieve(query);
        try {
            while (resultSet.next()) {
                medicareappointment = new MediCareAppointment(resultSet.getString("A_id"), resultSet.getString("firstName"), resultSet.getString("lastName"), resultSet.getString("dob"), resultSet.getString("phone"),resultSet.getString("doctor"), resultSet.getString("streetAddress"), resultSet.getString("city"), resultSet.getString("province"), resultSet.getString("preferredDateTime"), resultSet.getString("additionalInfo"));
                medicareappointmentArray.add(medicareappointment);
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        request.setAttribute("medicareappointmentArray", medicareappointmentArray);
        request.getServletContext().getRequestDispatcher("/pages/Admin_Dashboard_Medical.jsp").forward(request, response);

    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String A_id = request.getParameter("A_id");
        String phone = request.getParameter("telephone");
        String city = request.getParameter("city");
        String preferredDateTime = request.getParameter("preferredDateTime");

        DBConncetion dbconn = new DBConncetion();

        try {

            String query = String.format("UPDATE `medicare_appointment` SET `phone` = '%s', `city` = '%s', `preferredDateTime` = '%s' WHERE `A_id` = '%s'",
                    phone, city, preferredDateTime, A_id);

            
            if (dbconn.dbcreate(query)) {
                System.out.println("Update Successful");
                
                response.sendRedirect("ViewMedicare");
            } else {
                System.out.println("Update failed");
                
                response.sendRedirect("error.jsp");
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
            // Redirect to an error page or send an error message
            response.sendRedirect("error.jsp");
        }
    }

}
