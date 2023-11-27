<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>OES | View Exam</title>

    <style>
        body {
    padding-top: 3.5rem;
}

.center {
  margin-left: auto;
  margin-right: auto;
}
table {
  width: 95%;
  border-collapse: collapse;
}
    </style>

    </head>
    <body>
        <h1 style="text-align: center;">${examsubject} Exam Set</h1><br/>
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/ejproj" user="root" password="8808726160"/>
        <sql:query dataSource="${db}" var="res">
            SELECT * FROM ${examsubject};
        </sql:query>
        <table border="1" class="center">
            <tr>
                <th>Question_ID</th>
                <th>Question Number</th>
                <th>Question</th>
                <th>Choice 1</th>
                <th>Choice 2</th>
                <th>Choice 3</th>
                <th>Choice 4</th>
                <th>Answer</th>
            </tr>
            <c:forEach var="tbl" items="${res.rows}">
                <tr>
                    <td><c:out value="${tbl.id}"/></td>
                    <td><c:out value="${tbl.qno}"/></td>
                    <td><c:out value="${tbl.question}"/></td>
                    <td><c:out value="${tbl.a1}"/></td>
                    <td><c:out value="${tbl.a2}"/></td>
                    <td><c:out value="${tbl.a3}"/></td>
                    <td><c:out value="${tbl.a4}"/></td>
                    <td><c:out value="${tbl.ans}"/></td>
                </tr>
            </c:forEach>
        </table>
        
    </body>
</html>
