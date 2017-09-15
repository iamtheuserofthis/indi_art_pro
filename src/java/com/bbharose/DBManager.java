package com.bbharose;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.UUID;

public class DBManager {
    
    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/indi_art";
    private static final String USERNAME = "root";
    private static final String PASSWD = "root";
    
    
    
    static{
        try{
            Class.forName(DRIVER);
            
        }catch(Exception exp){
            System.out.print("\nDriver Error :"+exp);
        }
    }
    
    public static boolean insertUser(User u){
        boolean status = false;
        Date dob = new Date(u.getDob().getTime());
        String a = UUID.randomUUID().toString().replace("-","").substring(1,10);
        try(Connection con = DriverManager.getConnection(URL,USERNAME,PASSWD)){
            String query = "insert into User values(?,?,?,password(?),?,?,0,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,u.getEmail());
            ps.setString(2, u.getUsername());
            ps.setString(3,u.getRoleName());
            ps.setString(4,u.getPasswd());
            ps.setString(5,u.getsQue());
            ps.setString(6,u.getsAns());
            ps.setString(7,a);
            ps.setDate(8, dob);
            
            ps.executeUpdate();
            status= true;
            
        }catch(Exception exp){
            System.out.println("Error :"+exp);
        }
        
        
        return status;
    }
    
    public static boolean checkPrimaryKey(String email){
        boolean status = false;
         try(Connection con = DriverManager.getConnection(URL,USERNAME,PASSWD)){
             String query = "select email from user where email=?";
             PreparedStatement ps = con.prepareStatement(query);
             ps.setString(1, email);
             ResultSet rs = ps.executeQuery();
             if(rs.next()){
                 status =true;
             }
         }catch(Exception exp){
             System.out.println("Error");
         }
        return status;
    }
    public static AuthUser loginUser(String email,String passwd){
       AuthUser au = null;
        try(Connection con = DriverManager.getConnection(URL,USERNAME,PASSWD)){
            String query = "select email,username,rolename,verification,DOB,ProfPic from user where email=? and passwd=password(?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,email);
            ps.setString(2, passwd);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                au =new AuthUser();
                au.setEmail(rs.getString(1));
                au.setUserName(rs.getString(2));
                au.setRole(rs.getString(3));
                au.setVerification(rs.getInt(4));
                au.setDob(rs.getDate(5));
                au.setPicName(rs.getString(6));
                
            }
            
        }catch(Exception exp){
            System.out.println("Authentication error :"+exp);
        }
        return au;
    }
  
}
