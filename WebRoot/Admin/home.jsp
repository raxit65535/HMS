<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<% 
 
HttpSession admin = request.getSession(); 
String _name = (String)admin.getAttribute("admin"); 
 
if(_name == null) 
{ 
 %>
 <jsp:forward page="../Claim.jsp"></jsp:forward>
<%

}
 %>


<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title>Magic Admin. Advanced, Beautiful and Customizable Admin Template.</title>
       
        <!-- CSS Reset -->
		<link rel="stylesheet" type="text/css" href="css/reset.css" tppabs="css/reset.css" media="screen" />
		
        <link rel="stylesheet" type="text/css" href="css/styles.css"  media="screen" />
        <!--<link rel="stylesheet" type="text/css" href="css/theme-blue.css"  media="screen" />-->
        
        <!-- bjqs.css contains the *essential* css needed for the slider to work -->
         <link rel="stylesheet" type="text/css" href="css/bjqs.css"  media="screen" />
   

    
     <link rel="stylesheet" type="text/css" href="css/slidecss.css"  media="screen" />

    <!-- demo.css contains additional styles used to set up this demo page - not required for the slider --> 
     <link rel="stylesheet" type="text/css" href="css/demo.css"  media="screen" />
  

    <!-- load jQuery and the plugin -->
    <script src="js/jquery-1.7.1.min.js"></script>
    <script src="js/bjqs-1.3.min.js"></script>
        
	</head>
	<body>
    	<!-- Header -->
        <div id="header">
            <!-- Header. Status part -->
            <div id="header-status">
                <div class="container_12">
                    <div class="grid_8">
					&nbsp;
                    </div>
                    <div class="grid_4">
                        <a href="loguout.jsp" id="logout">
                        Logout
                        </a>
                    </div>
                </div>
                <div style="clear:both;"></div>
            </div> <!-- End #header-status -->
            
            <!-- Header. Main part -->
            <div id="header-main">
                <div class="container_12">
                    <div class="grid_12">
                        <div id="logo">
                            <ul id="nav">
                               <li id="current"><a href="home.jsp">Dashboard</a></li>
                                <li><a href="bookingRequests.jsp">Booking Request</a></li>
                                <li><a href="paymentdone.jsp">Payment done</a></li>
                                <li><a href="checkin.jsp">CheckIn</a></li>
                                <li><a href="checkout.jsp">CheckOut</a></li>
                                <li><a href="mycustomer.jsp">My Customers</a></li>
                            </ul>
                        </div><!-- End. #Logo -->
                    </div><!-- End. .grid_12-->
                    <div style="clear: both;"></div>
                </div><!-- End. .container_12 -->
            </div> <!-- End #header-main -->
            <div style="clear: both;"></div>
            <!-- Sub navigation -->
          </div>
            
            
            
            
            <div id="container">
  
      <h1>Hotel Galary</h1>

      <!--  Outer wrapper for presentation only, this can be anything you like -->
      <div id="banner-fade">

        <!-- start Basic Jquery Slider -->
        <ul class="bjqs">
          <li><img src="img/banner01.jpg" title="Automatically generated caption"></li>
          <li><img src="img/banner02.jpg" title="Automatically generated caption"></li>
          <li><img src="img/banner03.jpg" title="Automatically generated caption"></li>
        </ul>
        <!-- end Basic jQuery Slider -->

      </div>
      <!-- End outer wrapper -->

      <script class="secret-source">
        jQuery(document).ready(function($) {

          $('#banner-fade').bjqs({
            height      : 320,
            width       : 620,
            responsive  : true
          });

        });
      </script>
      </div>
            
            
            
           <center> <h1>General Information</h1></center>
            <pre>
            <h3>
            The luxurious Eastin Grand Hotel Sathorn is connected to Surasak BTS Skytrain Station via the hotel's Sky Bridge. Its outdoor pool enjoys views of Chao Phraya River and Bangkok City. A fitness center and 4 dining options are available.

Fresh and modern, the large air-conditioned rooms feature free Wi-Fi and a flat-screen TV with 24-hour cable and satellite channels. A fully stocked minibar, tea/coffee making facilities and a personal safe are included. Bathrooms have hot-water showers.

By Skytrain, Eastin Grand Hotel Sathorn is just minutes from the rest of downtown Bangkok. It is a 45-minute drive from Suvarnabhumi International Airport via the highway.

Guests can enjoy Chinese cuisine and Cantonese specialties at Chef Man or head to LUCE for Italian dishes. Glass House has options from the menu, as well as a lunch buffet. A variety of beverages and light snacks is served at Swizzles.

Including free parking, the hotel also provides a business center, currency exchange and babysitting services. Laundry and ironing services are also available.
            
            
            
            
            </h3>
            
            
            </pre>
	</body>
</html>