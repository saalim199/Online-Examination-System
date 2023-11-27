<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>OES | Login</title>
    <style>
      body {
        font-family: Arial, sans-serif;
      }

      #logreg-forms {
        width: 300px;
        margin: 10vh auto;
        background-color: #f3f3f3;
        box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
        transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
      }

      #logreg-forms form {
        width: 100%;
        padding: 15px;
        box-sizing: border-box;
      }

      #logreg-forms input {
        width: 100%;
        box-sizing: border-box;
        margin-bottom: 10px;
        padding: 10px;
        font-size: 16px;
      }

      #logreg-forms input[type="submit"] {
        background-color: #4a4747;
        color: white;
      }

      #logreg-forms hr {
        margin-top: 15px;
        margin-bottom: 15px;
      }

      #logreg-forms h1 {
        font-size: 24px;
        text-align: center;
      }

      #logreg-forms h5 {
        color: red;
        text-align: center;
      }
    </style>
  </head>
  <body>
    <div id="logreg-forms">
      <form class="form-signin" action="login" method="GET">
        <h1 class="h3 mb-3 font-weight-normal">Login</h1>
        <hr />
        <input
          type="text"
          placeholder="Username"
          required=""
          autofocus=""
          name="email"
        />
        <input
          type="password"
          placeholder="Password"
          required=""
          name="pass"
        /><br />
        <input type="submit" value="Login" /><br />
        <a href="register.jsp" id="forgot_pswd">Don't have an account? Sign Up</a><br/>
        <h5>${err}</h5>
        <hr />
      </form>
    </div>
  </body>
</html>
