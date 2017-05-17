<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%@ include file="template/header.jsp"%>





<!-- Page Content -->
<div class="container">





    <div class="col-md-9 table-aksencontent" style="margin-top: 200px;">

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

</div>

<!-- /.container -->



<hr>

<!-- Footer -->
<%@ include file="template/footer.jsp"%>


<!-- /.container -->

<!-- jQuery -->
<script src="<c:url value="/resources/js/jquery.js "/>"></script>

<!-- Bootstrap Core JavaScript -->
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<script>
    jQuery(document).on('click', '.mega-dropdown', function(e) {
        e.stopPropagation()
    })
</script>

</body>
</html>