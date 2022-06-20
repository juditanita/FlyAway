<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="stylesheet" href="" />
    <title>Add airline</title>
  
  <style type="text/css">
  
  
  * {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  
}
body {
  background: #fff;
  font-family: sans-serif;
  display:flex;
}


h1 {
  text-align: center;
  padding-top: 15px;
  font-weight: 200px;
  line-height: 2.5;
}
h3 {
  text-align: center;
  padding-top: 15px;
  line-height: 2.5;
  font-weight: 200;
}
h4 {
  font-weight: normal;
  color: #ce2626;
  line-height: 2.5;
  text-align: center;
}



form {
  width: 300px;
  margin-left: 20px;
}

form label {
  
 
  display: flex;
  margin-top: 20px;
  font-size: 18px;
}
}

form input {
  width: 100%;
  padding: 7px;
  border: none;
  border: 1px solid gray;
  border-radius: 6px;
  outline: none;
}

 .button {
  width: 320px;
  height: 35px;
  margin-top: 20px;
  border: none;
  background-color: #15a7a7;
  color: #fff;
  font-size: 18px;
}



 .button:hover {
  
  font-size: 18px;
  font-weight: bold;
}



  
  </style>
  
  
  
  
  
  
  </head>
  <body>
    <div class="add-box">
      <h1>Add Airline</h1>
      <% String msg=request.getParameter("msg");
      if("notaddedairline".equals(msg))
      {
      %>
      <h4>Something went wrong.</h4>
     <%} %>
  
      
      <form action="addNewAirlineAction.jsp" method="post">
        <label>AirCraft</label>
        <input type="text" name="airCraft" />
        <label>flight Number</label>
        <input type="text" name="flightN" />
        <label>airline Company</label>
        <input type="text" name="airlineCompany"   />
        <label>Seats</label>
        <input type="number" min="1" name="seats"  />
   
        <label>Journey Time</label>
        <input type="text" name="flightDuration" />
        <label>Origin Airport Short</label>
        <input type="text" name="originAirportNameShort"   />
        <label>Origin Country</label>
        <input type="text" name="originCountry"  />
         <label>Origin City</label>
        <input type="text" name="originCity" />
        <label>Origin Date</label>
        <input type="date" name="originDate" />
        <label>Origin Time</label>
        <input type="time" name="originTime"   />
        
   
        <label>Destination Airport Short</label>
        <input type="text" name="destinationAirportNameShort"   />
        <label>Destination Country</label>
        <input type="text" name="destinationCountry"  />
         <label>Destination City</label>
        <input type="text" name="destinationCity" />
        <label>Destination Date</label>
        <input type="date" name="destinationDate"   />
        <label>Destination Time</label>
        <input type="time" name="destinationTime"  />
        
         <label>Price $</label>
           <input type="number" min="1"name="price"  />
            <label>Available</label>
         <select name="available">
         <option value="yes">Yes
         </option>
         <option value="no">No
         </option>
         </select>
         <br/>
         <label>Pets Allowed</label>
         <select  name="petsAllowed">
         <option value="yes">Yes
         </option>
         <option value="no">No
         </option>
         </select>
      
        <br/>
      
        <label>Classes</label>
       
         <select  name="classes">
         <option value="B">Economic
         </option>
         <option value="A">First Class
         </option>
          <option value="C">Business Class
         </option>
         </select>
      
        
        <br/>
        <div class="button">
        <input class="button" type="submit" value="SAVE" />
      </div>
      </form>
    </div>
    
</html>

