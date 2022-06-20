<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <link rel="stylesheet" href="accountpage.css" />
    <title>Document</title>
  </head>
  <body>
   
    <div class="signup-box">
      <h1>Login</h1>
      
  <% 
      
    String msg=request.getParameter("msg");
      if("notexist".equals(msg))
      {
      %>
      
        <h4>Wrong email or password!</h4>
       
        <%} %>   
        
        <%
        if("invalid".equals(msg)){
        %>
      <h4>Something went wrong. Try again!</h4>
      <%} %>
      
  
      <form action="LoginAction.jsp" method="post">
        <label>Email Address</label>
        <input type="text" name="email" id="" placeholder="....@..." />

        <label>Password</label>
        <input type="password" name="password" id="" placeholder="*********" />

        <input class="button" type="submit"value="Login" />
      </form>
      <p class="small-p">
        FLY and HELP<br />

        - www.unitedcharity.de - <br />Get your<br />Unique items and
        Experiences. <br />
      </p>
    </div>
    <p>Have no account yet? <a href="signup.jsp">Sign up</a></p>
  </body>
</html>
