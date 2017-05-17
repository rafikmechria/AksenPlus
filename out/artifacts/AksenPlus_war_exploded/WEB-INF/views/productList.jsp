<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>All Products</h1>
            <p class="lead" >checkout all the products</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th></th>
                <th>product name</th>
                <th>category</th>
                <th>condition</th>
                <th>price</th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
            <tr>
                <td><img src="m" alt="image"></td>
                <td>${product.productName}</td>
                <td>${product.productCategory}</td>
                <td>${product.productCondition}</td>
                <td>${product.productPrice}</td>
            </tr>
            </c:forEach>

        </table>
<%@ include file="template/footer.jsp"%>