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
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
                <img  src="<c:url value="/resources/imgs/aksenplus.png"/>" id="logo"/>
                <li ><a href="<c:url value="/admin/home"/>"><i class="fa fa-bullseye"></i> Dashboard</a></li>
                <li class="active"><a href="#"><i class="fa fa-tasks"></i> Products</a></li>
                <li><a href="<c:url value="/admin/orders"/>"><i class="fa fa-globe"></i> Orders</a></li>
                <li><a href="<c:url value="/admin/customers"/>"><i class="fa fa-list-ol"></i> Customer</a></li>
                <li><a href="<c:url value="/admin/sales"/>"><i class="fa fa-font"></i> Sales</a></li>
                <li><a href="<c:url value="/admin/users"/>"><i class="fa fa-list-ul"></i> Users</a></li>
                <li><a href="<c:url value="/admin/settings"/>"><i class="fa fa-table"></i > Settings</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right navbar-user">
                <li class="dropdown messages-dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> Messages <span class="badge">2</span> <b class="caret"></b></a>
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
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Steve Miller<b class="caret"></b></a>
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
                <h2>Products Managment</h2>
            </div>
        </div>

        <div class="container-fluid">
            <div class="col-md-12 product-info">
                <ul id="myTab" class="nav nav-tabs nav_tabs">

                    <li class="active"><a href="#service-one" data-toggle="tab">All Products</a></li>
                    <li><a href="#service-two" data-toggle="tab">Add a new Product</a></li>
                    <li><a href="#service-three" data-toggle="tab">Cathegories</a></li>
                    <li><a href="#service-four" data-toggle="tab">Promotions</a></li>


                </ul>
                <div id="myTabContent" class="tab-content">

                    <div class="tab-pane fade in active" id="service-one">

                        <section class="container product-info">

                            <table class="table table-striped table-hover">
                                <thead>
                                <tr class="bg-success">
                                    <th></th>
                                    <th>product name</th>
                                    <th>category</th>
                                    <th>condition</th>
                                    <th>price</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <c:forEach items="${products}" var="product">
                                    <tr>
                                        <td><img src="m" alt="image"></td>
                                        <td>${product.productNameEn}</td>
                                        <td>${product.productCategory}</td>
                                        <td>${product.productStatus}</td>
                                        <td>${product.productPrice}</td>
                                        <td>
                                            <div class="product_edit">
                                           <a  target="_blank" href="  <c:url value="/productdetails/${product.productId}"/>">  <img class="product_edit_imgs"  src="<c:url value="/resources/imgs/view_product.png"/>"></a>
                                                <a target="_blank" href="  <c:url value="/admin/productedit/${product.productId}"/>"><img class="product_edit_imgs"  src="<c:url value="/resources/imgs/edit_product.png"/>"></a>
                                            <a target="_blank"  href=" <c:url value="/productdetails/${product.productId}"/>">  <img class="product_edit_imgs" src="<c:url value="/resources/imgs/delete_product.png"/>"></a>
                                            </div>

                                        </td>
                                    </tr>
                                </c:forEach>

                            </table>
                        </section>

                    </div>
                    <div class="tab-pane fade" id="service-two">

                        <section class="container">

                            <form:form commandName="shit"  action="#" name="shit"  method="post" class="form-horizontal"  >
                                <fieldset>
                                     <!-- Form Name -->
                                    <legend>PRODUCTS</legend>

                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="product_name_ru">PRODUCT NAME -RU</label>
                                        <div class="col-md-4">
                                        <form:input path="productNameRu" id="product_name_ru" class="form-control input-md" type="text"/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="product_name_en">PRODUCT NAME -EN</label>
                                        <div class="col-md-4">
                                            <form:input path="productNameEn" id="product_name_en" class="form-control input-md" type="text"/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="product_discription_ru">PRODUCT DESCRIPTION RU</label>
                                        <div class="col-md-4">
                                            <form:input path="productDescriptionRu" id="product_discription_ru" name="product_discription_ru"  class="form-control input-md" required="" type="text"/>

                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="product_discription_en">PRODUCT DESCRIPTION EN</label>
                                        <div class="col-md-4">
                                            <form:input path="productDescriptionEn" id="product_discription_en" name="product_discription_en"  class="form-control input-md" required="" type="text"/>

                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="available_quantity">AVAILABLE QUANTITY</label>
                                        <div class="col-md-4">
                                            <form:input path="unitInStock" id="available_quantity" name="available_quantity"  class="form-control input-md" required="" type="text"/>

                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="available_category">Category</label>
                                        <div class="col-md-4">
                                            <form:select  path="productCategory" id="available_category" name="available_category">
                                                <form:option value="NONE"> --SELECT--</form:option>
                                                <c:forEach items="${listOfCategories}" var="catalogue">
                                                    <form:option  value="NONE"  disabled="true"> <h3>${catalogue.catalogName}</h3></form:option>
                                                    <form:option  value="NONE">
                                                        <c:forEach items="${listOfCatgs}" var="category">
                                                       <c:if test="${category.getCatalog().getCatalogId()==catalogue.getCatalogId()}">
                                                           <form:option  value="NONE"> <h3>${category.categoryNameEn}</h3></form:option>
                                                       </c:if>
                                                        </c:forEach>
                                                    </form:option>

                                                </c:forEach>

                                            </form:select>


                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="product_manufacture">ManuFacture</label>
                                        <div class="col-md-4">
                                            <form:input path="productManufacture" id="product_manufacture" name="product_manufacture" class="form-control input-md" required="" type="text"/>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="product_status">STATUS</label>
                                        <div class="col-md-4">
                                            <form:input path="productStatus" id="product_status" name="product_status"  class="form-control input-md" required="" type="text"/>

                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-4 control-label" for="product_price">PRICE</label>
                                        <div class="col-md-4">
                                            <form:input path="productPrice" id="product_price" name="product_price"  class="form-control input-md" required="" type="text"/>

                                        </div>
                                    </div>


                                            <div class="form-group">
                                                <label class="col-md-4 control-label" for="image-main">Main Image</label>
                                                <div class="col-md-4">
                                                    <input id="image-main" name="image-main" class="input-file" type="file">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-md-4 control-label" for="image-aux">Auxiliary images</label>
                                                <div class="col-md-4">
                                                    <input id="image-aux" name="image-aux" class="input-file" type="file">
                                                    <div class="col-md-3 text-center button-sbt">
                                                        <button id="singlebutton" name="Add AdBanner" type="submit" class="btn btn-primary">Add</button>
                                                    </div>
                                                </div>

                                            </div>







                                </fieldset>
                            </form:form>


                        </section>

                    </div>
                    <div class="tab-pane fade" id="service-three">

                        <table class="table table-striped table-hover">
                            <thead>
                            <tr class="bg-success">
                                <th>Catalogue Id</th>
                                <th>Catalogue Name</th>
                                <th>Categories</th>
                            </tr>
                            </thead>


                            <c:forEach items="${listOfCategories}" var="catalogue">
                                <tr>
                                    <td><h4>${catalogue.catalogId}</h4></td>
                                    <td><h4>${catalogue.catalogName}</h4></td>
                                    <td>


                                        <c:forEach items="${listOfCatgs}" var="category">
                                            <c:if test="${category.getCatalog().getCatalogId()==catalogue.getCatalogId()}">

                                                <div class="product_edit">
                                                        ${category.categoryNameEn}

                                                    <a target="_blank" href="  <c:url value="/admin/catalogue/edit/${catalogues.catalogId}"/>"><img class="product_edit_imgs"  src="<c:url value="/resources/imgs/edit_product.png"/>"></a>
                                                    <a target="_blank"  href=" <c:url value="/admin/catalogue/remove/${catalogues.catalogName}"/>">  <img class="product_edit_imgs" src="<c:url value="/resources/imgs/delete_product.png"/>"></a>
                                                </div>
                                                &ensp;&ensp;

                                            </c:if>
                                        </c:forEach>
                                        </c:forEach>


                                    </td>
                                </tr>


                        </table>
                        <hr>

                        <form:form commandName="catalogue"  id="catalogform" action="${root}/admin/products/catalogues" method="post"   class="form-horizontal"      >
                            <fieldset>
                                <legend>New Catalogue"</legend>

                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="catalogName">catalogue Name</label>
                                    <div class="col-md-4">
                                        <form:input path="catalogName" id="catalogName" class="form-control input-md" type="text"/>
                                        <div class="col-md-3 text-center button-sbt">
                                            <button id="buttonn"  type="submit" class="btn btn-primary">Add</button>
                                        </div>
                                    </div>
                                </div>

                            </fieldset>
                        </form:form>


                    </div>
                    <div class="tab-pane fade" id="service-four">


                        <table class="table table-striped table-hover">
                            <thead>
                            <tr class="bg-success">
                                <th></th>
                                <th>AdBanner Name</th>
                                <th>Ad Url</th>
                                <th></th>
                            </tr>
                            </thead>
                            <c:if test="${adbanners.size()==0}">
                                <tr>No Adbanner Content</tr>
                            </c:if>

                            <c:forEach items="${adbanners}" var="adbanner">
                                <tr>
                                    <td><img src="m" alt="image"></td>
                                    <td>${adbanner.AdBannerName}</td>
                                    <td>${adbanner.AdUrl}</td>
                                    <td>
                                        <div class="product_edit">
                                            <a target="_blank" href="  <c:url value="/admin/adbanner/edit/${adbanner.BannerId}"/>"><img class="product_edit_imgs"  src="<c:url value="/resources/imgs/edit_product.png"/>"></a>
                                            <a target="_blank"  href=" <c:url value="/admin/adbanner/remove/${adbanner.BannerId}"/>">  <img class="product_edit_imgs" src="<c:url value="/resources/imgs/delete_product.png"/>"></a>
                                        </div>

                                    </td>
                                </tr>
                            </c:forEach>

                        </table>
                            <hr>

                            <form:form commandName="adbanner"  id="simpleform" action="#" method="post"   class="form-horizontal"      >
                            <fieldset>
                                <legend>New Ad Banner</legend>

                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="AdBannerName">Name</label>
                                    <div class="col-md-4">
                                        <form:input path="AdBannerName" id="AdBannerName" class="form-control input-md" type="text"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="AdUrl">Product Url</label>
                                    <div class="col-md-4">
                                     <b>www.Aksenplus.ru/</b>
                                        <form:input path="AdUrl" id="AdUrl" class="form-control input-md" type="text"/>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="image-Adbanner">Image 800x300</label>
                                    <div class="col-md-4">
                                        <input id="image-Adbanner" name="image-Adbanner" class="input-file" type="file"/>
                                        <div class="col-md-3 text-center button-sbt">
                                            <button id="button" name="Add AdBanner" type="submit" class="btn btn-primary">Add</button>
                                        </div>
                                    </div>

                                </div>








                            </fieldset>
                        </form:form>


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


