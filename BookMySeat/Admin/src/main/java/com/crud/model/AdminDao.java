package com.crud.model;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class AdminDao {

	private Configuration con;
	private SessionFactory factory ;
	private Session session;
	private Transaction t;
	public void saveData(Movie m) 
	{
		con = new Configuration().configure("hibernate.cfg.xml");
		factory = con.buildSessionFactory();
		session = factory.openSession();
		t = session.beginTransaction();
		session .save(m);
		t.commit();
		
	}
	public List displayData() {
		
		con = new Configuration().configure("hibernate.cfg.xml");
		factory = con.buildSessionFactory();
		session = factory.openSession();
		t = session.beginTransaction();
		List list = session.createQuery("from Movie").list();
		return list;
	}
	public List searchData(Movie m) 
	{
		List li=new ArrayList();
		con = new Configuration().configure("hibernate.cfg.xml");
		factory = con.buildSessionFactory();
		session = factory.openSession();
		t = session.beginTransaction();
		List list = session.createQuery("from Movie").list();
		Iterator it=list.iterator();
		while(it.hasNext())
		{
			Movie mov=(Movie)it.next();
			if((m.getMovieId()==mov.getMovieId()) || (m.getMovieName().equals(mov.getMovieName())  || (m.getLocation().equals(mov.getLocation()) )))
			{
				Movie obj=new Movie();
				obj.setMovieId(mov.getMovieId());
				obj.setMovieName(mov.getMovieName());
				obj.setCinemaHall(mov.getCinemaHall());
				obj.setLocation(mov.getLocation());
				obj.setLanguage(mov.getLanguage());
				li.add(obj);
			}
		}
		return li;
	}
	public void updateData(Movie m) 
	{
		con = new Configuration().configure("hibernate.cfg.xml");
		factory = con.buildSessionFactory();
		session = factory.openSession();
		t = session.beginTransaction();
		Movie obj = session.get(Movie.class, m.getMovieId());
		obj.setMovieName(m.getMovieName());
		obj.setCinemaHall(m.getCinemaHall());
		obj.setLocation(m.getLocation());
		obj.setLanguage(m.getLanguage());
		session.update(obj);
		t.commit();
	}
	public void deleteData(Movie m)
	{
		con = new Configuration().configure("hibernate.cfg.xml");
		factory = con.buildSessionFactory();
		session = factory.openSession();
		t = session.beginTransaction();
		Movie obj = session.get(Movie.class, m.getMovieId());
		session.delete(obj);
		t.commit();
	}
	
	/*
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
			if(obj.getEmail().equals(u.getEmail()) && obj.getPassword().equals(u.getPassword())) 
			{
				flag = true;
			}
		}
		return flag;
	}
*/
	

}
