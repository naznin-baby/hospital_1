/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import Bean.Doctor;
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
public class DoctorDAO {
    
    public List<Doctor> getAllDoctor(){
      List<Doctor> list = new ArrayList<>();
      
        try {
            ResultSet rs = DBConncet.getConnection().createStatement().executeQuery("select * from doctorlist");
            while(rs.next()){
                list.add(new Doctor(rs.getInt("d_id"),rs.getString("name"),rs.getString("email_address"),rs.getString("department"),rs.getString("address"),rs.getString("mobile"),rs.getString("education_quylif"),rs.getString("specilist")));
                
            } 
            
            return list;
            
        } catch (SQLException ex) {
            Logger.getLogger(DoctorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
      
      
      
      
      
        return null;
    
    }
    
    public Doctor saveDoctor(Doctor d){
        String sql = "insert into doctorlist(name,email_address,department,address,mobile,education_quylif,specilist) values('"+d.getName()+"','"+d.getEmail_address()+"','"+d.getDepartment()+"','"+d.getAddress()+"','"+d.getMobile()+"','"+d.getEducation_quylif()+"','"+d.getSpecilist()+"')";
        
        try {
            int value = DBConncet.getConnection().createStatement().executeUpdate(sql);
            if(value>0){
            return d;
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DoctorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    
    
    
    }
    
     public Doctor updateDoctor(Doctor d){
        String sql = "update doctorlist set name= '"+d.getName()+"', email_address ='"+d.getEmail_address()+"', department ='"+d.getDepartment()+"',address ='"+d.getAddress()+"',mobile ='"+d.getMobile()+"',education_quylif ='"+d.getEducation_quylif()+"',specilist ='"+d.getSpecilist()+"' where d_id='"+d.getD_id()+"' ";
        
        try {
            int value = DBConncet.getConnection().createStatement().executeUpdate(sql);
            if(value>0){
            return d;
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DoctorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    
    
    
    }
    
     public boolean deleteDoctor(int d_id){
        String sql = "delete from doctorlist where d_id ='"+d_id+"'";
        
        try {
            int value = DBConncet.getConnection().createStatement().executeUpdate(sql);
            if(value>0){
            return true;
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DoctorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    
    
    
    }
     
      public Doctor getDoctor(int d_id){
  Doctor d = new Doctor();
     try {
            ResultSet rs = DBConncet.getConnection().createStatement().executeQuery("select * from doctorlist where d_id = '"+d_id+"'");
            while(rs.next()){
             d.setD_id(rs.getInt("d_id"));
             d.setName(rs.getString("name"));
              d.setEmail_address(rs.getString("email_address"));
              d.setDepartment(rs.getString("department"));
             d.setAddress(rs.getString("address"));
            d.setMobile(rs.getString("mobile"));
            d.setEducation_quylif(rs.getString("education_quylif"));
            d.setSpecilist(rs.getString("specilist"));
            
            }
           return d; 
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DoctorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
      
      
      
      
      
        return null;
   
   }
    
    
    
    
    
     
}
