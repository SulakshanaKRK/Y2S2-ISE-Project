
package Java_Classes;


public class promotions {
    
    private String promo_code;
    private String promo_name;
    private String promo_type;
    private String promo_des;
    private String valid_period;
    
    
    public promotions(String promo_code, String promo_name, String promo_type, String promo_des, String valid_period) {
        this.promo_code = promo_code;
        this.promo_name = promo_name;
        this.promo_type = promo_type;
        this.promo_des = promo_des;
        this.valid_period = valid_period;
        
    }

    public String getPromo_code() {
        return promo_code;
    }

    public String getPromo_name() {
        return promo_name;
    }

    public String getPromo_type() {
        return promo_type;
    }

    public String getPromo_des() {
        return promo_des;
    }

    public String getValid_period() {
        return valid_period;
    }

    
    
}
