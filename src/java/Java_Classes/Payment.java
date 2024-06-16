package Java_Classes;

public class Payment {

    private String pay_id;
    private String card_no;
    private String cardholder_name;
    private String card_type;
    private String date;
    private String CVV;
    private String ZIP;

    public Payment(String pay_id, String card_no, String cardholder_name, String card_type, String date, String CVV, String ZIP) {
        this.pay_id = pay_id;
        this.card_no = card_no;
        this.cardholder_name = cardholder_name;
        this.card_type = card_type;
        this.date = date;
   
        this.CVV = CVV;
        this.ZIP = ZIP;
    }

    public String getPay_id() {
        return pay_id;
    }

    public String getCard_no() {
        return card_no;
    }

    public String getCardholder_name() {
        return cardholder_name;
    }

    public String getCard_type() {
        return card_type;
    }

    public String getDate() {
        return date;
    }


    public String getCVV() {
        return CVV;
    }

    public String getZIP() {
        return ZIP;
    }




}
