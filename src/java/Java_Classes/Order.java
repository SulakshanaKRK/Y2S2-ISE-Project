
package Java_Classes;


public class Order {
  
    private String CustomerName;
    private String productName;
    private int quantity;
   
    
    public Order(String CustomerName, String productName, int quantity){
       
        this.CustomerName = CustomerName; 
        this.productName = productName;
        this.quantity = quantity;
 
        
    }

    
   
    
  
    
    
    public String getCustomerName(){
        return CustomerName;
    }
    
    public String getProductName(){
        return productName;
    }
    
    public int getQuantity(){
        return quantity;
    }
   
    
  
}
