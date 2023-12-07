<%--
  Created by IntelliJ IDEA.
  User: batul
  Date: 03.12.2023
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Users</title>
</head>
<body>
<h1>Users List</h1>
<table>
    <tr>
        <th style="text-align: left;">Name</th>
        <th>Surname</th>
        <th>Age</th>
        <th>Operation</th>
    </tr>
    <c:forEach var="user" items="${users}">
        <c:url var="updateBut" value="/updateInfo">
            <c:param name="userID" value="${user.id}"/>
        </c:url>
        <c:url var="deleteBut" value="/deleteUser">
            <c:param name="userID" value="${user.id}"/>
        </c:url>
        <tr>
            <td><c:out value="${user.name}" /></td>
            <td><c:out value="${user.lastname}" /></td>
            <td><c:out value="${user.age}" /></td>
            <td>
                <input type="button" value="Update" onclick="window.location.href='${updateBut}'"/>
                <input type="button" value="Delete" onclick="window.location.href='${deleteBut}'"/>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<input type="button" value="Add" onclick="window.location.href = 'addUser'" />
</body>
</html>