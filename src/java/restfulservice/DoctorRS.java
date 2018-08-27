/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package restfulservice;

import Bean.Doctor;

import dao.DoctorDAO;
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
@Path("/doctors")
public class DoctorRS {
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Doctor> getAllDoctor(){
     List<Doctor> list = new DoctorDAO().getAllDoctor();
    return list;
    
    }
    
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Doctor saveDoctor(Doctor d){
     Doctor doctor = new DoctorDAO().saveDoctor(d);
     return doctor;
    
    }
    @PUT
    @Produces(MediaType.APPLICATION_JSON)
    public Doctor updateDoctor(Doctor d){
    Doctor doctor = new DoctorDAO().updateDoctor(d);
    return doctor;
    
    }
    
    @DELETE
    @Path("/{d_id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Doctor deleteDoctor(@PathParam("d_id") int d_id){
    boolean status = new DoctorDAO().deleteDoctor(d_id);
    if(status){
   Doctor d = new Doctor();
    return d;
    
    }
    return  null;
    }
    
    @GET
    @Path("/{d_id}")
    @Produces(MediaType.APPLICATION_JSON)
    
    public Doctor getDoctor(@PathParam("d_id") int d_id){
    Doctor d = new DoctorDAO().getDoctor(d_id);
    return d;
    
    }
}
