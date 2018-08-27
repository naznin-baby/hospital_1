/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package restfulservice;
import Bean.Patient;
import dao.PatientDAO;
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
 * @author Baby
 */
 @Path("/patients")
public class PatientRS {
  


    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Patient> getAllPatient(){
     List<Patient> list = new PatientDAO().getAllPatient();
    return list;
    
    }
    
      @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Patient savePatient(Patient p){
     Patient patient = new PatientDAO().savePatient(p);
     return patient;
    
    }
    @PUT
    @Produces(MediaType.APPLICATION_JSON)
    public Patient updatePatient(Patient p){
   Patient patient = new PatientDAO().updatePatient(p);  
    return patient;
    
    }
    
    @DELETE
    @Path("/{p_id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Patient deletePatient(@PathParam("p_id") int p_id){
    boolean status = new PatientDAO().deletePatient(p_id);
    if(status){
    Patient p = new Patient();
    return p;
    
    }
    return  null;
    }
    
    @GET
    @Path("/{p_id}")
    @Produces(MediaType.APPLICATION_JSON)
    
    public Patient getPatient(@PathParam("p_id") int p_id){
    Patient p = new PatientDAO().getPatient(p_id);
    return p;
    
    }
    
}
 

