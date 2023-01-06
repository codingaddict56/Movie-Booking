package com.crud.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

//import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.crud.model.AdminDao;
import com.crud.model.Movie;
import com.crud.model.User;
import com.crud.model.UserDao;

@Controller
public class AdminController
{
	
	private ApplicationContext conn;
	//private AbstractApplicationContext conn;
	@RequestMapping("/home")
	public String view1(Model m) 
	{
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		Movie mov=conn.getBean("info", Movie.class);
		m.addAttribute("bean", mov);
		return "home";
	}
	
	@RequestMapping("/login")
	public String view12(Model m) 
	{
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		User mov=conn.getBean("infos", User.class);
		m.addAttribute("beans", mov);
		return "login";
	}
	
	 @RequestMapping("/sign")
	public String login(@ModelAttribute("bean") User u, HttpServletRequest request) 
	{
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		UserDao obj= conn.getBean("daos", UserDao.class);
		boolean flag = obj.login(u);
		if(flag) {
			User usr = conn.getBean("infos", User.class);
			usr.setUserEmail(u.getUserEmail());
			usr.setPassword(u.getPassword());
			usr.setFlag(1);
			HttpSession session = request.getSession();
			session.setAttribute("data", usr);
			return "movieHome";
		}
		else 
		{
			return "redirect:index.jsp";
		}
		
		
		
	} 
	
	@RequestMapping("/register")
	public String view2(Model m) 
	{
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		Movie mov=conn.getBean("info", Movie.class);
		m.addAttribute("bean", mov);
		return "register";
	}
	
	@RequestMapping("/store")
	public String view3(@ModelAttribute("bean") Movie m, Model mo)
	{
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		AdminDao obj= conn.getBean("dao", AdminDao.class);
		obj.saveData(m);
		mo.addAttribute("msg", "Record insert Successfully...");
		return "register";
		
	}
	@RequestMapping("/display")
	public String view4(Model m)
	{
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		AdminDao obj= conn.getBean("dao", AdminDao.class);
		List list = obj.displayData();
		if(!list.isEmpty())
		{
		m.addAttribute("data", list);
		}
		else
		{
			m.addAttribute("msg" , "Oops data not found...");
		}
		return "display";
	}
	
	@RequestMapping("/find")
	public String view5(Model m)
	{
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		Movie mov= conn.getBean("info",Movie.class);
		m.addAttribute("bean", mov );
		return "search";
		
	}
	
	@RequestMapping("/search")
	public String view5(@ModelAttribute("bean") Movie m, Model mo)
	{
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		AdminDao obj= conn.getBean("dao", AdminDao.class);
		List list = obj.searchData(m);
		if(!list.isEmpty())
		{
			mo.addAttribute("li", list);
		}
		else
		{
			mo.addAttribute("msg" , "Oops data not found...");
		}
		
		return "search";
		
	}
	
	@RequestMapping("/update")
	public String view6(@ModelAttribute("bean") Movie m, Model mo)
	{
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		AdminDao obj= conn.getBean("dao", AdminDao.class);
		obj.searchData(m);
		mo.addAttribute("msg", "Record Update Successfully");
		return "search";
	}
	
	@RequestMapping("/delete")
	public String view7(@ModelAttribute("bean") Movie m, Model mo)
	{
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		AdminDao obj= conn.getBean("dao", AdminDao.class);
		obj.deleteData(m);
		mo.addAttribute("msg", "Record Deleted Successfully");
		return "search";
	}
	
	@RequestMapping("/box")
	public String view8(Model m)
	{
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		Movie mov= conn.getBean("info",Movie.class);
		m.addAttribute("bean", mov );
		return "revenue";
		
	}
	
	@RequestMapping("/searchrevenue")
	public String view9(@ModelAttribute("bean") Movie m, Model mo)
	{
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		AdminDao obj= conn.getBean("dao", AdminDao.class);
		List list = obj.searchData(m);
		if(!list.isEmpty())
		{
			mo.addAttribute("lii", list);
		}
		else
		{
			mo.addAttribute("msg" , "Oops data not found...");
		}
		
		return "revenue";
		
	}
	
	@RequestMapping("/homes")
	public String view10(Model m) 
	{
		return "homes";
	}
	
	@RequestMapping("/reg")
	public String view11(Model m) 
	{
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		User u=conn.getBean("infos", User.class);
		m.addAttribute("beans", u);
		return "reg";
	}
	
	@RequestMapping("/storeUser")  
	public String view12(@ModelAttribute("beans") User u, Model mo)
	{
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		UserDao obj= conn.getBean("daos", UserDao.class);
		obj.saveData(u);
		mo.addAttribute("msg", "Registration Successfully...");
		return "reg";
		
	}
	
	@RequestMapping("/SearchMovie")
	public String view13(Model m) 
	{
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		Movie mov=conn.getBean("info", Movie.class);
		m.addAttribute("bean", mov);
		return "SearchMovie";
	}
	
	@RequestMapping("/finding")
	public String view15(Model m)
	{
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		Movie mov= conn.getBean("info",Movie.class);
		m.addAttribute("bean", mov );
		return "searchcust";
		
	}
	
	@RequestMapping("/searchcust")
	public String view15(@ModelAttribute("bean") Movie m, Model mo)
	{
		conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		AdminDao obj= conn.getBean("dao", AdminDao.class);
		List list = obj.searchData(m);
		if(!list.isEmpty())
		{
			mo.addAttribute("liii", list);
		}
		else
		{
			mo.addAttribute("msg" , "Oops data not found...");
		}
		
		return "searchcust";
		
	}
	
	 @RequestMapping("/book")
	    public ModelAndView view16()
	 {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("book");
		 
	        return mv;
	    }
	
	//code for display booking page after submitting book button
	 @RequestMapping("/bookt")
	    public ModelAndView view17(Model m)
	 {
		ModelAndView mv=new ModelAndView();
		
//	conn = new ClassPathXmlApplicationContext("ApplicationContext.xml");
//	AdminDao obj= conn.getBean("dao", AdminDao.class);
//		List list = obj.bookData(null);
//		
//		m.addAttribute("data", list);
		mv.setViewName("displaybook");
		 
	        return mv;
	    }
	
	

}
