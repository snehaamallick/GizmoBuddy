<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<script type="text/javascript">
        $(document).ready(function () {
            $('.dropdown-toggle').dropdown();
        });
        </script>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product List Page</h1>
            <p class="lead">Checkout all the awesome products available now!</p>
            
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
                    <td><a href="<spring:url value="/product/viewProduct/${product.productId}" />"  
					class="btn btn-primary"> <span
					class="glyphicon-info-sign glyphicon"> </span> Details
					</a>
				</td>
                </tr>
            </c:forEach>
        </table>
</div>
</div>
</div>
        
        
        
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


</body>
<script>
$(document).ready(function(){
    $('#myTable').dataTable({"oSearch": {"sSearch": "${param.productName}"}});
});
</script>
</html>
