<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 26/11/2020
  Time: 8:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <title>Edit order details</title>
</head>
<body>
<%@include file="/jsp/header.jsp" %>
<div class="container" style="background-color: lavenderblush">
    <div id="form" style="height: 800px;align-content: center">
    <h1 style="text-align: center">Edit order details</h1>
    <a style="text-align: center" href="/orderDetails">return to order details list</a>
    <p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
    </p>
    <form action="/editOrderDetails" method="post">
        <legend>Order details information</legend>
        <label for="id">Id:</label><br>
        <input type="number" id="id" name="id" value="${requestScope["orderDetails"].getId()}" hidden><br>
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

    </form>
    </div>
</div>
<%@include file="/jsp/footer.jsp" %>

</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>

</html>