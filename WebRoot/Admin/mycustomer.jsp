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
                               <li><a href="home.jsp">Dashboard</a></li>
                                <li><a href="bookingRequests.jsp">Booking Request</a></li>
                                <li><a href="paymentdone.jsp">Payment done</a></li>
                                <li><a href="checkin.jsp">CheckIn</a></li>
                                <li><a href="checkout.jsp">CheckOut</a></li>
                                <li  id="current"><a href="mycustomer.jsp">My Customers</a></li>
                            </ul>
                        </div><!-- End. #Logo -->
                    </div><!-- End. .grid_12-->
                    <div style="clear: both;"></div>
                </div><!-- End. .container_12 -->
            </div> <!-- End #header-main -->
            <div style="clear: both;"></div>
            <!-- Sub navigation -->
            
            <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
            <center>
            
       
		<form action="../mycustomer.do">
	           <input type="submit" value="Show me List of Customers"/>
            </form>
            </center>
	</body>
</html>
