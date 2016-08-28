<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/displaytag.tld" prefix="display" %>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>

<%@ page import="Hibernate.*"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
		<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
		
		
        <link rel="stylesheet" type="text/css" href="css/styles.css"  media="screen" />
        <!--<link rel="stylesheet" type="text/css" href="css/theme-blue.css"  media="screen" />-->
        
	</head>
	<body>
    	<!-- Header -->
      
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
                                <li id="current"><a href="paymentdone.jsp">Payment done</a></li>
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
            <br/><br/><br/><br/><br/>
   
		<form action="../search_paymentdone.do">
			<select name="search">
			<option value="..."   >...</option>
			<option value="BookingDate">BookingDate</option>
			<option value="Name">Name</option>
			<option value="Email">Email</option>
			<option value="LengthOfStay">LengthOfStay</option>
			<option value="Persons">Persons</option>
			
		</select>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		Value : <input type="text" id="value" name="value"/>
			<input type="submit" value="search" />
		
		</form>
		<br/><br/><br/>
		
		<display:table  id="data" name="sessionScope.data" pagesize="10" export="true" >
	<display:caption><h3>Booking Requests</h3></display:caption>
	<display:column property="id" title="id" sortable="true"/>
	<display:column property="name" title="Name" sortable="true" />
	<display:column property="surname" title="Surname" sortable="true" />
	<display:column property="email" title="Email" sortable="true"/>
	<display:column property="lengthofstay" title="LengthIOfStay" sortable="true"/>
	<display:column property="phoneno" title="PhoneNo" sortable="true"/>
	<display:column property="persons" title="Persons" sortable="true"/>
	<display:column property="payment" title="TransactionID" sortable="true"/>
	<display:column property="bookingdate" title="BookingDate" sortable="true"/>
    <display:setProperty name="export.excel.filename" value="bookingReq.xls"/>
    <display:setProperty name="export.pdf.filename" value="bookingReq.pdf"/>
    <display:setProperty name="export.pdf" value="true" />
    
    </display:table><br>
		
	</body>
</html>

