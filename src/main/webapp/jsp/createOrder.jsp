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
<h1>Create new order</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/order">back to order list</a>
</p>
<form action="/createOrder" method="post">
    <fieldset>
        <legend>Create order</legend>
        <table>
            <tr>
                <td>Id: </td>
                <td><input type="number" name="id" id="id"></td>
            </tr>
            <tr>
                <td>Customer id </td>
                <td><input type="number" name="customerId" id="customerId"></td>
            </tr>
            <tr>
                <td>Order number </td>
                <td><input type="number" name="orderNumber" id="orderNumber"></td>
            </tr>
                <td></td>
                <td><input type="submit" value="Create order"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
</body>
</html>