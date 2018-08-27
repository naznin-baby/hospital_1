/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Bean.Patient;
import Util.DBConncet;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Baby
 */
public class PatientDAO {
   
     public List<Patient> getAllPatient(){
      List<Patient> list = new ArrayList<>();
      
        try {
            ResultSet rs = DBConncet.getConnection().createStatement().executeQuery("select * from patientlist");
            while(rs.next()){
                list.add(new Patient(rs.getInt("p_id"),rs.getString("f_name"),rs.getString("l_name"),rs.getString("email_address"),rs.getString("mobile"),rs.getString("bloodgroup"),rs.getString("sex"),rs.getString("birthdate"),rs.getString("address")));
                
            } 
            
            return list;
            
        } catch (SQLException ex) {
            Logger.getLogger(DepartmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
      
      
      
      
      
        return null;
    
    }
     
     public Patient savePatient(Patient p){
        String sql = "insert into patientlist(f_name,l_name,email_address,mobile,bloodgroup,sex,birthdate,address) values('"+p.getF_name()+"','"+p.getL_name()+"','"+p.getEmail_address()+"','"+p.getMobile()+"','"+p.getBloodgroup()+"','"+p.getSex()+"','"+p.getBirthdate()+"','"+p.getAddress()+"')";
          System.out.println("sql: "+sql);
        
        try {
            int value = DBConncet.getConnection().createStatement().executeUpdate(sql);
            if(value>0){
            return p;
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DepartmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    
    
    
    }
     public Patient updatePatient(Patient p){
        String sql = "update patientlist set f_name= '"+p.getF_name()+"', l_name ='"+p.getL_name()+"', email_address ='"+p.getEmail_address()+"',mobile ='"+p.getMobile()+"',bloodgroup ='"+p.getBloodgroup()+"',sex ='"+p.getSex()+"',birthdate ='"+p.getBirthdate()+"', where p_id='"+p.getP_id()+"' ";
        
        try {
            int value = DBConncet.getConnection().createStatement().executeUpdate(sql);
            if(value>0){
            return p;
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DepartmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    
    
    
    }
     public boolean deletePatient(int p_id){
        String sql = "delete from patientlist where p_id ='"+p_id+"'";
        
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
      public Patient getPatient(int p_id){
   Patient p = new Patient();
     try {
            ResultSet rs = DBConncet.getConnection().createStatement().executeQuery("select * from patientlist where p_id = '"+p_id+"'");
            while(rs.next()){
              p.setP_id(rs.getInt("p_id"));
             p.setF_name(rs.getString("f_name"));
             p.setL_name(rs.getString("l_name"));
              p.setEmail_address(rs.getString("email_address"));
               p.setMobile(rs.getString("mobile"));
                p.setBloodgroup(rs.getString("bloodgroup"));
                 p.setSex(rs.getString("sex"));
                  p.setBirthdate(rs.getString("birthdate"));
                  p.setAddress(rs.getString("address"));
            } 
           return p; 
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DepartmentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
      
      
      
      
      
        return null;
   
   }
    
     
    }

