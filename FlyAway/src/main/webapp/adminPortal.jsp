<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
    
<!DOCTYPE html>
<html lang="en">
  <head>
   
    <link rel="stylesheet" href="adminport.css" />
    <title>Admin Panel</title>
  </head>

  <body>
    <div class="side-menu">
      <div class="brand-name">
        <h1>Admin Portal</h1>
        
      </div>
      <ul>
        <li><a href="allFlight.jsp">All Flight</a> </li>
       
        <li><a href="customerIngo.jsp">Customers</a></li>
        <li>Bookings</li>
        <li><a href="logout.jsp">Logout</a> </li>
        <li></li>
      </ul>
    </div>
    <div class="container">
      <div class="header">
        <div class="nav">
          <div class="search">
            <input type="text" placeholder="Search.." />
            <button type="submit"><img src="searchsign.PNG" alt="" /></button>
          </div>
          <div class="user">
            <a href="changepassword.jsp" class="btn">Change password</a>

            <div class="img-case">
              <img src="account.jpg" alt="" />
            </div>
          </div>
        </div>
      </div>
      <div class="content">
        <div class="cards">
          <div class="card">
            <div class="box">
              <h1>2194</h1>
              <h3>Flights</h3>
            </div>
          </div>
          <div class="card">
            <div class="box">
              <h1>5390</h1>
              <h3>Airlines</h3>
            </div>
          </div>
          <div class="card">
            <div class="box">
              <h1>578900</h1>
              <h3>Bookings</h3>
            </div>
          </div>
          <div class="card">
            <div class="box">
                <%
        try{
        	
        	Connection con=ConnectionProvider.getCon();
        	Statement st=con.createStatement();
        	ResultSet rs= st.executeQuery("select count(*) from customertinfo");
        	while(rs.next())
        			
        			{		
        			
        %>
              <h1>350000</h1>
              <h3>Customers</h3>
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
        </div>
        <div class="content-2">
          <div class="recent-payments">
            <div class="title">
              <h2>New Bookings</h2>
              <a href="#" class="btn">View All</a>
            </div>
            <table>
              <tr>
                <th>Airline <code></code></th>
                <th>Origin</th>
                <th>Destination</th>
                <th>Bookings</th>
              </tr>
              <tr>
                <td>Wizzair</td>
                <td>London</td>
                <td>New York</td>
                <td><a href="#" class="btn">View</a></td>
              </tr>
              <tr>
                <td>Ryainair</td>
                <td>Barcelona</td>
                <td>Dublin</td>
                <td><a href="#" class="btn">View</a></td>
              </tr>
              <tr>
                <td>Easyjet</td>
                <td>Amsterdam</td>
                <td>Budapest</td>
                <td><a href="#" class="btn">View</a></td>
              </tr>
              <tr>
                <td>American Airline</td>
                <td>Los Angeles</td>
                <td>San Francisco</td>
                <td><a href="#" class="btn">View</a></td>
              </tr>
            </table>
          </div>
          <div class="new-students">
            <div class="title">
              <h2>New Custumers</h2>
              <a href="#" class="btn">View All</a>
            </div>
            <table>
              <tr>
                <th>Profile</th>
                <th>Name</th>
                <th>Bookings</th>
              </tr>
              <tr>
                <td><img src="account.jpg" alt="" /></td>
                <td>John Bean</td>
                <td>12</td>
              </tr>
              <tr>
                <td><img src="account.jpg" alt="" /></td>
                <td>John Steve Doe</td>
                <td>3</td>
              </tr>
              <tr>
                <td><img src="account.jpg" alt="" /></td>
                <td>John Steve Doe</td>
                <td>5677</td>
              </tr>
              <tr>
                <td><img src="account.jpg" alt="" /></td>
                <td>John Steve Doe</td>
                <td>2355</td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
