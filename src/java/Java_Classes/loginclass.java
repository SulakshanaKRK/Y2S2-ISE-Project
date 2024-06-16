package Java_Classes;

import java.sql.*;

public class loginclass {
    
    private Connection connection;

    public loginclass(Connection connection) {
       
        this.connection = connection;
    }

    public customerRegistration getLogin(String username, String password) {
        customerRegistration customer = null;
        try {
            String qu = "select * from test where username=? AND password=?";
            PreparedStatement pst = connection.prepareStatement(qu);
            pst.setString(1, username);
            pst.setString(2, password);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                customer = new customerRegistration(rs.getString(2), rs.getString(3), rs.getString(7), rs.getString(6), rs.getString(4), rs.getString(5), rs.getString(8), rs.getString(9));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return customer;
    }
}
