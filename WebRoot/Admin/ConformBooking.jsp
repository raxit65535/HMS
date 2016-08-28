<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="Mail.*" %>
<%@page import="org.hibernate.Session"%>
<%@page import="Hibernate.HibernateUtil"%>


<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="POJO.Booking"%>
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


<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ConformBooking.jsp' starting page</title>
    
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
	String _email = null;
	String _uuid = null;
	
	Session rax = HibernateUtil.getSessionFactory().openSession();
	Transaction t = rax.beginTransaction();
	Query 	q =  rax.createQuery("From Booking where id = :i");
	q.setString("i",s1);
	
	List<Booking> rec = (List<Booking>)q.list();
	
	for(Booking l : rec)
	{
		_email = l.getEmail();	
		_uuid = l.getUUID();
	}
	
		
	Mail m = new Mail();
			
			m.setTo(_email);
			m.setSmtpServ("smtp.gmail.com");
			m.setSubject("Booking Conformed ");
			m.setMessage("http://raxit:8080/HMS/Admin/payment.jsp?"+_uuid);
			_email = m.getTo();
			m.setFrom("MYHOTEL");
			int result;


			result = m.sendMail();


 			if(result == 0)
			{
			   
			 System.out.println(" Mail Successfully Sent to "+_email);
			 %>
			 <jsp:forward page="search_Booking.jsp"></jsp:forward>
			 <%
			}
  %>
  <jsp:forward page="mailsendError.jsp"></jsp:forward>
  
  </body>
</html>
