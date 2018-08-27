/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import Bean.Appointment;
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
public class AppointmentDAO {
     public List<Appointment> getAllAppointment(){
      List<Appointment> list = new ArrayList<>();
      
        try {
            ResultSet rs = DBConncet.getConnection().createStatement().executeQuery("select * from appointmentlist");
            while(rs.next()){
                list.add(new Appointment(rs.getInt("a_id"),rs.getInt("patient_id"),rs.getString("departmentname"),rs.getString("doctorname"),rs.getString("appointmentdate"),rs.getString("serialno"),rs.getString("problem")));
            } 
            
            return list;
            
        } catch (SQLException ex) {
            Logger.getLogger(AppointmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
      
      
      
      
      
        return null;
    
    }
     
      public Appointment saveAppointment(Appointment a){
        String sql = "insert into appointmentlist(patient_id,departmentname,doctorname,appointmentdate,serialno,problem) values('"+a.getPatient_id()+"','"+a.getDepartmentname()+"','"+a.getDoctorname()+"','"+a.getAppointmentdate()+"','"+a.getSerialno()+"','"+a.getProblem()+"')";
          System.out.println("sql: "+sql);
        
        try {
            int value = DBConncet.getConnection().createStatement().executeUpdate(sql);
            if(value>0){
            return a;
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(AppointmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    
    
    
    }
     
      public Appointment updateAppointment(Appointment a){
        String sql = "update appointmentlist set patient_id= '"+a.getPatient_id()+"', departmentname ='"+a.getDepartmentname()+"',doctorname ='"+a.getDoctorname()+"',appointmentdate ='"+a.getAppointmentdate()+"',serialno ='"+a.getSerialno()+"',problem ='"+a.getProblem()+"' where a_id='"+a.getA_id()+"' ";
        
        try {
            int value = DBConncet.getConnection().createStatement().executeUpdate(sql);
            if(value>0){
            return a;
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(AppointmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    
    
    
    }
      public boolean deleteAppointment(int a_id){
        String sql = "delete from appointmentlist where a_id ='"+a_id+"'";
        
        try {
            int value = DBConncet.getConnection().createStatement().executeUpdate(sql);
            if(value>0){
            return true;
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(AppointmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    
    
    
    }
      public Appointment getAppointment(int a_id){
   Appointment a = new Appointment();
     try {
            ResultSet rs = DBConncet.getConnection().createStatement().executeQuery("select * from appointmentlist where a_id = '"+a_id+"'");
            while(rs.next()){
              a.setA_id(rs.getInt("a_id"));
             a.setPatient_id(rs.getInt("patient_id"));
             a.setDepartmentname(rs.getString("departmentname"));
              a.setDoctorname(rs.getString("doctorname"));
              a.setAppointmentdate(rs.getString("appointmentdate"));
              a.setSerialno(rs.getString("serialno"));
              a.setProblem(rs.getString("problem"));
              
            } 
           return a; 
            
            
        } catch (SQLException ex) {
            Logger.getLogger(AppointmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
      
      
      
      
      
        return null;
   
   }
    
    
}
