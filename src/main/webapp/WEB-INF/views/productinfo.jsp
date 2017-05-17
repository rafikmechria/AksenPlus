<%@ include file="template/header.jsp"%>
<link href="<c:url value="/resources/css/productdetails.css"/>" rel="stylesheet">
<!-- Page Content -->
<div class="container-wrapper">
    <div class="container">
        <div class="container-fluid">
            <div class="content-wrapper">
                <div class="item-container">
                    <div class="container">
                        <div class="col-md-8">
                            <div class="product col-md-8 service-image-left">
                                <center>
                                    <img id="item-display" src="/resources/imgs/products/${ProductId}/${ProductId}.png" alt=""/>
                                </center>
                            </div>
                            <div class="container service1-items col-sm-2 col-md-2 pull-left">
                                <center>

<c:forEach items="${images}" var="img">
                                    <a class="service1-item">
                                        <img id="item-${images.indexOf(img)+1}" src="/resources/imgs/products/${img}" alt=""/>
                                    </a>
</c:forEach>
    </center>
                            </div>
                        </div>

                        <div class="col-md-4" ng-app="cartApp">
                            <div class="product-title">${productNameEn}</div>
                            <hr>
                            <div class="product-price">${ProductPrice}</div>

                            <div class="product-stock">In Stock</div>
                            <hr>
                            <div class="btn-group cart" ng-controller="cartCtrl">

                                <button type="button" class="btn btn-success " ng-click="addToCart('${ProductId}')">
                                    <a class="btn bbb btn-warning btn-large" >Add to cart</a>
                                </button>
                            </div>
                            <div class="btn-group wishlist">
                                <button type="button" class="btn btn-danger">
                                    <a href="<c:url value="/cart"/> " class="btn btn-warning bbbb btn-large ng-click" >View cart</a>
                                </button>
                            </div>

                        </div>

                    </div>
                </div>



                <div class="container-fluid">
                    <div class="col-md-12 product-info">
                        <ul id="myTab" class="nav nav-tabs nav_tabs">

                            <li class="active"><a href="#service-one" data-toggle="tab">DESCRIPTION</a></li>


                        </ul>
                        <div id="myTabContent" class="tab-content">
                            <div class="tab-pane fade in active" id="service-one">

                                <section class="container product-info">
                                    ${productDescriptionEn}
                                </section>

                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /.container -->



<hr>

<!-- Footer -->
<%@ include file="template/footer.jsp"%>

