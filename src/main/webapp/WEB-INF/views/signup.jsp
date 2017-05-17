<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="template/header.jsp"%>
<link href="<c:url value="/resources/css/signup.css"/>" rel="stylesheet">

<form:form commandName="customer"  action="/signup" name="signup"  method="post" class="form-horizontal signup"  >
    <fieldset>
        <!-- Form Name -->
        <center><legend>Sign Up</legend></center>


        <div class="form-group ">
            <label class="col-md-5 control-label" for="customerName"> NAME</label>
            <div class="col-md-2">
                <form:input  path="customerName"  id="customerName" class="form-control input-md"  type="text"/>
            </div>
        </div>
        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-5 control-label" for="customerLastName">LAST NAME</label>
            <div class="col-md-2">
                <form:input path="customerLastName"   id="customerLastName" class="form-control input-md" type="text"/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-5 control-label" for="customerEmail">EMAIL</label>
            <div class="col-md-2">
                <form:input path="customerEmail"  id="customerEmail"  name="customerEmail"  class="form-control input-md" required="" type="text"/>

            </div>
        </div>


        <div class="form-group">
            <label class="col-md-5 control-label" for="customerPassword">NEW PASSWORD</label>
            <div class="col-md-2">
                <form:input path="password"  id="customerPassword"  name="customerPassword"  class="form-control input-md" required="" type="password"/>
                <div class="col-md-3 text-center button-sbt">
                    <button id="singlebutton" name="Add " type="submit" class="btn btn-primary signupadd">Create Account</button>
                </div>
            </div>

        </div>

        <hr>






    </fieldset>
</form:form>




<%@ include file="template/footer.jsp"%>