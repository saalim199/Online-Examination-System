<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>OES | About Us</title>
    <link rel="stylesheet" type="text/css" href="static/css/aboutus.css" />

    <style>
      body {
        margin: 0;
        font-family: Arial, sans-serif;
      }

      .navbar {
        background-color: #343a40;
        padding: 15px;
        color: #ffffff;
        display: flex;
        justify-content: space-between;
        position: fixed;
        width: 100%;
        z-index: 1000;
      }

      .navbar a {
        text-decoration: none;
        color: #ffffff;
      }

      .nav-links a {
        color: #ffffff;
        text-decoration: none;
        margin: 0 15px;
      }

      .dropdown {
        position: relative;
        display: inline-block;
      }

      .dropdown-content {
        display: none;
        position: absolute;
        background-color: #343a40;
        box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
        z-index: 1;
      }

      .dropdown-content a {
        color: #ffffff;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
      }

      .dropdown:hover .dropdown-content {
        display: block;
      }

      .jumbotron {
        display: flex;
        justify-content: center;
        background-color: #f8f9fa;
        padding-left: 200px;
        padding-right: 200px;
        padding-top: 30px;
        padding-bottom: 30px;
        margin-bottom: 0;
      }

      .container {
        margin-top: 2rem;
      }
      .row {
        display: flex;
        justify-content: space-between;
        padding-left: 200px;
        padding-right: 200px;
        padding-top: 30px;
        padding-bottom: 30px;
      }

      .btn-primary,
      .btn-secondary {
        background-color: #007bff;
        color: #ffffff;
        border: none;
        text-decoration: none;
        padding: 10px 20px;
        display: inline-block;
        margin-top: 10px;
      }

      .btn-primary:hover,
      .btn-secondary:hover {
        background-color: #0056b3;
      }

      .btn-secondary {
        margin-top: 1rem;
      }

      hr {
        border-top: 1px solid #000;
      }

      footer {
        background-color: #f8f9fa;
        padding: 2rem 0;
        text-align: center;
      }
    </style>
  </head>
  <body>
    <header>
      <!-- Navigation Bar -->
      <nav>
        <div class="navbar">
          <a href="#"><b>ONLINE EXAMINATION SYSTEM</b></a>
          <div class="nav-links">
            <a href="index.jsp">Home</a>
            <a href="aboutus.jsp">About</a>
            <div class="dropdown">
              <a href="#">Login</a>
              <div class="dropdown-content">
                <a href="login.jsp">Student</a>
                <a href="adminlogin.jsp">Admin</a>
              </div>
            </div>
            <a href="register.jsp">Sign Up</a>
          </div>
        </div>
      </nav>
    </header>
    <div class="jumbotron">
      <div class="container">
        <h1 class="display-4">About OES</h1>
        <p>
          Welcome to OES!, An Online Examination System for Colleges and
          Universities to schedule their exams. If your organization faces any
          challenges while conducting the exams or your organization has any
          concerns regarding the system please contact us.
        </p>
        <a class="btn btn-primary btn-lg" href="/help" role="button"
          >Help &raquo;</a
        >
      </div>
    </div>

    <div class="container2">
      <div class="row">
        <div class="col-md-4">
          <h2>Admin</h2>
          <p>
            OES provides institutions with an admin account to generate
            assessments and check student marks.
          </p>
          <a class="btn btn-secondary" href="login.jsp" role="button"
            >Login &raquo;</a
          >
        </div>
        <div class="col-md-4">
          <h2>How does it Work?</h2>
          <p>
            OES makes use of JSP, servlets, JSTL, expression language, and a
            MySQL database to provide its examination services.
          </p>
          <a class="btn btn-secondary" href="login.jsp" role="button"
            >Get Started &raquo;</a
          >
        </div>
        <div class="col-md-4">
          <h2>Terms and Conditions</h2>
          <p>
            If your organization has any concerns regarding the system please
            click below to read our Terms and Conditions.
          </p>
          <a class="btn btn-secondary" href="/terms" role="button"
            >Terms and Conditions &raquo;</a
          >
        </div>
      </div>
      <hr />
    </div>

    <footer class="container">
      <p>&copy; All Rights Reserved</p>
    </footer>
  </body>
</html>
