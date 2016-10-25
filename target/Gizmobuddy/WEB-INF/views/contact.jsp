
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

<script src="https://maps.googleapis.com/maps/api/js?sensor=false&callback=initMap">
</script>

<script>
function initialize()
{
  var mapProp = {
    center: new google.maps.LatLng(51.508742,-0.120850),
    zoom:7,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
}

function loadScript()
{
  var script = document.createElement("script");
  script.type = "text/javascript";
  script.src = "http://maps.googleapis.com/maps/api/js?key=BB:0D:AC:74:D3:21:E1:43:67:71:9B:62:91:AF:A1:66:6E:44:5D:75;com.xamarin.docs.android.mapsandlocationdemo3sensor=false&callback=initialize";
  document.body.appendChild(script);
}

window.onload = loadScript;
</script>

<%@ include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-fluid">
  <div class="row">
    <div class="col-md-6">
<font size=+1><b>&nbsp;&nbsp;&nbsp;Contact us:</b></font>
  <p><b>&nbsp;&nbsp;&nbsp;&nbsp;GizmoHub Pvt. Ltd.<br>&nbsp;&nbsp;&nbsp;&nbsp;Ozone Manay Tech Park<br>
    		&nbsp;&nbsp;&nbsp;&nbsp;36,Saket Apartment,
    		<br>
    		&nbsp;&nbsp;&nbsp;&nbsp;Ahmednagar, 
    		<br>&nbsp;&nbsp;&nbsp;&nbsp;Maharashtra-400011.
   			 <br>
   			 <br>
     		<!-- <span class="glyphicon glyphicon-earphone"></span>-->    <font>&nbsp;&nbsp;&nbsp;&nbsp;<u>Customer care:</u></font><font>1800-999999</font>
     		<br><font>&nbsp;&nbsp;&nbsp;&nbsp;<u>Timings:</u>Mon-Sat 9AM TO 9PM
     		<br><hr>&nbsp;&nbsp;&nbsp; </font>
     		
    		
</p>
</div>
<br>
<div class="col-md-6"><span class="pull-right">

 <p>Locate us on:</p>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3770.498835313674!2d74.72999091490134!3d19.085760087082345!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bdcb0f5bfeefddf%3A0x1bcd63f484e964b6!2sSaket+Apartment%2C+Tilak+Rd%2C+Maliwada%2C+Ahmednagar%2C+Maharashtra+414001!5e0!3m2!1sen!2sin!4v1469703588174" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>



