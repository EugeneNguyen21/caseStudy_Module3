<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 26/11/2020
  Time: 8:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit user</title>
</head>
<body>
<title>Edit user</title>
<a href="/users">return to user list</a>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<form  method="post">
    <fieldset>
        <legend>user information</legend>
        <label for="id">Id:</label><br>
        <input type="number" id="id" name="id" value="${requestScope["user"].getId()}" disabled><br>
        <label for="firstName">First Name:</label><br>
        <input type="text" id="firstName" name="firstName" value="${requestScope["user"].getFirstName()}"><br>
        <label for="lastName">Last Name:</label><br>
        <input type="text" id="lastName" name="lastName" value="${requestScope["user"].getLastName()}"><br><br>
        <label for="address">Address:</label><br>
        <input type="text" id="address" name="address" value="${requestScope["user"].getAddress()}"><br><br>
        <label for="email">Email:</label><br>
        <input type="text" id="email" name="email" value="${requestScope["user"].getEmail()}"><br><br>
        <label for="shipAddress">Ship Address:</label><br>
        <input type="text" id="shipAddress" name="shipAddress" value="${requestScope["user"].getShipAddress()}"><br><br>
        <label for="role">Role:</label><br>
        <input type="number" id="role" name="role" value="${requestScope["user"].getRole()}"><br>
        <input type="submit" value="update user">

    </fieldset>
</form>
</body>
</html>