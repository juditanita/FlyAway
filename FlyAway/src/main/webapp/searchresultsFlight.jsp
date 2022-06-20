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
    <title>Document</title>
    <style type="text/css">
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }
      body {
        background-color: #f0f5f5;
        font-family: sans-serif;
      }
      .table-container {
        padding: 0 10%;
        margin: 40px auto 0;
      }

      .heading {
        font-size: 40px;
        text-align: center;
        color: rgb(16, 27, 184);
        margin-bottom: 40px;
        text-transform: uppercase;
      }
      a {
        text-decoration: none;
        color: aqua;
      }
      .table {
        width: 100%;
        border-collapse: collapse;
      }
      .table thead {
        background-color: #f7cbe9;
        box-shadow: -7px -7px 20px 0 #867171b3, 7px 7px 20px #ffffff80;
        border-bottom: 4px double #000;
      }
      .table thead tr th {
        font-size: 16px;
        font-weight: medium;
        letter-spacing: 0.55px;
        color: #1d1b1b;

        opacity: 1;
        padding: 12px;
        vertical-align: top;
        border: 1px solid #dee2e685;
      }
      .table thead tr th h3 {
        color: #169916;
      }

      .table tbody tr td {
        font-size: 14px;
        letter-spacing: 0.35px;
        font-weight: normal;
        color: #1d1b1b;
        background-color: #f0dbe9;
        padding: 8px;
        text-align: center;
        border: 1px solid #e5dee685;
      }
    </style>
  </head>
  <body>
    <div class="table-container">
      <h1 class="heading">Search Results:</h1>
      <h3><a href =login.jsp>Login</a></h3>
      <h3><a href =signup.jsp>Sign up</a></h3>

      <table class="table">
        <thead>
          <tr>
            <th><h6>Flight Number</h6></th>
            <th>From</th>
            <th>
              Date  <br />
              <span>Time</span>
            </th>
            <th><h6>To</h6></th>
            <th>Date<br />
              <span>Time</span>
          <th>Length of the Journey</th>
            <th>Price ($)</th>
            <th><h3 color="#00FF00">&#10003;</h3></th>
          </tr>
        </thead>
        
         
         
         <%
         int z=0;
         
         try{
        	String search = request.getParameter("search");
        	Connection con=ConnectionProvider.getCon();
        	Statement st=con.createStatement();
        	ResultSet rs= st.executeQuery("select *from flightinfo where active = 'yes' and  originCity like '%+search+%' and destinationCity like '%+search+%'  and originDate like '%+search+%'  and petsAllowed like '%+search+%' ");
        	while(rs.next())
        			
        			{
        		 %>
        			
        <tbody>
          <tr>
          <td ><%= rs.getString("flightN")%></td>
            <td ><%= rs.getString("originCity")%></td>
            <td ><%= rs.getString("destinationCity")%></td>
            <td ><%= rs.getString("originDate")%> <br/><%= rs.getString("originTime")%></td>
              <td ><%= rs.getString("destinationCity")%></td>
             <td ><%= rs.getString("destinationDate")%><br/><%= rs.getString("destinationTime")%></td>
            <td ><%= rs.getString("flightDuration")%></td>
            <td >$<%=rs.getString("price")%></td>

            <td><a href="choosenActivation.jsp?flightN=rs.getString('flightN')">Choose</a></td>
              
     <%
     }
         }
     catch(Exception e)
    {
    System.out.println(e);
    }
    %>
              
           
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </body>
</html>
