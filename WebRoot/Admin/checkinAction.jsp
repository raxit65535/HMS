<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="Admin.RejectBookingRequest"%>
<%@page import="org.hibernate.Session"%>
<%@page import="POJO.*"%>
<%@page import="Hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>

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
        		    <style type="text/css">

.leftNav
{
    width: 30%;
    height: 70%;
    float: left;
    margin-left: 50px;
   
}


</style>


<style type="text/css">
table.gridtable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #666666;
	border-collapse: collapse;
}
table.gridtable th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #dedede;
}
table.gridtable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #ffffff;
}
</style>

  
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
                                <li id="current"><a href="checkin.jsp">CheckIn</a></li>
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
           

  
  <body>
     <%
    String name = null;
	String surname= null;
	String phoneno= null;
	String email= null;
    String lengthofstay= null;
	String persons= null;
	String bookingdate= null;
	String UUID= null;
	String Status= null;
	String payment= null;
    
     
     String _transactionid = request.getParameter("transactionid");
     
     Session sess = HibernateUtil.getSessionFactory().openSession();
     Transaction  t = sess.beginTransaction();
     
     Query q = sess.createQuery("From Booking where payment = :p");
     q.setString("p",_transactionid);
     
     List<Booking> info = (List<Booking>)q.list();
     
   if(info.size()>0)
   {
     
     
     for(Booking e : info)
     {
     		name = e.getName();
     		surname = e.getSurname();
     		phoneno = e.getPhoneno();
     		email = e.getEmail();
     		lengthofstay = e.getLengthofstay();
     		bookingdate = e.getBookingdate();
     		persons = e.getPersons();
     		payment = e.getPayment();
     		UUID = e.getUUID();
     		
     				
     }
     
          int status = 0;
     String me = "checkedin";

      Session sess1 = HibernateUtil.getSessionFactory().openSession();
     Transaction  t1 = sess1.beginTransaction();
     
     Query q1 = sess1.createQuery("Update Booking set Status = :s where UUID = :p");
     q1.setString("p",UUID);
     q1.setString("s",me);
     status = q1.executeUpdate();
     t1.commit();
     sess1.close(); 
     
     
     
     %>
     <center>
     <table  class="gridtable" style="margin-top :70px">
<tr>
<th>
Name
</th>
<td>
<%=name %>
</td>
</tr>

<tr>
<th>
SurName
</th>
<td>
<%=surname %>
</td>
</tr>

<tr>
<th>
PhoneNo
</th>
<td>
<%=phoneno%>
</td>
</tr>

<tr>
<th>
Email
</th>
<td>
<%=email %>
</td>
</tr>


<tr>
<th>
Length of Stay
</th>
<td>
<%=lengthofstay %>
</td>
</tr>

<tr>
<th>
Booking Date
</th>
<td>
<%=bookingdate %>
</td>
</tr>

<tr>
<th>
No of Persons
</th>
<td>
<%=persons%>
</td>
</tr>

<tr>
<th>
Transaction Id
</th>
<td>
<%=payment %>
</td>
</tr>

</table>
</center>
     <%

   } 
     else
     {
     
     	%>
     	
     	<jsp:forward page="checkin.jsp"></jsp:forward>
     	<%
     }
      %>
  </body>
</html>
