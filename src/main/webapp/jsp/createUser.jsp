<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 26/11/2020
  Time: 9:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create new user</title>
    <style>
        .message{
            color:green;
        }
    </style>
</head>
<body>
<h1>Create new product</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/users">back to user list</a>
</p>
<form action="/createUser" method="post">
    <fieldset>
        <legend>product info</legend>
        <table>
            <tr>
                <td>Id: </td>
                <td><input type="text" name="id" id="id"></td>
            </tr>
            <tr>
                <td>First name: </td>
                <td><input type="text" name="firstName" id="firstName"></td>
            </tr>
            <tr>
                <td>Last name: </td>
                <td><input type="text" name="lastName" id="lastName"></td>
            </tr>
            <tr>
                <td>Address: </td>
                <td><input type="text" name="address" id="address"></td>
            </tr>
            <tr>
                <td>Email: </td>
                <td><input type="text" name="email" id="email"></td>
            </tr>
            <tr>
                <td>Ship address: </td>
                <td><input type="text" name="shipAddress" id="shipAddress"></td>
            </tr>
            <tr>
                <td>Role: </td>
                <td><input type="text" name="role" id="role"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
</body>
</html>