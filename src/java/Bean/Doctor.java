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
public class Doctor {
    private int d_id;
    private String name;
    private String email_address;
    private String department;
    private String address;
    private String mobile;
    private String education_quylif;
    private String specilist;

    public Doctor() {
    }

    public Doctor(int d_id, String name, String email_address, String department, String address, String mobile, String education_quylif, String specilist) {
        this.d_id = d_id;
        this.name = name;
        this.email_address = email_address;
        this.department = department;
        this.address = address;
        this.mobile = mobile;
        this.education_quylif = education_quylif;
        this.specilist = specilist;
    }

    public int getD_id() {
        return d_id;
    }

    public void setD_id(int d_id) {
        this.d_id = d_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail_address() {
        return email_address;
    }

    public void setEmail_address(String email_address) {
        this.email_address = email_address;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEducation_quylif() {
        return education_quylif;
    }

    public void setEducation_quylif(String education_quylif) {
        this.education_quylif = education_quylif;
    }

    public String getSpecilist() {
        return specilist;
    }

    public void setSpecilist(String specilist) {
        this.specilist = specilist;
    }
    
    
    
}
