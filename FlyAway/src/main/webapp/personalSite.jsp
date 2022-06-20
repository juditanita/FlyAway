<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    />
    <link rel="stylesheet" href="home.css" />
    <title>Profile</title>
  </head>
  <body>

    <div class="fly">
      
        <img
          src="logo.PNG"
          width="100px"
          height="100px"
          class="logo"
          alt="heart-logo"
        />
        
         
    <div>
      <div class="content">
     
      
        <%
        try{
        	
        	Connection con=ConnectionProvider.getCon();
        	Statement st=con.createStatement();
        	ResultSet rs= st.executeQuery("select *from customertinfo");
        	while(rs.next())
        			
        			{		
        			
        %>
      
      <h1>WELCOME BACK, <%=rs.getString(1) %>!</h1>
     
      
           <% 
          }
        	}
        	catch(Exception e)
        	{ 
        		System.out.println(e);
        	}
        	
        	
        	%>
       <h2>Your upcoming flights + fligh code </h2>
       <span class="left-icon"><a href="ticket.jsp">&#x2190;<br/>see ticket</a></span>

       <hr>
   <%
     try{
        	
        	Connection con=ConnectionProvider.getCon();
        	Statement st=con.createStatement();
        	ResultSet rs= st.executeQuery("select *from customertinfo");
        	while(rs.next())
        			
        			{		
        			
        %>
       <h3>Personal Info &#9998;</h3>
       <p>Full Name: <%= rs.getString(1) %></p>
       <p>Email address: <%= rs.getString(2)%></p>
       
       <p>Country of Residence: <%= rs.getString(9)%></p>
       <p>Address: <%= rs.getString(10)%></p>
       <p>Phone Number: <%= rs.getString(4)%></p>

       
  <% 
          }
        	}
        	catch(Exception e)
        	{ 
        		System.out.println(e);
        	}
        	
        	
        	%>
        <a href="logout.jsp" class="btn">Logout</a>
        
      </div>
    </div>
    <div class="content2">

      
    </div>
    
    </div> 
</body>
</html>
