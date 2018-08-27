/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

/**
 *
 * @author Naznin34
 */
public class Appointment {
    private int a_id;
    private int patient_id;
    private String departmentname;
    private String doctorname;
    private String appointmentdate;
    private String serialno;
    private String problem;

    public Appointment() {
    }

    public Appointment(int a_id, int patient_id, String departmentname, String doctorname, String appointmentdate, String serialno, String problem) {
        this.a_id = a_id;
        this.patient_id = patient_id;
        this.departmentname = departmentname;
        this.doctorname = doctorname;
        this.appointmentdate = appointmentdate;
        this.serialno = serialno;
        this.problem = problem;
    }

    public int getA_id() {
        return a_id;
    }

    public void setA_id(int a_id) {
        this.a_id = a_id;
    }

    public int getPatient_id() {
        return patient_id;
    }

    public void setPatient_id(int patient_id) {
        this.patient_id = patient_id;
    }

    public String getDepartmentname() {
        return departmentname;
    }

    public void setDepartmentname(String departmentname) {
        this.departmentname = departmentname;
    }

    public String getDoctorname() {
        return doctorname;
    }

    public void setDoctorname(String doctorname) {
        this.doctorname = doctorname;
    }

    public String getAppointmentdate() {
        return appointmentdate;
    }

    public void setAppointmentdate(String appointmentdate) {
        this.appointmentdate = appointmentdate;
    }

    public String getSerialno() {
        return serialno;
    }

    public void setSerialno(String serialno) {
        this.serialno = serialno;
    }

    public String getProblem() {
        return problem;
    }

    public void setProblem(String problem) {
        this.problem = problem;
    }
    
    
    
    
    
    
}
