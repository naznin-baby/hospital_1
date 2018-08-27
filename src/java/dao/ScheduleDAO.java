/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Bean.Schedule;
import java.util.List;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import Util.DBConncet;
/**
 *
 * @author Baby
 */
public class ScheduleDAO {
     public List<Schedule> getAllSchedule(){
      List<Schedule> list = new ArrayList<>();
      
        try {
            ResultSet rs = DBConncet.getConnection().createStatement().executeQuery("select * from schedulelist");
            while(rs.next()){
                list.add(new Schedule(rs.getInt("sid"),rs.getString("doctorname"),rs.getString("availableday"),rs.getString("availabletime"),rs.getString("perpatienttime"),rs.getInt("serialvisibility")));
                
            } 
            
            return list;
            
        } catch (SQLException ex) {
            Logger.getLogger(DepartmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
      
      
      
      
      
        return null;
    
    }
     
      public Schedule saveSchedule(Schedule s){
        String sql = "insert into schedulelist(doctorname,availableday,availabletime,perpatienttime,serialvisibility) values('"+s.getDoctorname()+"','"+s.getAvailableday()+"','"+s.getAvailabletime()+"','"+s.getPerpatienttime()+"','"+s.getSerialvisibility()+"')";
          System.out.println("sql: "+sql);
        
        try {
            int value = DBConncet.getConnection().createStatement().executeUpdate(sql);
            if(value>0){
            return s;
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DepartmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    
    
    
    }
     
      public Schedule updateSchedule(Schedule s){
        String sql = "update schedulelist set doctorname= '"+s.getDoctorname()+"', availableday ='"+s.getAvailableday()+"', availabletime ='"+s.getAvailabletime()+"',perpatienttime ='"+s.getPerpatienttime()+"',serialvisibility ='"+s.getSerialvisibility()+"' where sid='"+s.getSid()+"' ";
        
        try {
            int value = DBConncet.getConnection().createStatement().executeUpdate(sql);
            if(value>0){
            return s;
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DepartmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    
    
    
    }
      public boolean deleteSchedule(int sid){
        String sql = "delete from schedulelist where sid ='"+sid+"'";
        
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
      public Schedule getSchedule(int sid){
   Schedule s = new Schedule();
     try {
            ResultSet rs = DBConncet.getConnection().createStatement().executeQuery("select * from schedulelist where sid = '"+sid+"'");
            while(rs.next()){
              s.setSid(rs.getInt("sid"));
             s.setDoctorname(rs.getString("doctorname"));
             s.setAvailableday(rs.getString("availableday"));
              s.setAvailabletime(rs.getString("availabletime"));
              s.setPerpatienttime(rs.getString("perpatienttime"));
              s.setSerialvisibility(rs.getInt("serialvisibility"));
            } 
           return s; 
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DepartmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
      
      
      
      
      
        return null;
   
   }
}
    
    
     
