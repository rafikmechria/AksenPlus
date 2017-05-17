<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="template/header.jsp"%>
<link href="<c:url value="/resources/css/productdetails.css"/>" rel="stylesheet">
<script src="<c:url value="/resources/js/controller.js"/>" ></script>


<form:form commandName="signup"  action="/signup" name="signup"  method="post" class="form-horizontal"  >
    <fieldset>
        <!-- Form Name -->
        <center><legend>Sign Up</legend></center>


        <div class="form-group">
            <label class="col-md-4 control-label" for="product_name"> NAME</label>
            <div class="col-md-4">
                <form:input  path="productId" value="${product.productId}" id="product_name" class="form-control input-md"  type="text"/>
            </div>
        </div>
        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_name">LAST NAME</label>
            <div class="col-md-4">
                <form:input path="productName"  value="${product.productName}" id="product_name" class="form-control input-md" type="text"/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="product_name_en">EMAIL</label>
            <div class="col-md-4">
                <form:input path="productDescription" value="${product.productDescription}" id="product_name_en"  name="product_name_en"  class="form-control input-md" required="" type="text"/>

            </div>
        </div>


        <div class="form-group">
            <label class="col-md-4 control-label" for="product_name_en">PASSWORD</label>
            <div class="col-md-4">
                <form:input path="costomerPassword" value="${product.productDescription}" id="product_name_en"  name="product_name_en"  class="form-control input-md" required="" type="password"/>

            </div>
        </div>


        <div class="form-group">
            <label class="col-md-4 control-label" for="product_name_en">CONFIRM PASSWORD</label>
            <div class="col-md-4">
                <form:password path="costomerPasswordConfirm" value="${product.productDescription}" id="product_name_en"  name="product_name_en"  class="form-control input-md" required="" type="password"/>

            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="product_name_en">EMAIL</label>
            <div class="col-md-4">
                <form:password path="captcha" value="${product.productDescription}" id="product_name_en"  name="product_name_en"  class="form-control input-md" required="" type="text"/>

            </div>
        </div>




    </fieldset>
</form:form>




<%@ include file="template/footer.jsp"%>