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
    <title>Edit order</title>
</head>
<body>
<title>Edit order</title>
<a href="/order">return to order list</a>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<form method="post">
    <fieldset>
        <legend>Order information</legend>
        <label for="id">Id:</label><br>
        <input type="number" id="id" name="id" value="${requestScope["order"].getId()}" disabled><br>
        <label for="customerId">Customer Id:</label><br>
        <input type="text" id="customerId" name="customerId" value="${requestScope["order"].getCustomerId()}"><br>
        <label for="orderNumber">Order number:</label><br>
        <input type="text" id="orderNumber" name="orderNumber" value="${requestScope["order"].getOrderNumber()}"><br><br>
        <input type="submit" value="update order">

    </fieldset>
</form>
</body>
</html>