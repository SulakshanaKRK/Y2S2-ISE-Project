package Java_Classes;

import java.sql.*;

public class DBConncetion {

    private Statement statement;
    private Connection connection;

    public DBConncetion() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/silky_hair_db", "root", "123456");
            statement = connection.createStatement();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ResultSet dbretrieve(String query) {
        try {

            ResultSet resultset = statement.executeQuery(query);
            return resultset;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

//to check whether the update is successfull
    public boolean dbupdate(String query) {
        try {

            statement.executeUpdate(query);
            return true;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }

    }

    public Connection getConnection() {
        return connection;
    }

    public boolean dbcreate(String query) {
        return dbupdate(query);
    }

    public boolean dbdelete(String query) {
        return dbupdate(query);
    }

}
