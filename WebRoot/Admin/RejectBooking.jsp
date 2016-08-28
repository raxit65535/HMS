<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="Admin.RejectBookingRequest"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'RejectBooking.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<%
	
	String s1 = request.getQueryString(); 
	request.getSession().setAttribute("id",s1);
	String demo = (String)session.getAttribute("id");
	int id = Integer.parseInt(demo);
	
	RejectBookingRequest ob1 = new RejectBookingRequest();
	int status=ob1.RejectBookingRequest(id);
	%>

	<jsp:forward page="bookingRequests.jsp"></jsp:forward>
	
  </body>
</html>
