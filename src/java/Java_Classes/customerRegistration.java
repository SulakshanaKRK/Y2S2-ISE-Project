package Java_Classes;

public class customerRegistration {
    private String first_name;
    private String last_name;
    private String dob;
    private String address;
    private String phone;
    private String email;
    private String username;
    private String password;
    
    public customerRegistration(String first_name, String last_name, String dob, String address, String phone, String email, String username, String password) {
        this.first_name = first_name;
        this.last_name = last_name;
        this.dob = dob;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.username = username;
        this.password = password;
    }



    public String getFirst_name() {
        return first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public String getDob() {
        return dob;
    }

    public String getAddress() {
        return address;
    }

    public String getPhone() {
        return phone;
    }

    public String getEmail() {
        return email;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }
}
