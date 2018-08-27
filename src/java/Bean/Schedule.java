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
public class Schedule {
    private int sid;
    private String doctorname;
    private String availableday;
    private String availabletime;
    private String perpatienttime;
    private int serialvisibility;

    public Schedule() {
    }

    public Schedule(int sid, String doctorname, String availableday, String availabletime, String perpatienttime, int serialvisibility) {
        this.sid = sid;
        this.doctorname = doctorname;
        this.availableday = availableday;
        this.availabletime = availabletime;
        this.perpatienttime = perpatienttime;
        this.serialvisibility = serialvisibility;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getDoctorname() {
        return doctorname;
    }

    public void setDoctorname(String doctorname) {
        this.doctorname = doctorname;
    }

    public String getAvailableday() {
        return availableday;
    }

    public void setAvailableday(String availableday) {
        this.availableday = availableday;
    }

    public String getAvailabletime() {
        return availabletime;
    }

    public void setAvailabletime(String availabletime) {
        this.availabletime = availabletime;
    }

    public String getPerpatienttime() {
        return perpatienttime;
    }

    public void setPerpatienttime(String perpatienttime) {
        this.perpatienttime = perpatienttime;
    }

    public int getSerialvisibility() {
        return serialvisibility;
    }

    public void setSerialvisibility(int serialvisibility) {
        this.serialvisibility = serialvisibility;
    }
    
    
    
    
    
}
