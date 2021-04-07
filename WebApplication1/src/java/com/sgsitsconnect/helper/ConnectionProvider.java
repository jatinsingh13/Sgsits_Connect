/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sgsitsconnect.helper;
import java.sql.*;

/**
 *
 * @author jatin
 */
public class ConnectionProvider {
    private static Connection con;
    
    public static Connection getConnection(){
        
        try{
            if(con == null)
            {
                //driver class load
                Class.forName("com.mysql.jdbc.Driver");
                //create a connection
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sgsits_connect","root","jatin");
            
            }
           
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return con;
    }
}
