<%--
  Created by IntelliJ IDEA.
  User: ad
  Date: 11/30/2020
  Time: 5:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>List user</title>
</head>
<body>

    <form action="/createUser">
    <table id="table_users">
        <h1>User list:</h1>
        <tr>
             <td><a href="/jsp/createUser.jsp">Create user</a></td>
        </tr>
        <tr>
            <th>Id</th>
            <th>First name</th>
            <th>Last name</th>
            <th>Address</th>
            <th>Email</th>
            <th>Ship address</th>
            <th>Role</th>
            <th>ACTIONS!!!</th>
        </tr>
        <c:forEach items="${users}" var="user" >
        <tr>
            <td>${user.getId()}</td>
            <td>${user.getFirstName()}</td>
            <td>${user.getLastName()}</td>
            <td>${user.getAddress()}</td>
            <td>${user.getEmail()}</td>
            <td>${user.getShipAddress()}</td>
            <td>${user.getRole()}</td>
            <td>
                <a href="/deleteUser?id=${user.getId()}">Delete</a>
                <a href="/editUser?id=${user.getId()}">Edit</a>

            </td>
        </tr>
    </c:forEach>
    </table>
    </form>

</body>
</html>
