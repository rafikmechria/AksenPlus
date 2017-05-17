

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



                <c:forEach items="${products}" var="product">

                                <p>${product.productId}</p>

                </c:forEach>


        </div>

    </div>
 <hr>

    <!-- Footer -->
    <%@ include file="template/footer.jsp"%>
<!-- /.container -->

