<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Document</title>
    <style type="text/css">
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }
      body {
        background-color: #f1f1f1;
        font-family: sans-serif;
      }
      .table-container {
        padding: 0 10%;
        margin: 40px auto 0;
      }

      .heading {
        font-size: 40px;
        text-align: center;
        color: lightsalmon;
        margin-bottom: 40px;
        text-transform: uppercase;
      }
      a {
        text-decoration: none;
        color: #FF6347;
        
      }
      .table {
        width: 100%;
        border-collapse: collapse;
      }
      .table thead {
        background-color:#f05462;
      }
      .table thead tr th {
        font-size: 14px;
        font-weight: medium;
        letter-spacing: 0.35px;
        color: #fff;
        opacity: 1;
        padding: 12px;
        vertical-align: top;
        border: 1px solid #dee2e685;
      }
      .table tbody tr td {
        font-size: 14px;
        letter-spacing: 0.35px;
        font-weight: normal;
        color: #f1f1f1;
        background-color: #3c3f44;
        padding: 8px;
        text-align: center;
        border: 1px solid #dee2e685;
      }
    </style>
  </head>
  <body>
    <div class="table-container">
    
      <h1 class="heading">All flights from Countries</h1>
     
      
      
      
      
       <a href="adminPortal.jsp"> Go to Admin Portal</a>
      
      <hr>
       <a href="home.jsp">&#8855;  Log out</a>
     
      
      <table class="table">
        <thead>
          <tr>
            <th>Original Country</th>
            <th>Original Cities</th>
            <th>Journey Duration</th>
             <th>Destination Country</th>
            <th>Destination Cities</th>
            <th>Destination Date</th>
            
            <th>Available</th>
            
           
          </tr>
        </thead>
        <tbody>
          <tr>
            <td >....</td>
            <td >...</td>
            <td >...</td>
            <td>....</td>
            <td >...</td>
            <td >...</td>
            <td >...</td>

          </tr>
        </tbody>
      </table>
    </div>
  </body>
</html>
