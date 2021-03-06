/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package Admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import Hibernate.HibernateUtil;
import POJO.Booking;

/** 
 * MyEclipse Struts
 * Creation date: 12-03-2013
 * 
 * XDoclet definition:
 * @struts.action path="/search_mycustomer" name="search_mycustomerForm" input="/Admin/search_mycustomer.jsp" scope="request" validate="true"
 */
public class Search_mycustomerAction extends Action {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		Search_mycustomerForm search_mycustomerForm = (Search_mycustomerForm) form;// TODO Auto-generated method stub
		String _search = search_mycustomerForm.getSearch();
		String _value = search_mycustomerForm.getValue();
		
		Session sess = HibernateUtil.getSessionFactory().openSession();
		Transaction t = sess.beginTransaction();
		
		if(_search.equals("Name"))
		{
			Query q = sess.createQuery("From Booking where name = :n  and Status !='0'");
			q.setString("n", _value);
			
			List<Booking> check = (List<Booking>)q.list();
			request.getSession().setAttribute("data", check);
			
			System.out.println("search complete...");
			
			
			return mapping.findForward("success");
		
		}
		else if(_search.equals("Email"))
		{
			Query q = sess.createQuery("From Booking where email = :n  and Status !='0'");
			q.setString("n", _value);
			
			List<Booking> check = (List<Booking>)q.list();
			request.getSession().setAttribute("data", check);
			
			System.out.println("search complete...");
			
			
			return mapping.findForward("success");
		}
		else if(_search.equals("BookingDate"))
		{
			Query q = sess.createQuery("From Booking where bookingdate = :n  and Status !='0'");
			q.setString("n", _value);
			
			List<Booking> check = (List<Booking>)q.list();
			request.getSession().setAttribute("data", check);
			
			System.out.println("search complete...");
			
			
			return mapping.findForward("success");
		}
		else if(_search.equals("Persons"))
		{
			Query q = sess.createQuery("From Booking where persons = :n  and Status !='0'");
			q.setString("n", _value);
			
			List<Booking> check = (List<Booking>)q.list();
			request.getSession().setAttribute("data", check);
			
			System.out.println("search complete...");
			
			
			return mapping.findForward("success");
		}
		else  if(_search.equals("checkedin"))
		{
			Query q = sess.createQuery("From Booking where Status ='checkedin'");
			//q.setString("n", _value);
			
			List<Booking> check = (List<Booking>)q.list();
			request.getSession().setAttribute("data", check);
			
			System.out.println("search complete...");
			
			
			return mapping.findForward("success");
			
		}
		else  if(_search.equals("checkedout"))
		{
			Query q = sess.createQuery("From Booking where and Status ='checkedout'");
			//q.setString("n", _value);
			
			List<Booking> check = (List<Booking>)q.list();
			request.getSession().setAttribute("data", check);
			
			System.out.println("search complete...");
			
			
			return mapping.findForward("success");
			
		}
		
		
		Query q = sess.createQuery("From Booking where lengthofstay = :n and Status !='0'");
		q.setString("n", _value);
		
		List<Booking> check = (List<Booking>)q.list();
		request.getSession().setAttribute("data", check);
		
		System.out.println("search complete...");
		
		
		return mapping.findForward("success");
		
	}
}