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
    <title>List order details</title>
</head>
<body>
<form action="/createOrderDetails">
    <table id="table_orderDetails">
        <h1>Order details list:</h1>
        <tr>
            <td><a href="/jsp/createOrderDetails.jsp">Create order details</a></td>
        </tr>
        <tr>
            <th>Id</th>
            <th>Order Id</th>
            <th>Product Id</th>
            <th>Order number</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Ship address</th>
            <th>ACTIONS!!!</th>
        </tr>
        <c:forEach items="${orderDetails}" var="orderDetails" >
            <tr>
                <td>${orderDetails.getId()}</td>
                <td>${orderDetails.getOrderId()}</td>
                <td>${orderDetails.getProductId()}</td>
                <td>${orderDetails.getOrderNumber()}</td>
                <td>${orderDetails.getPrice()}</td>
                <td>${orderDetails.getQuantity()}</td>
                <td>${orderDetails.getShipAddress()}</td>
                <td>
                    <a href="/deleteOrder?id=${orderDetails.getId()}">Delete</a>
                    <a href="/editOrder?id=${orderDetails.getId()}">Edit</a>

                </td>
            </tr>
        </c:forEach>
    </table>
</form>

</body>
</html>
