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
  <style>
  .errormsg {
  background-color: #e0becb;
  padding: 8px;
  border-radius: 5px;
  position: relative;
  width: 100%;
  top: 10px;
  color: #ce2626;
  font-weight: bold;
}

.errormsg a {
  text-decoration: none;
  font-weight: bold;

  margin-left: 40px;
  background-color: #e0becb;
  padding: 8px;
  border-radius: 5px;
  color: #790870;
}
  
  </style>
  <body>

    <div class="fpassword-box">
       
         <%
      
      String msg=request.getParameter("msg");
      if("valid".equals(msg))
      {%>
        <div class="errormsg"> 
        <h3 >
        
           Successfully registered!
           LOG IN TO YOUR ACCOUNT! </h3>
            <a href="login.jsp">Login</a>
           </div>
      
     <%} %>  
     
     
      
      <%if("invalid".equals(msg)){ %>
      <div class="errormsg">  
      <h3>Something went wrong. Try again!</h3>
      <a href="signup.jsp">Sign up</a>
      </div>
      <%} %>  

      </div>
         
    
  </body>
</html>
