<%--
  Created by IntelliJ IDEA.
  User: batul
  Date: 06.12.2023
  Time: 18:17
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User</title>
</head>
<body>
<h1>Users Info</h1>
<br>
<form:form action="saveUser" modelAttribute="users">

    <form:hidden path="id"/>
    Name<form:input path="name" required="required"/>
    <br><br>
    Surname<form:input path="lastname" required="required"/>
    <br><br>
    age<form:input path="age" type="number" min="1" max="100"/>
    <br><br>
    <input type="submit" value="OK">

</form:form>

</body>
</html>