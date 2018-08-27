/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package restfulservice;
import Bean.Schedule;
import dao.ScheduleDAO;
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
@Path("/schedules")
public class ScheduleRS {
   @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Schedule> getAllSchedule(){
     List<Schedule> list = new ScheduleDAO().getAllSchedule();
    return list;
    
    }
    
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Schedule saveSchedule(Schedule s){
     Schedule schedule = new ScheduleDAO().saveSchedule(s);
     return schedule;
    
    }
    @PUT
    @Produces(MediaType.APPLICATION_JSON)
    public Schedule updateSchedule(Schedule s){
    Schedule schedule = new ScheduleDAO().updateSchedule(s);
    return schedule;
    
    }
    
    @DELETE
    @Path("/{sid}")
    @Produces(MediaType.APPLICATION_JSON)
    public Schedule deleteSchedule(@PathParam("sid") int sid){
    boolean status = new ScheduleDAO().deleteSchedule(sid);
    if(status){
    Schedule s = new Schedule();
    return s;
    
    }
    return  null;
    }
    
    @GET
    @Path("/{sid}")
    @Produces(MediaType.APPLICATION_JSON)
    
    public Schedule getSchedule(@PathParam("sid") int sid){
   Schedule s = new ScheduleDAO().getSchedule(sid);
    return s;
    
    }
      
}
