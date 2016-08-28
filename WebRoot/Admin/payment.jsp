<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="Hibernate.*"%>
<%@page import="Hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="POJO.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>payment</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body onload="document.forms['paypalForm'].submit();">
    <%
    
    String uuid = request.getQueryString();
    HttpSession temp = request.getSession();
    temp.setAttribute("UID",uuid);
    
    String stay = null;
    String persons = null;
    Session sess =  HibernateUtil.getSessionFactory().openSession();
    Transaction t = sess.beginTransaction();
    
    Query q = sess.createQuery("From Booking where UUID = :i");
    q.setString("i",uuid);
    
    List<Booking> booking = (List<Booking>)q.list();
    
    for(Booking e : booking)
    {
    	stay = e.getLengthofstay();
    	persons = e.getPersons();
    }
       
    int s = Integer.parseInt(stay);
    int pay = 100*s;
    String payment = Integer.toString(pay);
    
   System.out.println(payment);
     %>
     
     <form name="paypalForm" action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
     <input type="text" name="cmd" value="_xclick" />
     <input type="text" name="business" value="raxit.deadlock-facilitator@gmail.com" />
     <input type="text" name="item_name" value="Length of Stay" />
     <input type="text" name="amount" value="<%=payment %>" />
     <input type='hidden' name='handling' value='0'>
    
    <input type="hidden" name="rm" value="2">
    <input type="hidden" name="UUID" value="<%=uuid %>">
    <input type="hidden" name="tx" value="TransactionID">
    <input type='hidden' name='cancel_return' value="http://raxit:8080/HMS/Admin/failure.jsp">
    <input type='hidden' name='return' value="http://raxit:8080/HMS/Admin/success.jsp">
     <input type="text" name="cert_id" value="API Singature" />
    <input type="image" name="submit" border="0"
src="https://www.paypal.com/en_US/i/btn/btn_buynow_LG.gif" alt="PayPal - The safer, easier way to pay online">
<img alt="" border="0" width="1" height="1" src="https://www.paypal.com/en_US/i/scr/pixel.gif" >    
     
</form>
  </body>
</html>
