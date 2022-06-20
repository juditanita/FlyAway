<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="stylesheet" href="payment.css" />
    <title>Payment</title>
  </head>
  <body>
    <div class="app-container">
      <div class="top-box">
        <p>
          <span class="left-icon"><a href="price.jsp">&#x2190;</a></span>CHECKOUT<span
            class="right-icon"
            >&#xb7;&#xb7;&#xb7;</span
          >
        </p>
      </div>
      <div class="middle-box">
        <h1>price<span>€</span></h1>
        <p>Ticket Price</p>
      </div>
      <div class="buttom-box">
        <button type="button" class="payment-option-btn">
          Pay with Revolut
        </button>
        <button type="button" class="payment-option-btn">
          Pay with Banking
        </button>
        <div class="card-details">
          <p>Pay by credit card</p>
          <div class="card-number-details-field-group">
            <label>Card Numbers</label>
            <input
              class="card-number-field"
              type="text"
              name="card_N"
              placeholder="xxx-xxx-xxx-xxxx"
            />
            <br />
            <label>Card Holder Name</label>
            <input
              class="card-number-field"
              type="text"
              name="name"
              placeholder="Full name"
            />
            <br />
          </div>
   
            <label>Exp date</label>
            <input
              class="date-field-group"
              type="date"
              name="expire_d"
              placeholder=""
            />
            <br />
            <div class="cvc-field-group">
            <label>CVC</label>
            <input class="cvc-field" type="text" name="cvc" placeholder="xxx" />
            <br />
             </div>
            
            <input class="pay-btn" value="Pay Now" />
          </div>
    </div>
        </div>
      
    
  </body>
</html>
