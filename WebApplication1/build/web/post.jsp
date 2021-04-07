<%-- 
    Document   : post.jsp
    Created on : 7 Apr, 2021, 1:21:29 AM
    Author     : jatin
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.sgsitsconnect.entities.Category"%>
<%@page import="com.sgsitsconnect.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.sgsitsconnect.dao.PostDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Write your blog</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <!--navbar-->
        <%@include file="normalnavbar.jsp"%>
        <div class="container-fluid ">
            <div class="container blog_form">
                <h5 class="display-4">Add your blog here</h5>
                <hr class="style-two">
                <form id="addPostForm" action="AddPostServlet.java"  method="post">
                    <div class="form-group">
                    <select>
                        <option selected disabled>---Select Category---</option>
                        <% 
                        PostDAO postd=new PostDAO(ConnectionProvider.getConnection());
                        ArrayList<Category> list=postd.getAllCategories();
                        for(Category c:list)
                        {
                        %>   
                        <option values="<%= c.getCid()%>"><%=c.getName()%></option>
                        <%
                            }
                        %>
                    </select>
                    </div>    
                    <div class="form-group">
                        <input type="text" name="ptitle" placeholder="Enter blog title" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <textarea class="form-control" name="pcontent" placeholder="Enter your content" style="height: 120px"></textarea>
                    </div>
                    <div class="form-group">
                        <textarea class="form-control" name="pcode" placeholder="Enter your program(if any)" style="height: 120px"></textarea>
                    </div>
                    <div class="form-group">
                        <label>Select your pic</label>
                        <br>
                        <input type="file" name="pimage"/>
                        <div class="container-fluid text-center">
                        <button type="submit" class="btn btn-outline-dark">Post your Blog!!!</button>
                        </div>
                    </div>
                    
                </form>
            </div>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.6.0.slim.min.js" integrity="sha256-u7e5khyithlIdTpu22PHhENmPcRdFiHRjhAuHcs05RI=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <!--Adding blogs to database-->
        <!--javascript-->
        <script>
            $(document).ready(function(e){
                $("#addPostForm").on("submit",function(e){
                   //this code gets called when form is submitted 
                   e.preventDefault();
                   console.log("you have clicked on submit");
                   //form is the new variable in which the form data will be captured
                   let form=new FormData(this);
                   
                   //now requesting to server using ajax
                   $.ajax(
                           url:"AddPostServlet",
                           type:"POST",
                           data:"form",
                           success: function(data, textStatus, jqXHR){
                               //success
                           },
                           error: function(jqXHR, textStatus, errorThrown){
                               //error
                           },
                           processData:false,
                           contentType:false
                })
            })
        </script>
                    
    </body>
</html>
