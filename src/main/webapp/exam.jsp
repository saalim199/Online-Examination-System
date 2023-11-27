<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>OES | Home</title>
     <style>
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
    </style>
</head>
        
    <c:set var="selectedexam" value="${param.selectedexam}" scope="session" />
    <body style="margin: 0px">
         <header>
        <!-- Navigation Bar -->
        <nav>
          <div class="navbar">
            <a href="#"><b>ONLINE EXAMINATION SYSTEM</b></a>
            <div class="nav-links">
              <b><span id="timer" style="color:white;"></span></b>
            </div>
          </div>
        </nav>
      </header><br/>
    <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/ejproj" user="root" password="8808726160"></sql:setDataSource>
        <sql:query var="mcq">
            select * from ${selectedexam};
        </sql:query>
           
        <br/><br/><br/>    
        <form action="evaluate" method="POST">
            <center><h1>${selectedexam} Examination</h1></center> 
            <c:set var="questioncnt" value="0" />
            <c:forEach var="mcqexam" items="${mcq.rows}" >
                    <c:set var="questioncnt" value="${questioncnt+1}" scope="page" />
                    <ol id="${questioncnt}">

                        <h3><span>Q<c:out value="${questioncnt}"></c:out>.&nbsp;</span><c:out value="${mcqexam.question}"></c:out></h3>
                        <input type="radio" name="${mcqexam.qno}" value="${mcqexam.a1}" required="">&nbsp;<c:out value="${mcqexam.a1}"></c:out><br>
                        <input type="radio" name="${mcqexam.qno}"value="${mcqexam.a2}" required="">&nbsp;<c:out value="${mcqexam.a2}"></c:out><br>
                        <input type="radio" name="${mcqexam.qno}" value="${mcqexam.a3}" required="">&nbsp;<c:out value="${mcqexam.a3}"></c:out><br>
                        <input type="radio" name="${mcqexam.qno}" value="${mcqexam.a4}" required="">&nbsp;<c:out value="${mcqexam.a4}"></c:out>

                        <br>
                        </ol>
                        <br>

                </c:forEach>
            <center> 
            <button>Submit Exam</button>
            </center>
            <br><br>
        </form>
    </body>
    <script type="text/javascript">
        var count = 100;

        function countDown(){
            var timer = document.getElementById("timer");
            if(count > 0){
                count--;
                timer.innerHTML = "Examinations ends in: "+count;
                setTimeout("countDown()", 1000)
            }else{
                window.location.href = "logout";
            }
        }
        countDown();
    </script>
</html>

