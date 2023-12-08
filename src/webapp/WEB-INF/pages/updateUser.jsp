<%--
  Created by IntelliJ IDEA.
  User: batul
  Date: 08.12.2023
  Time: 18:11
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update User</title>
</head>
<body>
<h1>Update User Information</h1>
<br>
<form:form action="updateUser" modelAttribute="user" method="post">
    <form:hidden path="id" />
    Name: <form:input path="name" required="true"/>
    <br><br>
    Surname: <form:input path="lastname" required="true"/>
    <br><br>
    Age: <form:input path="age" required="true"/>
    <input type="submit" value="Update">
</form:form>
</body>
</html>