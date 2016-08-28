<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.*" %>
<%@ page import="java.util.*" %>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="POJO.*" %>
<%@ page import="javax.swing.JOptionPane" %>
<%@ page import="Mail.*" %>
<%@ page import="Hibernate.*" %>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'booking.jsp' starting page</title>
    
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
    
   String _name = request.getParameter("name"); 
   String _surname = request.getParameter("surname"); 
   String _email = request.getParameter("email"); 
   String _phone = request.getParameter("phone"); 
   String _lengthofstay = request.getParameter("lengthofstay"); 
   String _persons = request.getParameter("persons"); 
 	String dp=request.getParameter("datepicker"); 
//SimpleDateFormat dateformat = new SimpleDateFormat(&quot;yyyy-MM-dd&quot;); 
 
//String dateFormat = dateformat.format(new Date(datePicker.getYear(), datePicker.getMonth(), datePicker.getDayOfMonth())); 
 
  //Date _datepicker = format.parse(request.getParameter(&quot;datepicker&quot;)); 
   //Date dateNow = new Date(); 
   //dateNow = request.getParameter(&quot;datepicker&quot;); 
  //String hey = request.getParameter(&quot;cmt&quot;); 
  //SimpleDateFormat dateformatJava = new SimpleDateFormat(&quot;dd-MM-yyyy&quot;); 
 //String today = dateformatJava.format(dateNow); 
 
    
   UUID idOne = UUID.randomUUID(); 
   String uuid = idOne.toString(); 
    
    
    
    
   System.out.println(_name); 
   System.out.println(_email); 
   System.out.println(_phone); 
   System.out.println(_lengthofstay); 
   System.out.println(_persons); 
   System.out.println(dp); 
   System.out.println(uuid); 
   
   //System.out.println(_datepicker); 
   //System.out.println(hey); 
    
   Session session1 = HibernateUtil.getSessionFactory().openSession(); 
   Transaction t = session1.beginTransaction();
   
   Booking ob1 = new Booking();
   ob1.setName(_name);
   ob1.setSurname(_surname);
   ob1.setEmail(_email);
   ob1.setPhoneno(_phone);
   ob1.setLengthofstay(_lengthofstay);
   ob1.setPersons(_persons);
   ob1.setBookingdate(dp);
   ob1.setUUID(uuid);
   ob1.setStatus("0");
   ob1.setPayment("0");
   session1.save(ob1);
   
   
   
   t.commit();
   session1.close();
   //JOptionPane.showMessageDialog(null, "registred successfully");
    
    %>
    <jsp:forward page="index.html"></jsp:forward>
  </body>
</html>
