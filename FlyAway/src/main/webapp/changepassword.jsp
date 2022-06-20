<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
    <%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="stylesheet" href="accountpage.css" />
    <title>sign up</title>
  </head>
  <body>
    <div class="signup-box">
      <h1>Change password</h1>
       <%
      String msg=request.getParameter("msg");
      if("done".equals(msg)){
      %>
       <h3> Password changed! <br/><a  class="verif "href="login.jsp">Sign in</a></h3>
      <%} %>
    
     <form action="changePasswordAction.jsp" method="post">
        <label>Email Address</label>
        <input type="email" name="email" />
        <label>Enter Old Password</label>
        <input type="password" name="password"   />
         <label>Enter New Password</label>
        <input type="password" name="newpassword"   />
        <div class="button">
        <input class="button" type="submit" value="Save" />
      </div>
      </form>
     
      <%
       if("invalid".equals(msg)){
      %>
      
      <h3>Error occurred!</h3>
      <%} %>
      
    </div>
   
  </body>
</html>

