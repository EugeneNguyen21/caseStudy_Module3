<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="css/bootstrap4.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/style.css">
  <title>Untitled Document</title>
</head>

<body>
<div class="container-fluid bg-dark header-top d-none d-md-block">
  <div class="container">
    <div class="row text-light pt-2 pb-2">
      <div class="col-md-5"><i class="fa fa-envelope-o" aria-hidden="true"></i> patagonia@gmail.com</div>
      <div class="col-md-3">

      </div>
      <div class="col-md-2"><i class="fa fa-user-o" aria-hidden="true"><a href="/Login">login</a></i></div>
      <div class="col-md-2">
        <form method="post" action="product/cart.jsp">
            <button type="submit" style="border: none;background-color: white" ><i class="fa fa-cart-plus" aria-hidden="true"></i> My Cart - $0.00</button>
        </form>
      </div>
    </div>
  </div>
</div>

<div class="container-fluid bg-black">
  <nav class="container navbar navbar-expand-lg navbar-dark bg-black">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Dropdown
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">Action</a>
            <a class="dropdown-item" href="#">Another action</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Something else here</a>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#">Disabled</a>
        </li>
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
      <img class="d-block w-100" src="https://images-na.ssl-images-amazon.com/images/G/01/US-hq/2020/img/Consumer_Electronics/XCM_Manual_1285001_1468347_US_us_ce_showcase_3511409_1500x440_en_US.jpg" alt="First slide">
      <div class="carousel-caption">
        <button class="btn btn-info btn-lg"> <a href="/products">Shop Now.</a> </button>
      </div>
    </div>
    <div class="carousel-item" >
      <img class="d-block w-100"  src="img/Fuji_TallHero_CM_v2_en_US_1x._CB.png" alt="Second slide">
      <div class="carousel-caption">
        <button class="btn btn-info btn-lg">Shop Now.</button>
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

<%--<div class="card-group" style="display: flex; flex-wrap: wrap; margin-left: 75px">--%>
<%--  <div class="container">--%>
<%--    <div class="row">--%>
<%--      <h4>Current Products</h4>--%>
<%--    </div>--%>
<%--    <div class="row">--%>
<%--      <div class="underline"></div>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--  <c:forEach items='${requestScope["products"]}' var="product">--%>
<%--    <div class="p-2 flex-item"><div class="card" style="width: 18rem;min-height: 421px;">--%>
<%--      <img class="card-img-bottom" src="${product.getImage()}" alt="Card image cap">--%>
<%--      <div class="card-body">--%>
<%--        <h5 class="card-title" style="  align-items: flex-end;">${product.getProductName()}: </h5>--%>
<%--        <h5 class="card-title" style="  align-items: flex-end;">$ ${product.getPrice()} </h5>--%>

<%--        <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#${product.getId()}">buy now</button>--%>
<%--        <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#${product.getId()}"><a href="/products?action=edit&id=${product.getId()}">Edit</a></button>--%>
<%--        <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#${product.getId()}"><a href="/products?action=edit&id=${product.getId()}">Remove</a></button>--%>
<%--        <!-- Modal -->--%>
<%--        <div id="${product.getId()}" class="modal fade" >--%>
<%--          <div class="modal-dialog">--%>

<%--            <!-- Modal content-->--%>
<%--            <div class="modal-content">--%>
<%--              <div class="modal-header">--%>
<%--                <h4 class="modal-title">${product.getProductName()}</h4>--%>
<%--              </div>--%>
<%--              <div class="modal-body flex-container">--%>
<%--                <div class="flex-item" style="height: 300px"><img src="${product.getImage()}" alt="Card image cap" style="max-width: 100%;max-height: 100%;"></div>--%>
<%--                <div class="flex-item">--%>
<%--                  <hr>--%>
<%--                  <p>${product.getProductName()}</p>--%>
<%--                  <hr>--%>
<%--                  <p>$ ${product.getPrice()}</p>--%>
<%--                  <form>--%>
<%--                    <button type="submit"><a href="/products?action=addToCart&id=${product.getId()}">add to cart</a></button>--%>
<%--                  </form>--%>
<%--                  <button> buy now </button>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--            </div>--%>

<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div></div>--%>
<%--  </c:forEach>--%>

<%--</div>--%>




