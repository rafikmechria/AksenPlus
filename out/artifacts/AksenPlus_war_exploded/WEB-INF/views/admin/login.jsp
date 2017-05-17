<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: Power
  Date: 09/04/2017
  Time: 00:40
  To change this template use File | Settings | File Templates.
--%>
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

<c:if test="${not empty msg}">
    <div class="msg">
        ${msg}
    </div>
</c:if>
<div class="container col-md-8 col-md-offset-2">
    <form  name="loginForm"  action="<c:url value="/j_spring_security_check" />"   method="post" class="form-horizontal"  >
        <fieldset>
            <!-- Form Name -->
            <legend>AksenPlus Admin Page</legend>
            <c:if test="${not empty error}">
                <div class="error" style="color: firebrick">
                        ${error}
                </div>
            </c:if>
            <!-- Text input-->
            <div class="form-group">

                <label class="col-md-2 control-label" for="product_name">Admin</label>
                <div class="col-md-2">
                    <input  id="product_name" name="username" class="form-control input-md" type="text"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-2 control-label" for="product_name_en">Password</label>
                <div class="col-md-2">
                    <input  id="product_name_en" name="password"  class="form-control input-md" required="" type="password"/>

                </div>
            </div>


            <div class="form-group">
                <div class="col-md-2 ">
                    <button id="singlebutton" type="submit" class=" btn btn-primary">Login</button>
                </div>
            </div>



<input type="hidden" name="${_csrf.parameterName}" value="${csrf.token}">
        </fieldset>
    </form>

</div>
</body>
</html>
