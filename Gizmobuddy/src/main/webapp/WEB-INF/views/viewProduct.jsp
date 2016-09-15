<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Detail</h1>


            <p class="lead">Here is the detail information of the product:</p>
        </div>

        <div class="container" ng-app = "cartApp">
            <div class="row">
                <div class="col-md-5">
                    <img src="<c:url value="/resources/images/${product.productId}.png" />" alt="image" style="width:55%"/>
                </div>
                <div class="col-md-5">
                    <h3>${product.productName}</h3>
                    <p>${product.productDescription}</p>
                    <p><strong>Manufacturer</strong>: ${product.productManufacturer}</p>
                    <p><strong>Category</strong>: ${product.productCategory}</p>
                    <p><strong>Condition</strong>: ${product.productCondition}</p>
                    <p>${product.productPrice} INR</p>

                    <br/>

                    <c:set var = "role" scope="page" value="${param.role}" />
                    <c:set var = "url" scope="page" value="/product/productList" />
                    <c:if test="${role eq 'admin'}">
                        <c:set var="url" scope="page" value="/admin/productInventory" />
                    </c:if>

                    <p ng-controller="cartCtrl">
                        <a href="<c:url value = "/product/productList" />" class="btn btn-default">Back</a>
                       <!--<a href="/add/${productId}" class="btn btn-warning btn-large" ng-click="addToCart('${product.productId}')"><span class="glyphicon glyphicon-shopping-cart"></span> Order Now</a>-->
                        
                       <a href="<c:url value ="/customer/cart"/>"  class="btn btn-warning btn-large" ng-click="addToCart('${product.productId}')"><span class="glyphicon glyphicon-shopping-cart"></span> Order Now</a>
                        <a href="<spring:url value="/customer/cart" />" class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span> View Cart</a>
                   <a href="#myModal" role="button" data-toggle="modal" class = "btn btn-default">Share with a Friend</a>
                   <!--<a href="/rest/cart/${cart.cartId}" class="btn btn-warning btn-large"><span class="glyphicon glyphicon-shopping-cart"></span> Order Now</a>-->
                    </p>
           
                </div>
            </div>
        </div>


<!-- My -->
<script src="<c:url value="/resources/js/controller.js?v3" /> "></script>

<!-- ==== Starting modal ==== -->
	
	<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Recommend a Friend</h4>
        </div>
        <div class="modal-body">
         <form class="form-horizontal" name="commentform" method="post" action="sendEmail">
    <div class="form-group">
        <label class="control-label col-md-4" for="first_name">First Name</label>
        <div class="col-md-6">
            <input type="text" class="form-control" id="first_name" name="first_name" placeholder="First Name"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-4" for="last_name">Last Name</label>
        <div class="col-md-6">
            <input type="text" class="form-control" id="last_name" name="last_name" placeholder="Last Name"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-4" for="email">Email Address</label>
        <div class="col-md-6 input-group">
        <span class="input-group-addon">@</span>
            <input type="email" class="form-control" id="email" name="email" placeholder="Email Address"/>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-md-4" for="comment">Question or Comment</label>
        <div class="col-md-6">
            <textarea rows="6" class="form-control" id="comments" name="comments" placeholder="Your suggestion or comment here">Hi, ${param.name} is available at ${param.price}</textarea>
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-6">
            <button type="submit" value="Submit" class="btn btn-custom pull-right">Send</button>
        </div>
    </div>
</form>
        </div><!-- End of Modal body -->
        </div><!-- End of Modal content -->
        </div><!-- End of Modal dialog -->
    </div>
	


</body>
<%@ include file="/WEB-INF/views/template/footer.jsp" %>
</html>
