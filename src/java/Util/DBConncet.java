/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Naznin34
 */
public class DBConncet {
    private static Connection con;
    static{
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBConncet.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }
    
    public static Connection getConnection() throws SQLException{
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "123");
    return con;
    
    }
    
}