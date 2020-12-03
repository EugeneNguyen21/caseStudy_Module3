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
    <title>Delete order details</title>
</head>
<body>
<form  method="post">
    <fieldset>
        <legend>Are you sure you want to delete</legend>
        <label for="id">Id:</label><br>
        <input type="number" id="id" name="id" value="${requestScope["orderDetails"].getId()}" disabled><br>
        <label for="orderId">Order id:</label><br>
        <input type="number" id="orderId" name="orderId" value="${requestScope["orderDetails"].getOrderId()}"><br>
        <label for="productId">Product id:</label><br>
        <input type="text" id="productId" name="productId" value="${requestScope["orderDetails"].getProductId()}"><br>
        <label for="orderNumber">Order number:</label><br>
        <input type="text" id="orderNumber" name="orderNumber" value="${requestScope["orderDetails"].getOrderNumber()}"><br>
        <label for="price">Price:</label><br>
        <input type="number" id="price" name="price" value="${requestScope["orderDetails"].getPrice()}"><br>
        <label for="quantity">Quantity</label><br>
        <input type="text" id="quantity" name="quantity" value="${requestScope["orderDetails"].getQuantity()}"><br>
        <label for="shipAddress">Ship address:</label><br>
        <input type="text" id="shipAddress" name="shipAddress" value="${requestScope["orderDetails"].getShipAddress}"><br><br>
        <input type="submit" value="Delete order details">


    </fieldset>
</form>

</body>
</html>
