/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package restfulservice;

import java.util.Set;

/**
 *
 * @author Naznin34
 */
@javax.ws.rs.ApplicationPath("webresources")
public class ApplicationConfig extends javax.ws.rs.core.Application {

    @Override
    public Set<Class<?>> getClasses() {
        Set<Class<?>> resources = new java.util.HashSet<>();
        addRestResourceClasses(resources);
        return resources;
    }

    /**
     * Do not modify addRestResourceClasses() method.
     * It is automatically populated with
     * all resources defined in the project.
     * If required, comment out calling this method in getClasses().
     */
    private void addRestResourceClasses(Set<Class<?>> resources) {
        resources.add(restfulservice.AppointmentRS.class);
        resources.add(restfulservice.DepartmentRS.class);
        resources.add(restfulservice.DoctorRS.class);
        resources.add(restfulservice.PatientRS.class);
        resources.add(restfulservice.ScheduleRS.class);
    }
    
}
