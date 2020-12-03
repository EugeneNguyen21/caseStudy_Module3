<%--
  Created by IntelliJ IDEA.
  User: ad
  Date: 12/2/2020
  Time: 11:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>List Order</title>
</head>
<body>
<form action="/createOrder">
    <table id="table_users">
        <h1>Order list:</h1>
        <tr>
            <td><a href="/jsp/createOrder.jsp">Create order</a></td>
        </tr>
        <tr>
            <th>Id</th>
            <th>Customer Id</th>
            <th>Order number</th>
            <th>ACTIONS!!!</th>
        </tr>
        <c:forEach items="${orders}" var="order" >
            <tr>
                <td>${order.getId()}</td>
                <td>${order.getCustomerId()}</td>
                <td>${order.getOrderNumber()}</td>
                <td>
                    <a href="/deleteOrder?id=${order.getId()}">Delete</a>
                    <a href="/editOrder?id=${order.getId()}">Edit</a>

                </td>
            </tr>
        </c:forEach>
    </table>
</form>

</body>
</html>
