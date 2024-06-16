package Java_Classes;

public class MediCareAppointment {

    private String A_id;
    private String firstName;
    private String lastName;
    private String dob;
    private String phone;
    private String streetAddress;
    private String city;
    private String province;
    private String doctor;
    private String preferredDateTime;
    private String additionalInfo;

    public MediCareAppointment(String A_id, String firstName, String lastName, String dob, String phone, String streetAddress, String city, String province, String doctor, String preferredDateTime, String additionalInfo) {
        this.A_id = A_id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.dob = dob;
        this.phone = phone;
        this.streetAddress = streetAddress;
        this.city = city;
        this.province = province;
        this.doctor = doctor;
        this.preferredDateTime = preferredDateTime;
        this.additionalInfo = additionalInfo;
    }

    public String getA_id() {
        return A_id;
    }

    public String getDoctor() {
        return doctor;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getDob() {
        return dob;
    }

    public String getPhone() {
        return phone;
    }

    public String getStreetAddress() {
        return streetAddress;
    }

    public String getCity() {
        return city;
    }

    public String getProvince() {
        return province;
    }

    public String getPreferredDateTime() {
        return preferredDateTime;
    }

    public String getAdditionalInfo() {
        return additionalInfo;
    }

}
