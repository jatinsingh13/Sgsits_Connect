/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sgsitsconnect.dao;

/**
 *
 * @author jatin
 */
import java.util.*;
import java.sql.*;
import com.sgsitsconnect.entities.Category;
import com.sgsitsconnect.entities.Post;
public class PostDAO {
    Connection con;

    public PostDAO(Connection con) {
        this.con = con;
    }
    
    public ArrayList<Category> getAllCategories(){
        ArrayList<Category> list=new ArrayList<>();
        try{
            //query to get data from category table
            String q="select * from category";
            Statement st=con.createStatement();
            ResultSet set=st.executeQuery(q);
            
            //loop until the resultset is empty
            while(set.next()){
                int cid=set.getInt("cid");
                String name=set.getString("name");
                String description=set.getString("description");
                
                //create new object of category class and add to list
                Category c= new Category(cid,name,description);
                list.add(c);
            }
            
        }catch (Exception e){
            e.printStackTrace();
        }
        return list;
    }
    
    public boolean savePost(Post p){
        boolean flag=false;
        try{
             String q = "insert into post(title,pcontent,pcode,ppic,catid) values (?,?,?,?,?)";
             PreparedStatement pstmt=con.prepareStatement(q);
             pstmt.setString(1, p.getTitle());
             pstmt.setString(2, p.getpContent());
             pstmt.setString(3, p.getpCode());
             pstmt.setString(4, p.getpPic());
             pstmt.setInt(5, p.getCatId());
             pstmt.executeUpdate();
             flag=true;
             
        }catch(Exception e){
          e.printStackTrace();
        }
        return flag;
    }
    
}
