<%--
  Created by IntelliJ IDEA.
  User: ad
  Date: 12/3/2020
  Time: 8:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete order</title>
</head>
<body>
<form  method="post">
    <fieldset>
        <legend>Are you sure you want to delete</legend>
        <label for="id">Id:</label><br>
        <input type="number" id="id" name="id" value="${requestScope["order"].getId()}" disabled><br>
        <label for="customerId">Customer Id:</label><br>
        <input type="number" id="customerId" name="customerId" value="${requestScope["order"].getCustomerId()}"><br>
        <label for="orderNumber">Order number:</label><br>
        <input type="number" id="orderNumber" name="orderNumber" value="${requestScope["order"].getOrderNumber()}"><br><br>
        <input type="submit" value="delete order">

    </fieldset>
</form>

</body>
</html>
