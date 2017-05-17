<%--
  Created by IntelliJ IDEA.
  User: Power
  Date: 09/04/2017
  Time: 23:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>

    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/font-awesome.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/local.css"/>" rel="stylesheet">


    <script type="text/javascript" src="<c:url value="/resources/js/jquery.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>


</head>
<body>
<div id="wrapper">
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

        </div>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav">
                <img src="<c:url value="/resources/imgs/aksenplus.png"/>" id="logo"/>
                <li><a href="<c:url value="/admin/home"/>"><i class="fa fa-bullseye"></i> Dashboard</a></li>
                <li><a href="<c:url value="/admin/products"/>"><i class="fa fa-tasks"></i> Products</a></li>
                <li  class="active"><a href="#"><i class="fa fa-globe"></i> Orders</a></li>
                <li><a href="<c:url value="/admin/customers"/>"><i class="fa fa-list-ol"></i> Customer</a></li>
                <li><a href="<c:url value="/admin/sales"/>"><i class="fa fa-font"></i> Sales</a></li>
                <li><a href="<c:url value="/admin/users"/>"><i class="fa fa-list-ul"></i> Users</a></li>
                <li><a href="<c:url value="/admin/settings"/>"><i class="fa fa-table"></i> Settings</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right navbar-user">
                <li class="dropdown messages-dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> Messages
                        <span class="badge">2</span> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li class="dropdown-header">2 New Messages</li>
                        <li class="message-preview">
                            <a href="#">
                                <span class="avatar"><i class="fa fa-bell"></i></span>
                                <span class="message">Security alert</span>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li class="message-preview">
                            <a href="#">
                                <span class="avatar"><i class="fa fa-bell"></i></span>
                                <span class="message">Security alert</span>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="#">Go to Inbox <span class="badge">2</span></a></li>
                    </ul>
                </li>
                <li class="dropdown user-dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Admin<b
                            class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><i class="fa fa-user"></i> Profile</a></li>
                        <li><a href="#"><i class="fa fa-gear"></i> Settings</a></li>
                        <li class="divider"></li>
                        <li><a href="#"><i class="fa fa-power-off"></i> Log Out</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>

    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h2>Orders Managment</h2>
            </div>
        </div>

        <div class="container-fluid">
            <div class="col-md-12 product-info">
                <ul id="myTab" class="nav nav-tabs nav_tabs">

                    <li class="active"><a href="#service-one" data-toggle="tab">All Orders</a></li>
                    <li><a href="#service-two" data-toggle="tab">New Orders</a></li>
                    <li><a href="#service-three" data-toggle="tab">Confirmed Orders</a></li>
                    <li><a href="#service-four" data-toggle="tab">Shipped Orders</a></li>


                </ul>
                <div id="myTabContent" class="tab-content">

                    <div class="tab-pane fade in active" id="service-one">

                        <section class="container product-info">


                        </section>

                    </div>

                    <div class="tab-pane fade" id="service-two">

                        <section class="container">
                            <table class="table table-striped table-hover">
                                <thead>
                                <tr class="bg-success">
                                    <th>Order Number</th>
                                    <th>Client Name</th>
                                    <th>Products Selected</th>
                                    <th>Shipping Details</th>
                                    <th>Total Price</th>
                                    <th>Payment Details</th>
                                    <th>Action</th>

                                </tr>
                                </thead>


                                <c:forEach items="${orders}" var="orders">
                                    <tr>
                                        <td><img src="m" alt="image"></td>
                                        <td>${order.productNameEn}</td>
                                        <td></td>
                                        <td>${order.productStatus}</td>
                                        <td>${order.productPrice}</td>
                                        <td>
                                            <div class="product_edit">
                                                <a target="_blank"
                                                   href="  <c:url value="/productdetails/${product.productId}"/>"> <img
                                                        class="product_edit_imgs"
                                                        src="<c:url value="/resources/imgs/view_product.png"/>"></a>
                                                <a target="_blank"
                                                   href="  <c:url value="/admin/productedit/${product.productId}"/>"><img
                                                        class="product_edit_imgs"
                                                        src="<c:url value="/resources/imgs/edit_product.png"/>"></a>
                                                <a target="_blank"
                                                   href=" <c:url value="/productdetails/${product.productId}"/>"> <img
                                                        class="product_edit_imgs"
                                                        src="<c:url value="/resources/imgs/delete_product.png"/>"></a>
                                            </div>

                                        </td>
                                    </tr>
                                </c:forEach>




                            </table>

                        </section>


                    </div>


                    <div class="tab-pane fade" id="service-three">



                    </div>


                    <div class="tab-pane fade" id="service-four">





                    </div>


                </div>


                <hr>
            </div>
        </div>

        <!-- /.row -->
    </div>
    <!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->


</body>
</html>


