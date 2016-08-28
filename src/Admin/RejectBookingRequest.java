package Admin;

import org.hibernate.Query;
import org.hibernate.Transaction;

import Hibernate.HibernateUtil;

public class RejectBookingRequest {
	
	static int status=0;
	public static int RejectBookingRequest(int id)
	{
		org.hibernate.Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t = session.beginTransaction();
		String hql = "DELETE FROM Booking " + "WHERE id = :req_id";
		Query query = session.createQuery(hql); 
		query.setInteger("req_id", id); 
		status = query.executeUpdate();
		t.commit();
		session.close();
		
		return status;
	}

}
