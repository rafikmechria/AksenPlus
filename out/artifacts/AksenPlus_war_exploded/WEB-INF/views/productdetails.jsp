<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ include file="template/header.jsp"%>
<link href="<c:url value="/resources/css/productdetails.css"/>" rel="stylesheet">
<script src="<c:url value="/resources/js/controller.js"/>" ></script>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Details</h1>
        </div>

        <div class="container-fluid">
            <div class="content-wrapper">
                <div class="item-container">
                    <div class="container">
                        <div class="col-md-8">
                            <div class="product col-md-8 service-image-left">

                                <center>
                                    <img id="item-display" src="https://www.asus.com/media/global/products/Z3KNfe885nkuPZdu/P_500.jpg" alt=""></img>
                                </center>
                            </div>

                            <div class="container service1-items col-sm-2 col-md-2 pull-left">
                                <center>
                                    <a id="item-1" class="service1-item">
                                        <img src="https://www.asus.com/websites/global/products/Z3KNfe885nkuPZdu/x75_ov1.jpg" alt=""></img>
                                    </a>
                                    <a id="item-2" class="service1-item">
                                        <img src="https://www.asus.com/websites/global/products/rwWGMgchdQK8LTDQ/x75_ov1.jpg" alt=""></img>
                                    </a>
                                    <a id="item-3" class="service1-item">
                                        <img src="https://www.asus.com/websites/global/products/rwWGMgchdQK8LTDQ/x75_ov1a.jpg" alt=""></img>
                                    </a>
                                </center>
                            </div>
                        </div>

                        <div class="col-md-4" ng-app="cartApp">
                            <div class="product-title">${product.productName}</div>
                            <div class="product-desc">${product.productDescription}</div>
                            <div class="product-rating"><i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star-o"></i> </div>
                            <hr>
                            <div class="product-price">${product.productPrice}</div>
                            <div class="product-stock">In Stock</div>
                            <hr>
                            <div class="btn-group cart" ng-controller="cartCtrl">

                                <button type="button" class="btn btn-success " ng-click="addToCart('${product.productId}')">
                                    <a class="btn btn-warning btn-large" >Add to cart</a>
                                </button>
                            </div>
                            <div class="btn-group wishlist">
                                <button type="button" class="btn btn-danger">
                                    <a href="<spring:url value="/cart"/> " class="btn btn-warning btn-large ng-click" >View cart</a>
                                </button>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="col-md-12 product-info">
                        <ul id="myTab" class="nav nav-tabs nav_tabs">

                            <li class="active"><a href="#service-one" data-toggle="tab">DESCRIPTION</a></li>
                            <li><a href="#service-two" data-toggle="tab">PRODUCT INFO</a></li>
                            <li><a href="#service-three" data-toggle="tab">REVIEWS</a></li>

                        </ul>
                        <div id="myTabContent" class="tab-content">
                            <div class="tab-pane fade in active" id="service-one">

                                <section class="container product-info">
                                    ${product.productDescription}
                                </section>

                            </div>
                            <div class="tab-pane fade" id="service-two">

                                <section class="container">

                                </section>

                            </div>
                            <div class="tab-pane fade" id="service-three">

                            </div>
                        </div>
                        <hr>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="template/footer.jsp"%>