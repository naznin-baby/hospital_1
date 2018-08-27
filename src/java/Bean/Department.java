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
public class Department {
    private int id;
    private String departname;
    private String description;
    private String departsta;

    public Department() {
    }

    public Department(int id, String departname, String description, String departsta) {
        this.id = id;
        this.departname = departname;
        this.description = description;
        this.departsta = departsta;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDepartname() {
        return departname;
    }

    public void setDepartname(String departname) {
        this.departname = departname;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDepartsta() {
        return departsta;
    }

    public void setDepartsta(String departsta) {
        this.departsta = departsta;
    }

  
    
}
