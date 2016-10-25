
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

<title>CONTACT US</title>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
	function initialize() {
		var mapProp = {
			center : new google.maps.LatLng(51.508742, -0.120850),
			zoom : 5,
			mapTypeId : google.maps.MapTypeId.ROADMAP
		};
		var map = new google.maps.Map(document.getElementById("googleMap"),
				mapProp);
	}
	google.maps.event.addDomListener(window, 'load', initialize);
</script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<style>
#map {
	width: 40%;
	height: 250px;
	align:center;
}
.carousel-caption {
    top: 0;
    bottom: auto;
  }
 .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 80%;
      margin: auto;
      height:50%;
    }
    p
    {
    color: black;
    }
    
</style>
</head>
<body>
	<!--  ========= Navigation bar======= -->
	
	
     
	<!--   <div class="container text-center">-->
     <div class="row">
    <div class="col-md-6">
     <br><br><br><br><br><h1 style="font-weight:bold; color:black;">Contact Us</h1><br>
		<span style="font-weight: bold ; color:black;">Address:</span><p>Bhavanagar,Keshav
		Puram,Tri Nagar, <br> New Delhi,Delhi 110034 <br></p><abbr
			title="Phone"><span style="font-weight: bold; color:black;">Phone:</span></abbr><p>(011)
		22384165<br></p><abbr title="Timings"><span
			style="font-weight: bold; color:black;">Timings:</span></abbr><p> 9AM-8PM <br></p> <abbr
			title="Email"><span style="font-weight: bold; color:black;">Email id:</span></abbr>
		<a href="mailto:#">bookstore.in@gmail.com</a><br> <br> <span
			style="font-weight: bold; color:black;">FOLLOW US ON.....</span><br> <a
			href="https://www.facebook.com/"><i id="social-fb"
			class="fa fa-facebook-square fa-3x social"></i></a> <a
			href="https://twitter.com/"><i id="social-tw"
			class="fa fa-twitter-square fa-3x social"></i></a> <a
			href="https://plus.google.com/"><i id="social-gp"
			class="fa fa-google-plus-square fa-3x social"></i></a>
			</div>
     <div class="col-md-6"><span class="pull-right">
        <br><br><br><br><h1 style="font-family:forte ;color:#1A5880;">LOCATE US!</h1>
		<br><br><div id="googleMap" style="width: 370px; height: 380px; align:top"></div>
    </span>
    </div>
    </div>
	</div>
	</div>
	</div>
	<br>
	
	<br>

	<!--  <div id="googleMap" style="width: 500px; height: 380px;"></div>
		 <div id="googleMap" style="width: 380px; height: 380px; align:top"></div>
     <script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC6xrKoTQqj0s7peNxtwKsfccTTQLndNP0&callback=initMap">
		
	</script>-->
	<!--   <div id="map"></div>
    <script>
      function initMap() {
        var mapDiv = document.getElementById('map');
        var map = new google.maps.Map(mapDiv, {
            center: {lat: 44.540, lng: -78.546},
            zoom: 8
        });
      }
    </script>-->
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC6xrKoTQqj0s7peNxtwKsfccTTQLndNP0&callback=initMap">
		
	</script>
<%@ include file="/WEB-INF/views/template/footer.jsp" %>



