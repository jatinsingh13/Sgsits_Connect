<%-- 
    Document   : index
    Created on : 3 Apr, 2021, 12:32:20 AM
    Author     : jatin
--%>

<%@page import="com.sgsitsconnect.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Blog Page</title>
        <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <!--navbar-->
        <%@include file="normalnavbar.jsp"%>
        
        <!--head section of page-->
        <div class="container-fluid p-0 m-0 ">
            <div class="jumbotron site-content">
                <div class="container">
                    <h3 class="display-3">Welcome to Blogs</h3>
                    <p>Have a read through our awesome blogs</p>
                    <a href="post.jsp" class="btn btn-outline-dark"><i class="fa fa-graduation-cap"> </i> Write a Blog</a>
                    <a href="login.jsp" class="btn btn-outline-dark"><i class="fa fa-user"></i> Login</a>
                </div>
            </div>    
        </div>
        
        <br>
        <!--site content-->
        
        <div class="container">
            <div class="row mb-2">
                <div class="col-md-4">
                    <div class="card">
                    <div class="card-body">
                      <h5 class="card-title">Card title</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#" class="btn btn-outline-dark">Read more</a>
                    </div>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="card">
                    <div class="card-body">
                      <h5 class="card-title">Card title</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#" class="btn btn-outline-dark">Read more</a>
                    </div>
                    </div>
                </div>
                
                <div class="col-md-4" >
                    <div class="card">
                    <div class="card-body">
                      <h5 class="card-title">Card title</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#" class="btn btn-outline-dark">Read more</a>
                    </div>
                    </div>
                </div>
                
                
            </div>
            <div class="row mb-2 ">
                <div class="col-md-4">
                    <div class="card" >
                    <div class="card-body">
                      <h5 class="card-title">Card title</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#" class="btn btn-outline-dark">Read more</a>
                    </div>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="card">
                    <div class="card-body">
                      <h5 class="card-title">Card title</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#" class="btn btn-outline-dark">Read more</a>
                    </div>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="card">
                    <div class="card-body">
                      <h5 class="card-title">Card title</h5>
                      <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <a href="#" class="btn btn-outline-dark">Read more</a>
                    </div>
                    </div>
                </div>
                
                
            </div>
        </div>
            
        </div>    
        <script src="https://code.jquery.com/jquery-3.6.0.slim.min.js" integrity="sha256-u7e5khyithlIdTpu22PHhENmPcRdFiHRjhAuHcs05RI=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </body>
</html>
