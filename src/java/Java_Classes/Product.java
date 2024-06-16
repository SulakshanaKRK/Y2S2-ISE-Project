package Java_Classes;


public class Product {

private String product_id;
    private String image;
    private String name;
    private double price;
    private int prQuantity;
    private String description; 

    public Product(String product_id, String image, String name, double price, int prQuantity, String description) {
        this.product_id = product_id;
        this.image = image;
        this.name = name;
        this.price = price;
        this.prQuantity = prQuantity;
        this.description = description;
    }

//    public Product(String string, String string0, String string1, int aInt, String string2, int aInt0) {
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
//    }

    public String getProduct_id() {
        return product_id;
    }

    

    public String getImage() {
        return image;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }
    
    public int getPrQuantity(){
        return prQuantity;
    }

    public String getDescription() {
        return description;
    }








}
