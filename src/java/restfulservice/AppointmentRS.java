/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package restfulservice;
import Bean.Appointment;

import dao.AppointmentDAO;
import java.util.List;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
/**
 *
 * @author Naznin34
 */
 @Path("/appointments")
public class AppointmentRS {
   

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Appointment> getAllAppointment(){
     List<Appointment> list = new AppointmentDAO().getAllAppointment();
    return list;
    
    }
    
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Appointment saveAppointment(Appointment a){
     Appointment appointment = new AppointmentDAO().saveAppointment(a);
     return appointment;
    
    }
    @PUT
    @Produces(MediaType.APPLICATION_JSON)
    public Appointment updateAppointment(Appointment a){
    Appointment appointment = new AppointmentDAO().updateAppointment(a);
    return appointment;
    
    }
    
    @DELETE
    @Path("/{a_id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Appointment deleteAppointment(@PathParam("a_id") int a_id){
    boolean status = new AppointmentDAO().deleteAppointment(a_id);
    if(status){
   Appointment a = new Appointment();
    return a;
    
    }
    return  null;
    }
    
    @GET
    @Path("/{a_id}")
    @Produces(MediaType.APPLICATION_JSON)
    
    public Appointment getAppointment(@PathParam("a_id") int a_id){
    Appointment a = new AppointmentDAO().getAppointment(a_id);
    return a;
    
    }
}
