<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="template/header.jsp"%>
<link href="<c:url value="/resources/css/signup.css"/>" rel="stylesheet">




<form  name="loginForm"  method="post" action="<c:url value="/j_spring_security_check" /> " class="form-horizontal signup"  >
    <fieldset>
        <!-- Form Name -->
        <center><legend>Login</legend></center>


        <div class="form-group ">
            <label class="col-md-5 control-label" for="customerEmail"> Email</label>
            <div class="col-md-2">
                <input   id="customerEmail" name="username" class="form-control input-md"  type="text"/>
            </div>
        </div>
        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-5 control-label" for="password">Password</label>
            <div class="col-md-2">
                <input    id="password" name="password" class="form-control input-md" type="password"/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-5 control-label" for="password"></label>
            <div class="col-md-2">
            <a href="#">Forget your password ?</a>
            </div>
        </div>
        <div class="form-group">
        <label class="col-md-5 control-label" for="password"></label>

                <div class="col-md-3 text-center button-sbt">
                    <div class="g-recaptcha" data-sitekey="6Ld-1iAUAAAAADPOAp9GRTGTi7DRBH6f-xCj1oSf"></div>
                    <button id="singlebutton" name="Add " type="submit" class="btn btn-primary signupadd">Login</button>
                </div>
        </div>



        <hr>






    </fieldset>
</form>



<script src='https://www.google.com/recaptcha/api.js'></script>
<%@ include file="template/footer.jsp"%>