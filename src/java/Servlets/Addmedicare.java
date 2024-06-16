package Servlets;

import Java_Classes.DBConncetion;
import Java_Classes.MediCareAppointment;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Addmedicare", urlPatterns = {"/Addmedicare"})
public class Addmedicare extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String dob = request.getParameter("dob");
        String phone = request.getParameter("phone");
        String streetAddress = request.getParameter("streetAddress");
        String city = request.getParameter("city");
        String province = request.getParameter("province");
        String doctor = request.getParameter("doctor");
        String preferredDateTime = request.getParameter("preferredDateTime");
        String additionalInfo = request.getParameter("additionalInfo");

//        MediCareAppointment mcappointment = new MediCareAppointment(firstName, lastName, dob, phone, streetAddress, city, province,doctor, preferredDateTime, additionalInfo);
        DBConncetion dbconn = new DBConncetion();

        try {
            String query = String.format("INSERT INTO `medicare_appointment`(`firstName`,`lastName`,`dob`,`phone`,`streetAddress`,`city` ,`province`,`doctor`,`preferredDateTime`,`additionalInfo`) VALUES('%s','%s','%s','%s','%s','%s','%s','%s','%s','%s')",
                    firstName, lastName, dob, phone, streetAddress, city, province,doctor, preferredDateTime, additionalInfo );

            if (dbconn.dbcreate(query)) {
                System.out.println("Insert successful");
                getServletContext().getRequestDispatcher("/pages/AppoimentRecorded_Medical.jsp").forward(request, response);
            } else {
                System.out.println("Insert failed");
                getServletContext().getRequestDispatcher("/pages/MedicareError.jsp").forward(request, response);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/pages/Medicare.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
