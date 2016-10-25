<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<title>Welcome to Gizmobuddy</title>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> 
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   <!-- Angular.JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>

    <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
  
    <script src="resources/js/jquery.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.prettyPhoto.js"></script>
    <script src="resources/js/jquery.isotope.min.js"></script>
    <script src="resources/js/main.js"></script>
    <script src="resources/js/wow.min.js"></script>
    <style>
body {
	background-color: Bisque;
}

.border-right {
    border-right: 1px solid #ddd;
}
.borders {
    border-left: 1px solid #ddd;
    border-right: 1px solid #ddd;
    margin: -1px;
}
.border-left {
    border-left: 1px solid #ddd;
}


ul#menu li {
    display:inline;
}

</style>
<script>
$(document).ready(function(){
    $('#myTable').dataTable({"oSearch": {"sSearch": "${param.productName}"}});
});
</script>

</head>

<!-- NAVBAR
================================================== -->

<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      
				<a class="navbar-brand" href="gotoindex"><img src="resources/images/logo8.PNG"></img> </a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="gotoindex"><b>Home</b>
				</a></li>


				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <b>Mobile Phones</b> <span
						class="caret"> </span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="<c:url value="/productList?productName=Android" />">Android phone</a></li>

					</ul></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="https://www.google.co.in/"><b>Smart
							Devices</b> <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="<c:url value="/newlist?productName=Smart Band" />">Smart Band</a></li>
						<li><a href="<c:url value="/newlist" />">Smart Watches</a></li>

					</ul></li>

			</ul>
                    <ul class="nav navbar-nav pull-right">
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
                            <li><a href="<c:url value="/logout" />">Logout</a></li>

                            <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                                <li><a href="<c:url value="/customer/cart" />">Cart</a></li>
                            </c:if>

                            <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                                <li><a href="<c:url value="/admin"/>">Admin</a></li>
                            </c:if>

                        </c:if>

                        <c:if test="${pageContext.request.userPrincipal.name == null}">
                            <li><a href="<c:url value="/login" />">Login</a></li>
                            <li><a href="<c:url value="/register" />">Register</a></li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </nav>

    </div>
</div>

<script type="text/javascript">
        $(document).ready(function () {
            $('.dropdown-toggle').dropdown();
        });
        </script>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Inventory Page</h1>


            <p class="lead">This is the product inventory page:</p>
            <a href="<spring:url value="/admin/product/addProduct" />" class="btn btn-primary">Add Product</a>
<br>
<br>
        <table id="myTable" class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Proto Thumb</th>
                <th>Product Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" />" alt="image" style="width:30%"/></td> 
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} USD </td>
                    <td>
                        <a href="<spring:url value="/viewProduct/${product.productId}" />"><span class="glyphicon glyphicon-info-sign"></span></a>
                        <a href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"><span class="glyphicon glyphicon-remove"></span></a>
                        <a href="<spring:url value="/admin/product/editProduct/${product.productId}" />"><span class="glyphicon glyphicon-pencil"></span></a>
                    </td>
                </tr>
            </c:forEach>
        </table>
</div>
</div>
</div>
        
        </body>
        
        
<div class="container-fluid">
  <div class="panel panel-warning class">
    <div class="panel-heading">


<div class="row">
		<div class="col-md-4 border-right">
		
				<p align="left" >
					<b>DOWNLOAD THE APP</b>
				</p>
				<ul style="list-style-type:none">
				<li><p align="left"><a href="#"><img src="resources/images/Capture.PNG"></img></a></p></li>
				<br>
				<li><p align="left"><a href="#"><img src="resources/images/appstore.PNG"></img></a></p></li>
				<br>
				<li><p align="left"><a href="#"><img src="resources/images/win.PNG"></img></a></p><br></li>
				</ul>
				
			</div>
		
		<div class="col-md-4 borders">
			
				<p align="left"><b>GizmoBuddy</b></p>
				<ul style="list-style-type:none">
				<li><a href="Contact">Contact Us</a></li><br>
				<li><a href="aboutus">About Us</a></li><br>
				<li><a href="#">Gift Cards</a></li><br>
				<li><a href="#">Rewards</a></li><br>
				<li><a href="faq">FAQs</a></li>
				<li>Sell on GizmoBuddy</li><br>
				</ul>
				
			</div>
			<div class="col-md-4 border-left">
			
				<p><b>Our Policies</b></p>
				<ul style="list-style-type:none">
				<li><a href="#">Terms and Conditions</a></li><br>
				<li><a href="#">Privacy Policy</a></li><br>
				<li><a href="#">Vendor Code of Conduct</a></li><br>
				<li>Deal of The Day</li><br>
				<br>
				</ul>
				
			</div>
		</div>
		<hr>
	
	<div class="row">
	<div class="col-md-4">
	TOP CATEGORIES:
  <a href="#">Smart Watch</a>|<a href="#">Mobile</a></div>
  <div class="col-md-8">

	
  <p align="right">
  KEEP IN TOUCH &emsp;
  <a href="https://twitter.com/" class="fa fa-twitter  fa-3x social"></a> &emsp;
  <a href="https://www.facebook.com/" class="fa fa-facebook fa-3x social"></a>&emsp;
  <a href="https://www.instagram.com/" class="fa fa-instagram fa-3x social"></a>&emsp;
  <a href="https://plus.google.com/" class="fa fa-google-plus fa-3x social"></a>&emsp;
  <a href="https://in.pinterest.com/" class="fa fa-pinterest fa-3x social"></a></p>
  </div></div>
  <hr>
  
  
  
  <h5>PAYMENT METHOD</h5>
  <p><a href="#"><b>CASH ON DELIVERY</b></a></p>
  
  <hr>
  
	<div class="container-fluid">
			<center>
				<font color="black">copyright <span
					class="glyphicon glyphicon-copyright-mark">2016Gizmobuddy.com</font>
			</center>
		</div>
	</div>
	</div>
	
	
  </div>

  
<!-- Bootstrap.js -->
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>



</html>
