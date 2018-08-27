/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Bean.Department;
import Util.DBConncet;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Naznin34
 */
public class DepartmentDAO {
     public List<Department> getAllDepartment(){
      List<Department> list = new ArrayList<>();
      
        try {
            ResultSet rs = DBConncet.getConnection().createStatement().executeQuery("select * from departmentlist");
            while(rs.next()){
                list.add(new Department(rs.getInt("id"),rs.getString("departname"),rs.getString("description"),rs.getString("departsta")));
                
            } 
            
            return list;
            
        } catch (SQLException ex) {
            Logger.getLogger(DepartmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
      
      
      
      
      
        return null;
    
    }
     
      public Department saveDepartment(Department d){
        String sql = "insert into departmentlist(departname,description,departsta) values('"+d.getDepartname()+"','"+d.getDescription()+"','"+d.getDepartsta()+"')";
          System.out.println("sql: "+sql);
        
        try {
            int value = DBConncet.getConnection().createStatement().executeUpdate(sql);
            if(value>0){
            return d;
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DepartmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    
    
    
    }
     
      public Department updateDepartment(Department d){
        String sql = "update departmentlist set departname= '"+d.getDepartname()+"', description ='"+d.getDescription()+"', departsta ='"+d.getDepartsta()+"' where id='"+d.getId()+"' ";
        
        try {
            int value = DBConncet.getConnection().createStatement().executeUpdate(sql);
            if(value>0){
            return d;
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DepartmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    
    
    
    }
      public boolean deleteDepartment(int id){
        String sql = "delete from departmentlist where id ='"+id+"'";
        
        try {
            int value = DBConncet.getConnection().createStatement().executeUpdate(sql);
            if(value>0){
            return true;
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DepartmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    
    
    
    }
      public Department getDepartment(int id){
   Department d = new Department();
     try {
            ResultSet rs = DBConncet.getConnection().createStatement().executeQuery("select * from departmentlist where id = '"+id+"'");
            while(rs.next()){
              d.setId(rs.getInt("id"));
             d.setDepartname(rs.getString("departname"));
             d.setDescription(rs.getString("description"));
              d.setDepartsta(rs.getString("departsta"));
            } 
           return d; 
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DepartmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
      
      
      
      
      
        return null;
   
   }
    
    
     
     
}
