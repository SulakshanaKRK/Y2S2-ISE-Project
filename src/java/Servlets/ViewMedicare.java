package Servlets;

import Java_Classes.DBConncetion;
import Java_Classes.MediCareAppointment;
import com.google.gson.Gson;
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

@WebServlet(name = "ViewMedicare", urlPatterns = {"/ViewMedicare"})
public class ViewMedicare extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DBConncetion dbconn = new DBConncetion();
        MediCareAppointment medicareappointment;
        ArrayList<MediCareAppointment> medicareappointmentArray = new ArrayList<>();

        String query = "SELECT * FROM medicare_appointment";
        ResultSet resultSet = dbconn.dbretrieve(query);
        try {
            while (resultSet.next()) {
                medicareappointment = new MediCareAppointment(resultSet.getString("A_id"), resultSet.getString("firstName"), resultSet.getString("lastName"), resultSet.getString("dob"), resultSet.getString("phone"), resultSet.getString("streetAddress"),resultSet.getString("city"),resultSet.getString("province"),resultSet.getString("doctor"),resultSet.getString("preferredDateTime"),resultSet.getString("additionalInfo"));
                medicareappointmentArray.add(medicareappointment);
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        
        

        request.setAttribute("medicareappointmentArray", medicareappointmentArray);
        request.getServletContext().getRequestDispatcher("/pages/Admin_Dashboard_Medical.jsp").forward(request, response);
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
 }

    