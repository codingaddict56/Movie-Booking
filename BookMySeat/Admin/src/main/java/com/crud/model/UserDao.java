package com.crud.model;



import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class UserDao {
	private Configuration con;
	private SessionFactory factory ;
	private Session session;
	private Transaction t;

	public void saveData(User u) {
		
		con = new Configuration().configure("hibernate.cfg.xml");
		factory = con.buildSessionFactory();
		session = factory.openSession();
		t = session.beginTransaction();
		session .save(u);
		t.commit();
		
	}

	
		public boolean login(User u) 
		{
			boolean flag = false;
			con = new Configuration().configure("hibernate.cfg.xml");
			factory = con.buildSessionFactory();
			session = factory.openSession();
			t = session.beginTransaction();
			List lis = session.createQuery("from User").list();
			Iterator it=lis.iterator();
			while(it.hasNext())
			{
				User obj = (User)it.next();
				if(obj.getUserEmail().equals(u.getUserEmail()) && obj.getPassword().equals(u.getPassword())) 
				{
					flag = true;
				}
			}
			return flag;
		}
	}


