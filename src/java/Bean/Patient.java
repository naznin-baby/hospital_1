/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

/**
 *
 * @author Baby
 */
public class Patient {
    private int p_id;
    private String f_name;
     private String l_name;
      private String email_address;
       private String mobile;
        private String bloodgroup;
         private String sex;
          private String birthdate;
           private String address;

    public Patient() {
    }

    public Patient(int p_id, String f_name, String l_name, String email_address, String mobile, String bloodgroup, String sex, String birthdate, String address) {
        this.p_id = p_id;
        this.f_name = f_name;
        this.l_name = l_name;
        this.email_address = email_address;
        this.mobile = mobile;
        this.bloodgroup = bloodgroup;
        this.sex = sex;
        this.birthdate = birthdate;
        this.address = address;
    }

    public int getP_id() {
        return p_id;
    }

    public void setP_id(int p_id) {
        this.p_id = p_id;
    }

    public String getF_name() {
        return f_name;
    }

    public void setF_name(String f_name) {
        this.f_name = f_name;
    }

    public String getL_name() {
        return l_name;
    }

    public void setL_name(String l_name) {
        this.l_name = l_name;
    }

    public String getEmail_address() {
        return email_address;
    }

    public void setEmail_address(String email_address) {
        this.email_address = email_address;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getBloodgroup() {
        return bloodgroup;
    }

    public void setBloodgroup(String bloodgroup) {
        this.bloodgroup = bloodgroup;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
           
           
           
           
           
}
