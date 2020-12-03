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
    <title>create new product</title>
    <style>
        .message{
            color:green;
        }
    </style>
</head>
<body>
<h1>Create new order details</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/orderDetails">back to order details list</a>
</p>
<form action="/createOrderDetails" method="post">
    <fieldset>
        <legend>Create order details</legend>
        <table>
            <tr>
                <td>Id: </td>
                <td><input type="number" name="id" id="id"></td>
            </tr>
            <tr>
                <td>Order id: </td>
                <td><input type="number" name="orderId" id="orderId"></td>
            </tr>
            <tr>
                <td>Product id: </td>
                <td><input type="number" name="productId" id="productId"></td>
            </tr>
            <tr>
                <td>Order number: </td>
                <td><input type="number" name="orderNumber" id="orderNumber"></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><input type="number" name="price" id="price"></td>
            </tr>
            <tr>
                <td>Quantity </td>
                <td><input type="number" name="quantity" id="quantity"></td>
            </tr>
            <tr>
                <td>Ship address: </td>
                <td><input type="text" name="shipAddress" id="shipAddress"></td>
            </tr>

            <td></td>
            <td><input type="submit" value="Create order details"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
</body>
</html>