package Java_Classes;

public class Appointment {

    private String appointment_id;
    private String telephone;
    private String service_type;
    private String date;
    private String time;

    public Appointment(String appointment_id, String telephone, String service_type, String date, String time) {
        this.appointment_id = appointment_id;
        this.telephone = telephone;
        this.service_type = service_type;
        this.date = date;
        this.time = time;
    }

    public String getTelephone() {
        return telephone;
    }

    public String getService_type() {
        return service_type;
    }

    public String getDate() {
        return date;
    }

    public String getTime() {
        return time;
    }

    public String getAppointment_id() {
        return appointment_id;
    }

    public void setAppointment_id(String appointment_id) {
        this.appointment_id = appointment_id;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public void setService_type(String service_type) {
        this.service_type = service_type;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setTime(String time) {
        this.time = time;
    }



}
