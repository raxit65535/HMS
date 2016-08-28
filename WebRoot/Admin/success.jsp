<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="Hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
    <head>
		<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title>Custom Login Form Styling</title>
       
		<!--[if lte IE 7]><style>.main{display:none;} .support-note .note-ie{display:block;}</style><![endif]-->
		<style>
			
			body {
				background: url(q.jpg) no-repeat center top;
				background-repeat:no-repeat;
				background-attachment:fixed;
				background-position:bottom; 
				
			}
			.container > header h1,
			.container > header h2 {
				color: #fff;
				text-shadow: 0 1px 1px rgba(0,0,0,0.7);
			}
		</style>
    </head>
    <body>
    <%
    
    String transactionID = request.getParameter("txn_id");
    HttpSession temp = request.getSession();
    
    String uuid = (String)temp.getAttribute("UID");
    //out.println("you transaction id is : "+transactionID);
    //out.println("kindly save it...!!!");
    //out.println("Customer's uuid is : "+uuid);
    
    if(uuid!=null)
    {
    
    Session sess = HibernateUtil.getSessionFactory().openSession();
    Transaction tr = sess.beginTransaction();
    Query q = sess.createQuery("Update Booking set payment =:p where UUID = :u");
    q.setString("p",transactionID);
    q.setString("u",uuid);
    int status = q.executeUpdate();
    tr.commit();
    sess.close(); 
    
   //temp.invalidate();
    
    }
    else
    {
    	response.sendRedirect("http://raxit:8080/HMS/booking.jsp");
    }
     %>
        <div class="container">
		 
		 <br/><br/><br/><br/><br/><br/>
		 <center><h1>Payment Conformation</h1></center>
		 <br/><br/><br/>
		 <center>Your TransactionID is  :  <%=transactionID %></center><br/>
		 <center><pre>kindly save It !! Thank you....!</pre></center>
		 
		 
			
                
            </div>
    
  </body>
</html>
