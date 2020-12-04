<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <title>Shop</title>
</head>

<body>
<div class="container-fluid bg-dark header-top d-none d-md-block">
    <div class="container">
        <div class="row text-light pt-2 pb-2">
            <div class="col-md-5"><i class="fa fa-envelope-o" aria-hidden="true"></i> patagonia@gmail.com</div>
            <div class="col-md-3">

            </div>
            <div class="col-md-2"><a href="/logout"> <i class="fa fa-user-o" aria-hidden="true"></i> Logout </a></div>
            <div class="col-md-2">
                <form method="post" action="product/cart.jsp">
                    <button type="submit" style="border: none;background-color: white"><i class="fa fa-cart-plus"  aria-hidden="true"></i> My
                        Cart
                    </button>
                </form>
            </div>
            <div>
                <a class="navbar-brand" href="#">Category</a>
            </div>
            <div>
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </div>
            <li class="nav-item">
                <a class="nav-link" href="/products?action=create">create</a>
            </li>

        </div>
    </div>
</div>

<div class="container-fluid bg-black">
    <nav class="navbar navbar-expand-lg navbar-dark bg-black">
        <a class="navbar-brand" href="#">Home</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Contact us <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/products?action=create">create product</a>
                </li>
<%--                <li class="nav-item dropdown">--%>
<%--                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"--%>
<%--                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
<%--                        Dropdown--%>
<%--                    </a>--%>
<%--                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
<%--                        <a class="dropdown-item" href="#">Action</a>--%>
<%--                        <a class="dropdown-item" href="#">Another action</a>--%>
<%--                        <div class="dropdown-divider"></div>--%>
<%--                        <a class="dropdown-item" href="#">Something else here</a>--%>
<%--                    </div>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link disabled" href="#">Disabled</a>--%>
<%--                </li>--%>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>
</div>


<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="d-block w-100"
                 src="https://images-na.ssl-images-amazon.com/images/G/01/US-hq/2020/img/Consumer_Electronics/XCM_Manual_1285001_1468347_US_us_ce_showcase_3511409_1500x440_en_US.jpg"
                 alt="First slide">
            <div class="carousel-caption">
                <a class="btn" href="/products" style="text-decoration-color: black">Shop Now.</a> </button>
            </div>
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="img/Fuji_TallHero_CM_v2_en_US_1x._CB.png" alt="Second slide">
            <div class="carousel-caption">
                <a class="btn" href="/products">Shop Now.</a> </button>
            </div>
        </div>

    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<div style="height: 100px; margin: 20px; text-align: center">
    <h1 style="color: black; background-color: lightgoldenrodyellow">Christmas Deals 98% OFF EVERYTHING</h1>
</div>


<div class="card-group" style="display: flex; flex-wrap: wrap; margin-left: 75px">
    <div class="container">
        <div class="row">
            <h4>Current Products</h4>
        </div>
        <div class="row">
            <div class="underline"></div>
        </div>
    </div>
    <c:forEach items='${requestScope["products"]}' var="product">
        <div class="p-2 flex-item">
            <div class="card" style="width: 18rem;min-height: 421px;">
                <img class="card-img-bottom" src="${product.getImage()}" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title" style="  align-items: flex-end;">${product.getProductName()}: </h5>
                    <h5 class="card-title" style="  align-items: flex-end;">$ ${product.getPrice()} </h5>

                    <button type="button" class="btn btn-info btn-sm" data-toggle="modal"
                            data-target="#${product.getId()}a">buy now
                    </button>
                    <button type="button" class="btn btn-info btn-sm"><a
                            href="/products?action=edit&id=${product.getId()}">Edit</a></button>
                    <button type="button" class="btn btn-info btn-sm"><a href="/products?action=remove&id=${product.getId()}">Remove</a>
                    </button>
                </div>
            </div>
        </div>

    </c:forEach>
    <c:forEach items='${requestScope["products"]}' var="product">
        <!-- Modal -->
        <div class="modal fade" id="${product.getId()}a">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">${product.getProductName()}</h4>
                    </div>
                    <div class="modal-body flex-container">
                        <div class="flex-item" style="height: 300px"><img src="${product.getImage()}"
                                                                          alt="Card image cap"
                                                                          style="max-width: 100%;max-height: 100%;">
                        </div>
                    </div>
                    <hr>
                    <div class="p-2"><p>${product.getProductName()}</p>
                    </div>
                    <hr>
                    <div>
                        <div class="d-flex flex-row justify-content-center">
                            <div class="p-2"><p>$ ${product.getPrice()}</p>
                            </div>

                        </div>
                        <hr>
                            <%--                                    <div class="col-xs-4">--%>
                            <%--                                        <input type="text" class="form-control input-sm" name="quantity" value="1">--%>
                            <%--                                    </div>--%>
                        <a class="btn" href="/products?action=addToCart&id=${product.getId()}">add to
                            cart</a>
                        <div>
                            <button> buy now</button>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </c:forEach>
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Modal Header</h4>
                </div>
                <div class="modal-body">
                    <p>Some text in the modal.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>
</div>


<footer>
</footer>

</body>
</html>
