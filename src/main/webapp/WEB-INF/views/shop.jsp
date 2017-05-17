

<%@ include file="template/header.jsp"%>


<!-- Page Content -->
<div class="container">




        <div class="col-md-9 table-aksencontent">

            <div class="row carousel-holder">

                <div class="col-md-12">
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="item active">
                               <a href="/product/1507329"> <img class="slide-image" src="/resources/imgs/adbanner/1.png" alt=""></a>
                            </div>
                            <div class="item">
                                <a href="/product/1507330">  <img class="slide-image" src="<c:url value="/resources/imgs/adbanner/2.png"/>" alt=""></a>
                            </div>
                            <div class="item">
                                <a href="/product/1540096">    <img class="slide-image" src="<c:url value="/resources/imgs/adbanner/3.png"/>" alt=""></a>
                            </div>
                            <div class="item">
                                <a href="/product/1507331">  <img class="slide-image" src="<c:url value="/resources/imgs/adbanner/4.png"/>" alt=""></a>
                            </div>
                        </div>
                        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                        </a>
                    </div>
                </div>

            </div>

            <div class="row">
                <c:forEach items="${products}" var="product">
            <div class="col-sm-4 col-lg-4 col-md-4">
                <div class="thumbnail">
                    <a href="/product/${product.productId}">
                        <img class="imgs" src="/resources/imgs/products/${product.productId}/${product.productId}.png" alt=""></a>
                    <div class="caption">
                        <h4 class="pull-right">${product.productPrice}</h4>
                        <h4><a href="/product/${product.productId}">${product.productNameEn}</a>
                        </h4>
                        <p style=" overflow:hidden; text-overflow: ellipsis;max-height: 55px;">${product.productDescriptionEn}</p>
                    </div>
                    <div class="ratings">
                        <c:if test="${pageContext.request.userPrincipal.name==null}">
                        <a href="/login" class="btn bbb btn-warning btn-large" style="color: #fff;background-color: #5cb85c">Add to cart</a>
                        </c:if>
                        <c:if test="${pageContext.request.userPrincipal.name!=null}">
                            <a href="/customer/cart" class="btn bbb btn-warning btn-large" style="color: #fff;background-color: #5cb85c">Add to cart</a>
                        </c:if>

                    </div>
                </div>
            </div>





                </c:forEach>


        </div>

    </div>
 <hr>

    <!-- Footer -->
    <%@ include file="template/footer.jsp"%>
<!-- /.container -->

