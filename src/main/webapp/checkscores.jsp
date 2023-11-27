
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>OES | Check Marks</title>

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
.center {
  margin-left: auto;
  margin-right: auto;
  border-collapse: collapse;
}
table {
  width: 55%;
}
table th,td{
    text-align: center;
}
    </style>

    </head>
    <body style="margin: 0px;">
    <header>
        <!-- Navigation Bar -->
        <nav>
          <div class="navbar">
            <a href="#"><b>ONLINE EXAMINATION SYSTEM</b></a>
            <div class="nav-links">
              <a href="adminhome.jsp">Home</a>
              <a href="viewexam.jsp">View Exam</a>
              <a href="checkscores.jsp">Check Marks</a>
              <a href="logout">Logout</a>
            </div>
          </div>
        </nav>
      </header><br/>
        <h1 style="text-align: center; margin-top: 100px">Student Marks</h1><br/>
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/ejproj" user="root" password="8808726160"/>
        <sql:query dataSource="${db}" var="res">
            select * from login;
        </sql:query>
        <table border="1" class="center">
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Email</th>
                <th>Marks</th>
            </tr>
            <c:forEach var="tbl" items="${res.rows}">
                <tr>
                    <td><c:out value="${tbl.id}"/></td>
                    <td><c:out value="${tbl.username}"/></td>
                    <td><c:out value="${tbl.email}"/></td>
                    <td><c:out value="${tbl.marks}"/></td>
                </tr>
            </c:forEach>
        </table>
        
    </body>
</html>
