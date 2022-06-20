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
      <h1>Sign up</h1>
      <h4>It is only takes a few minutes.</h4>
     

      
      <form action="signupAction.jsp" method="post">
       
        
        <label>Email Address</label>
        <input type="email" name="email" />
        <label>Full Name</label>
        <input type="text" name="name" />
        <label>Password</label>
        <input type="password" name="password"   />
        <label>Phone Number</label>
        <input type="text" name="phoneN"  />
        <div class="button">
        <input class="button" type="submit" value="Register" />
      </div>
      </form>
    </div>
    <p>Already have an account? <a href="login.jsp">Sign in</a></p>
  </body>
</html>