<%--<div class="container-fluid bg-light-gray pt-5 pb-5">--%>
<%--  <div class="container">--%>
<%--    <div class="row">--%>
<%--      <h4>FEATURED</h4>--%>
<%--    </div>--%>
<%--    <div class="row">--%>
<%--      <div class="underline"></div>--%>
<%--    </div>--%>
<%--  </div>--%>

<%--  <div class="container mt-5">--%>
<%--    <div class="row">--%>
<%--      <div class="col-md-3">--%>
<%--        <div class="card">--%>
<%--          <img src="img//pexels-photo-220449.jpeg" class="card-img-top" alt="image">--%>
<%--          <div class="card-body">--%>
<%--            <h4>Black Shirt</h4>--%>
<%--            <h6>$67.00</h6>--%>
<%--            <button class="btn btn-danger"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add To Cart</button>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>

<%--      <div class="col-md-3">--%>
<%--        <div class="card">--%>
<%--          <img src="img//pexels-photo-731794.jpeg" class="card-img-top" alt="image">--%>
<%--          <div class="card-body">--%>
<%--            <h4>Black Shirt</h4>--%>
<%--            <h6>$67.00</h6>--%>
<%--            <button class="btn btn-danger"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add To Cart</button>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>

<%--      <div class="col-md-3">--%>
<%--        <div class="card">--%>
<%--          <img src="img//pexels-photo-245931.jpeg" class="card-img-top" alt="image">--%>
<%--          <div class="card-body">--%>
<%--            <h4>Black Shirt</h4>--%>
<%--            <h6>$67.00</h6>--%>
<%--            <button class="btn btn-danger"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add To Cart</button>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>

<%--      <div class="col-md-3">--%>
<%--        <div class="card">--%>
<%--          <img src="img//pexels-photo-220449.jpeg" class="card-img-top" alt="image">--%>
<%--          <div class="card-body">--%>
<%--            <h4>Black Sgirt</h4>--%>
<%--            <h6>$67.00</h6>--%>
<%--            <button class="btn btn-danger"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add To Cart</button>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</div>--%>



<%--<div class="container mt-5">--%>
<%--  <div class="row">--%>
<%--    <h4>FROM THE  BLOG</h4>--%>
<%--  </div>--%>
<%--  <div class="row">--%>
<%--    <div class="underline"></div>--%>
<%--  </div>--%>
<%--</div>--%>

<%--<div class="container pb-5 blog">--%>
<%--  <div class="row">--%>
<%--    <div class="col-md-6">--%>
<%--      <div class="media mt-5">--%>
<%--        <img src="img/b1.jpg" class="img-fluid mr-3" alt="media1">--%>
<%--        <div class="media-body">--%>
<%--          <h5>Jackets For The Soul. What…</h5>--%>
<%--          <p>Lorem ipsum dolor sit amet.</p>--%>
<%--          <p><i class="fa fa-user" aria-hidden="true"></i> admin. Date:12-2-1018</p>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div>--%>

<%--    <div class="col-md-6">--%>
<%--      <div class="media mt-5">--%>
<%--        <img src="img/b2.jpg" class="img-fluid mr-3" alt="media1">--%>
<%--        <div class="media-body">--%>
<%--          <h5>Long Legs? No Longer And…</h5>--%>
<%--          <p>Lorem ipsum dolor sit amet.</p>--%>
<%--          <p><i class="fa fa-user" aria-hidden="true"></i> admin. Date:12-2-1018</p>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </div>--%>


<%--  <div class="row">--%>
<%--    <div class="col-md-6">--%>
<%--      <div class="media mt-5">--%>
<%--        <img src="img/b3.jpg" class="img-fluid mr-3" alt="media1">--%>
<%--        <div class="media-body">--%>
<%--          <h5>Latest Trends For Autumn Are…</h5>--%>
<%--          <p>Lorem ipsum dolor sit amet.</p>--%>
<%--          <p><i class="fa fa-user" aria-hidden="true"></i> admin. Date:12-2-1018</p>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div>--%>

<%--    <div class="col-md-6">--%>
<%--      <div class="media mt-5">--%>
<%--        <img src="img/b4.jpg" class="img-fluid mr-3" alt="media1">--%>
<%--        <div class="media-body">--%>
<%--          <h5>Latest Trends For Autumn Are…</h5>--%>
<%--          <p>Lorem ipsum dolor sit amet.</p>--%>
<%--          <p><i class="fa fa-user" aria-hidden="true"></i> admin. Date:12-2-1018</p>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</div>--%>


