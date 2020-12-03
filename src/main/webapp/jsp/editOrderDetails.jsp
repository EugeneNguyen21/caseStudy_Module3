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
    <title>Edit order details</title>
</head>
<body>
<title>Edit order details</title>
<a href="/orderDetails">return to order details list</a>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<form  method="post">
    <fieldset>
        <legend>Order details information</legend>
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
        <input type="submit" value="update order details">

    </fieldset>
</form>
</body>
</html>