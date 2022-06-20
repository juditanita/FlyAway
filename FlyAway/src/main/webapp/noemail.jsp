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
  <body>
   
    <div class="fpassword-box">
        <h3>Forget Password?</h3>
        <div class="email-noexist">
        
      <h6>This email address does not exist!</h6>
    </div>
      <form action="" method="post">
        <label
          >Enter your email
        </label>
        <input type="text" name="email" id="" placeholder="....@..." />

        <a href="codeverofication.jsp"><input class="button" type="submit" value="Continue" /></a>
      </form>
    </div>
    <p>Have no account yet? <a href="signup.jsp">Sign up</a></p>
  </body>
</html>
