/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package restfulservice;
import Bean.Department;
import dao.DepartmentDAO;
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
 @Path("/departments")
public class DepartmentRS {
   

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Department> getAllDepartment(){
     List<Department> list = new DepartmentDAO().getAllDepartment();
    return list;
    
    }
    
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Department saveDepartment(Department d){
     Department department = new DepartmentDAO().saveDepartment(d);
     return department;
    
    }
    @PUT
    @Produces(MediaType.APPLICATION_JSON)
    public Department updateDepartment(Department d){
    Department department = new DepartmentDAO().updateDepartment(d);
    return department;
    
    }
    
    @DELETE
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Department deleteDepartment(@PathParam("id") int id){
    boolean status = new DepartmentDAO().deleteDepartment(id);
    if(status){
    Department d = new Department();
    return d;
    
    }
    return  null;
    }
    
    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    
    public Department getDepartment(@PathParam("id") int id){
    Department d = new DepartmentDAO().getDepartment(id);
    return d;
    
    }
    
}
