<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="template/header.jsp"%>



<div class="container-wrapper">

    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1> Cart</h1>
                    <p>All the products you have been added to your shopping cart</p>
                </div>
            </div>
        </section>
        <section class="container" >
            <div ng-app="cartApp" ng-controller ="cartCtrl" ng-init="initCartId('${cartId}')">


            <div>
                <a class="btn btn-danger pull-left">
                   <span class="glyphicon glyphicon-remove-sign"> Clear Cart</span>
                </a>
            </div>

            <table class="table table-hover">
                <tr>
                    <th>Product</th>
                    <th>Unit Prices</th>
                    <th>Quantity</th>
                   <th>Price</th>
                    <th>Action</th>
                </tr>
                <tr ng-repeat="item in cart.cartItemMap">
                    <td>{{item.product.productName}}</td>
                    <td>{{item.product.productPrice}}</td>
                    <td>{{item.quantity}}</td>
                    <td>{{item.totalprice}}</td>
                    <td>
                      <!--  <a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)">
                            <span class="glyphicon glyphicon-remove"></span> remove</a>-->
                            </td>
                </tr>
                <tr>
                    <th></th>
                    <th></th>
                    <th>Grand Total</th>
                    <th>{{calculateTOTAL()}}</th>
                    <th></th>
                </tr>
            </table>
            <a href="<spring:url value="/home"/>" class="btn btn-default"> Continue Shopping</a>
            </div>
        </section>

    </div>
</div>

<script src="<c:url value="/resources/js/controller.js"/>" ></script>

<%@ include file="template/footer.jsp"%>
