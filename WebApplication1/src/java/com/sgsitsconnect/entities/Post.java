/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sgsitsconnect.entities;
import java.sql.*;
/**
 *
 * @author jatin
 */
public class Post {
    private int pid;
    private String title;
    private String pContent;
    private String pCode;
    private String pPic;
    private Timestamp pDate;
    private int catId;
    //private int userId; Add to constructor when u get the login module bulid getter setter
    
    //constructors
    
    public Post() {
    }

    public Post(int pid, String title, String pContent, String pCode, String pPic, Timestamp pDate, int catId) {
        this.pid = pid;
        this.title = title;
        this.pContent = pContent;
        this.pCode = pCode;
        this.pPic = pPic;
        this.pDate = pDate;
        this.catId = catId;
    }

    public Post(String title, String pContent, String pCode, String pPic, Timestamp pDate, int catId) {
        this.title = title;
        this.pContent = pContent;
        this.pCode = pCode;
        this.pPic = pPic;
        this.pDate = pDate;
        this.catId = catId;
    }

    
    //getters
    public int getPid() {
        return pid;
    }

    public String getTitle() {
        return title;
    }

    public String getpContent() {
        return pContent;
    }

    public String getpCode() {
        return pCode;
    }

    public String getpPic() {
        return pPic;
    }

    public Timestamp getpDate() {
        return pDate;
    }

    public int getCatId() {
        return catId;
    }

    
    //Setters
    public void setPid(int pid) {
        this.pid = pid;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setpContent(String pContent) {
        this.pContent = pContent;
    }

    public void setpCode(String pCode) {
        this.pCode = pCode;
    }

    public void setpPic(String pPic) {
        this.pPic = pPic;
    }

    public void setpDate(Timestamp pDate) {
        this.pDate = pDate;
    }

    public void setCatId(int catId) {
        this.catId = catId;
    }
       
}

