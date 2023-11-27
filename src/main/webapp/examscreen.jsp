<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>OES | About Us</title>
    <style>
      body {
        margin: 0;
        font-family: Arial, sans-serif;
      }

      .navbar {
        background-color: #343a40;
        padding-top: 15px;
        padding-bottom: 15px;
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
    <form action="exam.jsp" method="POST">
      <header>
        <!-- Navigation Bar -->
        <nav>
          <div class="navbar">
            <a href="#"><b>ONLINE EXAMINATION SYSTEM</b></a>
            <div class="nav-links">
              <a href="examscreen.jsp">Home</a>
              <a href="logout">Logout</a>
            </div>
          </div>
        </nav>
      </header>
      <div class="jumbotron">
        <div class="container">
          <h1 class="display-4">Welcome ${name}</h1>
          <p>
            Welcome to OES!, an online examination system for colleges and
            universities to conduct their exams.
          </p>
          <p>Please Select the Exam You Would like to take:</p>
          <p>
            <select name="selectedexam">
              <option name="py" value="Python">Python</option>
              <option name="ej" value="Django">Django</option>
            </select>
          </p>
          <input type="submit" value="Start Exam" /><br /><br />
        </div>
      </div>

      <div class="container2">
        <div class="row">
          <div class="col-md-4">
            <h2>User</h2>
            <p>
              OES provides institutions with an admin account to generate
              assessments and check student marks.
            </p>
          </div>
          <div class="col-md-4">
            <h2>How does it Work?</h2>
            <p>
              OES makes use of JSP, servlets, JSTL, expression language, and a
              MySQL database to provide its examination services.
            </p>
          </div>
          <div class="col-md-4">
            <h2>Terms & Conditions</h2>
            <p>
              If your organization has any concerns regarding the system please
              click below to read our Terms and Conditions.
            </p>
          </div>
        </div>
        <hr />
      </div>

      <footer class="container">
        <p>&copy; All Rights Reserved</p>
      </footer>
    </form>
  </body>
</html>
