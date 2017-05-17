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

<form:form commandName="edit"  action="/admin/productedit" name="shit"  method="post" class="form-horizontal"  >
    <fieldset>
        <!-- Form Name -->
        <center><legend> PRODUCT EDIT</legend></center>


        <div class="form-group">
            <label class="col-md-4 control-label" for="product_name">PRODUCT NAME</label>
            <div class="col-md-4">
                <form:input  path="productId" value="${product.productId}" id="product_name" class="form-control input-md" readonly="true" type="text"/>
            </div>
        </div>
        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_name">PRODUCT NAME</label>
            <div class="col-md-4">
                <form:input path="productName"  value="${product.productName}" id="product_name" class="form-control input-md" type="text"/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="product_name_en">PRODUCT DESCRIPTION EN</label>
            <div class="col-md-4">
                <form:input path="productDescription" value="${product.productDescription}" id="product_name_en"  name="product_name_en"  class="form-control input-md" required="" type="text"/>

            </div>
        </div>


        <div class="form-group">
            <label class="col-md-4 control-label" for="available_quantity">AVAILABLE QUANTITY</label>
            <div class="col-md-4">
                <form:input path="unitInStock" value="${product.unitInStock}"  id="available_quantity" name="available_quantity"  class="form-control input-md" required="" type="text"/>

            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="available_category">Category</label>
            <div class="col-md-4">
                <form:input path="productCategory" value="${product.productCategory}" id="available_category" name="available_category"  class="form-control input-md" required="" type="text"/>

            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_manufacture">ManuFacture</label>
            <div class="col-md-4">
                <form:input path="productManufacture"  value="${product.productManufacture}"  id="product_manufacture" name="product_manufacture" class="form-control input-md" required="" type="text"/>

            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_status">STATUS</label>
            <div class="col-md-4">
                <form:input path="productStatus" value="${product.productStatus}"  id="product_status" name="product_status"  class="form-control input-md" required="" type="text"/>

            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="product_price">PRICE</label>
            <div class="col-md-4">
                <form:input path="productPrice" value="${product.productPrice}"  id="product_price" name="product_price"  class="form-control input-md" required="" type="text"/>

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
            </div>
        </div>


        <div class="form-group">
            <div class="col-md-4">
                <button id="singlebutton" name="Add" type="submit" class="btn btn-primary center-block">Add</button>
            </div>
        </div>




    </fieldset>
</form:form>


</body>
</html>
