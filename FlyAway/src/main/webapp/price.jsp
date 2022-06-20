<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="stylesheet" href="pricing.css" />
    <title>Document</title>
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
    <div class="wrapper">
      <div class="single-price">
        <h1>Economic</h1>
        <div class="price">
         
   
        
        
         
        
        
          <h2>$<%=rs.getString(18) %></h2>
        </div>
        <div class="deals">
          <h4>
                  <% 
          }
        	}
        	catch(Exception e)
        	{ 
        		System.out.println(e);
        	}
        	
        	
        	%>
        	
            <form class="" action="" method="">
              <h4>Add Luggages</h4>

              <label for="">10 kg check in bag</label>

              <input type="checkbox" name="opt" disabled />
              <br />

              <label for="">20 kg check in bag + price </label>

              <input type="checkbox" name="opt" disabled/>
            </form>
          </h4>
        </div>
        <input class="a" type="submit" value="Select" />
      </div>
      <div class="single-price">
        <h1>Business Class</h1>
        <div class="price">
          <h2>$5000</h2>
        </div>
        <div class="deals">
          <h4>
            <form class="" action="" method="">
              <h4>Add Luggages</h4>

              <label for="">10 kg check in bag </label>

              <input type="checkbox" name="opt"disabled />
              <br />

              <label for="">20 kg check in bag + price</label>

              <input type="checkbox" name="opt" disabled/>
            </form>
          </h4>
        </div>
        <input class="a" type="submit" value="Select" />
      </div>
      <div class="single-price">
        <h1>First Class</h1>
        <div class="price">
          <h2>$3500</h2>
        </div>
        <div class="deals">
          <h4>
            <form  action="" method="post">
              <h4>Add Luggages</h4>

              <label for="">10 kg check in bag</label>

              <input type="checkbox" name="opt" disabled/>
              <br />

              <label for="">20 kg check in bag + price </label>

              <input type="checkbox" name="opt" disabled/>
            </form>
          </h4>
        </div>
        <input class="a" type="submit" value="Select" />
      </div>
    </div>
  </body>
</html>