<%--<div class="container-fluid pt-5 pb-5 bg-light-gray">--%>
<%--  <div class="container">--%>
<%--    <div class="row">--%>
<%--      <h4>TREANDS</h4>--%>
<%--    </div>--%>
<%--    <div class="row">--%>
<%--      <div class="underline-blue"></div>--%>
<%--    </div>--%>
<%--  </div>--%>

<%--  <div class="container mt-5">--%>
<%--    <div class="row">--%>
<%--      <div class="col-md-3">--%>
<%--        <div class="card">--%>
<%--          <img src="img/pexels-photo-247206.jpeg" class="card-img-top" alt="image">--%>
<%--          <div class="card-body">--%>
<%--            <h4>Denim Shirt</h4>--%>
<%--            <h6>$67.00</h6>--%>
<%--            <button class="btn btn-danger"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add To Cart</button>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>

<%--      <div class="col-md-3">--%>
<%--        <div class="card">--%>
<%--          <img src="img/pexels-photo-206454.jpeg" class="card-img-top" alt="image">--%>
<%--          <div class="card-body">--%>
<%--            <h4>Denim Shirt</h4>--%>
<%--            <h6>$67.00</h6>--%>
<%--            <button class="btn btn-danger"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add To Cart</button>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>


<%--      <div class="col-md-3">--%>
<%--        <div class="card">--%>
<%--          <img src="img/pexels-photo-247206.jpeg" class="card-img-top" alt="image">--%>
<%--          <div class="card-body">--%>
<%--            <h4>Denim Shirt</h4>--%>
<%--            <h6>$67.00</h6>--%>
<%--            <button class="btn btn-danger"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add To Cart</button>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>


<%--      <div class="col-md-3">--%>
<%--        <div class="card">--%>
<%--          <img src="img/pexels-photo-245931.jpeg" class="card-img-top" alt="image">--%>
<%--          <div class="card-body">--%>
<%--            <h4>Denim Shirt</h4>--%>
<%--            <h6>$67.00</h6>--%>
<%--            <button class="btn btn-danger"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add To Cart</button>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</div>--%>





<footer>
  <div class="container-fluid pt-5 bg-dark text-light">
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <div class="row">
            <h5>Meta</h5>
          </div>
          <div class="row mb-4">
            <div class="underline bg-light" style="width: 50px"></div>
          </div>
          <p><i class="fa fa-chevron-right" aria-hidden="true"></i> Register</p>
          <p><i class="fa fa-chevron-right" aria-hidden="true"></i> Log In</p>
          <p><i class="fa fa-chevron-right" aria-hidden="true"></i> Enter RSS</p>
          <p><i class="fa fa-chevron-right" aria-hidden="true"></i> Comments</p>
          <p><i class="fa fa-chevron-right" aria-hidden="true"></i> Webseotips</p>
        </div>


        <div class="col-md-3">
          <div class="row">
            <h5>Recent Posts</h5>
          </div>
          <div class="row mb-4">
            <div class="underline bg-light" style="width: 50px"></div>
          </div>
          <div class="row">
            <div class="media">
              <img src="img/b1.jpg" class="img-fluid" alt="media-image">
              <div class="media-body ml-2">
                <h6>ackets For The Soul. What Color Is Yours?</h6>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="media">
              <img src="img/b2.jpg" class="img-fluid" alt="media-image">
              <div class="media-body ml-2">
                <h6>Best Fabrics For Your Dream Dress!</h6>
              </div>
            </div>
          </div>
        </div>


        <div class="col-md-3">
          <div class="row">
            <h5>About</h5>
          </div>
          <div class="row mb-4">
            <div class="underline bg-light" style="width: 50px"></div>
          </div>
          <div class="row">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel inventore quis harum mollitia ex esse obcaecati deserunt alias fuga quia.<br>Vel inventore quis harum mollitia.</p>
          </div>
        </div>

        <div class="col-md-3">
          <div class="row">
            <h5>Tags</h5>
          </div>
          <div class="row mb-4">
            <div class="underline bg-light" style="width: 50px"></div>
          </div>
          <button class="btn btn-outline-light">autunm</button> <button class="btn btn-outline-light">Dress</button> <button class="btn btn-outline-light">ladice</button> <button class="btn btn-outline-light">black dressunm</button> <button class="btn btn-outline-light">modern dress</button>
        </div>
      </div>
    </div>
  </div>
</footer>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js" integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4" crossorigin="anonymous"></script>
</body>
</html>
