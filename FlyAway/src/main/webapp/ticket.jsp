<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="stylesheet" href="ticket.css" />
    <title>Ticket</title>
  </head>
  <body>
      <%
        
        try{
        	
        	Connection con=ConnectionProvider.getCon();
        	Statement st=con.createStatement();
        	ResultSet rs= st.executeQuery("select *from flightinfo");
        	while(rs.next())
        			
        			{
        		 %>
    <div class="container">
      <div class="coupon-card">
        <span class="left-icon"><a href="personalSite.jsp">&#x2190;</a></span>
        <h1>Booking code</h1>

        <h3><%= rs.getString(8)%></h3>
        <h5><%= rs.getString(9)%><br/><%=rs.getString(10) %></h5>

        <div class="coupon-row">
          <span class="cpnCode"><%= rs.getString(6)%></span>
          <span class="cpnBtn"><%= rs.getString(11)%></span>
        </div>
        <h3><%= rs.getString(13)%></h3>
        <h5><%= rs.getString(14) %><br/><%=rs.getString(15)%></h5>
        <div class="circle1"></div>
        <div class="circle2"></div>
      <%     
          }
        	}
        	catch(Exception e)
        	{ 
        		System.out.println(e);
        	}
        	
        	
        	%>
      </div>
    </div>
  </body>
</html>
