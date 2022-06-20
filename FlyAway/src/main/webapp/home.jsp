<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    />
    <link rel="stylesheet" href="home.css" />
    <title>FlyAway Home </title>
  </head>
  <body>

    <div class="fly">
      <nav>
        <img
          src="logo.PNG"
          width="100px"
          height="100px"
          class="logo"
          alt="heart-logo"
        />
        
          <h1 class="intpt">
              <a  color="white"href="login.jsp"> Admin Login</a>
            </h1> 
          
    <div class="booking-form-box">
         <div class="input-grp">
          
         </div>

              
      
   <form action="searchresultsFlight.jsp" method="post">
          <div class="radio-btn">
  
        <input type="radio" class="btn" name="check" checked="checked" disabled/><span
          >Roundtrip</span
        >

        <input type="radio" class="btn" name="check" /><span> One way</span>
        <input type="radio" class="btn" name="check" disabled/><span>
          Multiply-City</span
        >
          </div>
          <input type="submit" class="intser" name="search" value="Search"/>
          
         <div class="booking-form">
        <div class="input-grp">
        <label>Flying From</label>
        <input class="intpt" type="text" name="originCity"placeholder="City" />
        <input class="intpt" type="hidden" name="available" />
        </div>
        <div class="input-grp">
        <label>Flying To</label>
        <input  class="intpt" type="text" name="destinationCity" placeholder="City" />
         <input  class="intpt" type="hidden" name="flightN"  />
         <input  class="intpt" type="hidden" name="flightDuration"  />
        <input  class="intpt" type="hidden" name="destinationDate"  />
        <input  class="intpt" type="hidden" name="destinationTime"  />
        <input  class="intpt" type="hidden" name="originTime"  />
        </div>
           <div class="input-grp">
          <label>Departing</label>
          <input type="date" class="intpt" name="destinationDate" value="date" />
        </div>
        

        <div class="input-grp">
          <label>Passengers</label>
          <input type="number" name="quantity"class="intpt" value="1" />
        </div>

        <div class="input-grp">
          <label>Pets</label>
          <input type="number" name="petsAllowed" class="intpt" value="0" />
        </div>
        </div>
</form>
    </div>
       </nav>
    <div>
      <div class="content">
        <h1>
        Make New Journey</h1>
               <h1 >Memorable</h1>
        
        
        
      </div>
    </div>
    <div class="content2">

      
    </div>
    
    </div> 
</body>
</html>
