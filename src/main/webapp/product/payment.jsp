
<html>
<head>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap4.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">

    <%@ page language="java" contentType="text/html; charset=UTF-8"
             pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!------ Include the above in your HEAD tag ---------->
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-xs-8">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <div class="panel-title">
                        <div class="row">
                            <div class="col-xs-4">
                                <h5><span class="glyphicon glyphicon-shopping-cart"></span>CHECKOUT</h5>
                            </div>
                            <div class="col-xs-4">
                                <button type="button" class="btn btn-primary btn-sm btn-block" >
                                    <a href="/products"> Continue shopping </a>
                                </button>
                            </div>
                            <div class="col-xs-4">
                                <button type="button" class="btn btn-primary btn-sm btn-block" >
                                    <a href="cart.jsp"> back to cart </a>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="card number" aria-label="Username" aria-describedby="basic-addon1">
                </div>
                <div class="panel-footer">
                    <div class="row text-center">



                        <div class="col-xs-9">
                            <h4 class="text-right">Total $<strong>
                                <c:set var="Total" value="${0}" />
                                <c:forEach var="product" items="${productCart}">
                                    <c:set var="Total" value="${Total + product.getPrice()}" />
                                </c:forEach>
                                <c:out value = "${Total}"/>
                            </strong></h4>
                        </div>
                        <div class="col-xs-3">
<%--                            <button type="button" class="btn btn-success btn-block" >--%>
<%--                                <a href="/products">Pay</a>--%>
<%--                            </button>--%>
<%--                            <a href="/products?action=processPayment">checkout</a>--%>
                            <form method="post" action="/products">
                                <input type="hidden" name="action" value="processPayment">
                                <button type="submit">Checkout</button>
                            </form>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>


