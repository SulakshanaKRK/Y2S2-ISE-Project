package Java_Classes;


public class Service {
    private String image;
    private String type;
    private String product;
    private String beautcian;
    private double price;


    public Service(String image, String type, String product, String beautcian, double price) {
        this.image = image;
        this.type = type;
        this.product = product;
        this.beautcian = beautcian;
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public String getType() {
        return type;
    }

    public String getProduct() {
        return product;
    }

    public String getBeautcian() {
        return beautcian;
    }

    public double getPrice() {
        return price;
    }


}
