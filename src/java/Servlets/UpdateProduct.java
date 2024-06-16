package Servlets;

import Java_Classes.DBConncetion;
import Java_Classes.Product;
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

@WebServlet(name = "UpdateProduct", urlPatterns = {"/UpdateProduct"})
public class UpdateProduct extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        DBConncetion dbconn = new DBConncetion();
        Product product;
        ArrayList<Product> productArray = new ArrayList<>();

        String product_id = request.getParameter("product_id");
//        String query = "SELECT * FROM product";
        String query = "SELECT * FROM product WHERE product_id = '" + product_id + "' AND product_id = ("
                + "SELECT MAX(product_id) FROM product WHERE product_id = '" + product_id + "')";

        ResultSet resultSet = dbconn.dbretrieve(query);

        try {
            while (resultSet.next()) {
                product = new Product(
                        resultSet.getString("product_id"),
                        resultSet.getString("image"),
                        resultSet.getString("name"),
                        resultSet.getDouble("price"),
                        resultSet.getInt("prQuantity"),
                        resultSet.getString("description")
                );
                productArray.add(product);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        request.setAttribute("productArray", productArray);
//        request.getRequestDispatcher("/pages/product.jsp").forward(request, response);
        request.getRequestDispatcher("/pages/Admin_Dashboard_Products.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String product_id = request.getParameter("product_id");
        String image = request.getParameter("image");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        int price = Integer.parseInt(request.getParameter("price")); // Assuming price is an integer

        DBConncetion dbconn = new DBConncetion();

        try {
            String query = String.format("UPDATE `product` SET `image` = '%s', `name` = '%s', `description` = '%s', `price` = %d WHERE `product_id` = '%s' ",
                    image, name, description, price, product_id);

            if (dbconn.dbcreate(query)) {
                System.out.println("Update Successful");
                response.sendRedirect("ViewProducts"); // Redirect to the page displaying updated products
            } else {
                System.out.println("Update failed");
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

}
