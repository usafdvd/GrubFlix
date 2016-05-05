package controllers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import data.GrubFlixDAO;
import entities.Customers;
import entities.DVDs;
import transfers.CustomerTO;

@Controller
@SessionAttributes({"cart", "size"})
public class controller1 {
//	private ArrayList<DVDs> cart;

	
	

	    @Autowired
	    private GrubFlixDAO gfDAO;
	    
	    @RequestMapping(path="getDVD.do", method=RequestMethod.POST)
	    public ModelAndView getDVD(String id){
	    		
	    	DVDs dvd = gfDAO.getDVD(id);
	    	
	    	System.out.println("inside controller" + dvd);
	    	 return new ModelAndView("index.jsp", "dvd", dvd);
	    }
	    
	    
	@RequestMapping(path = "searchByGenre.do", method = RequestMethod.GET)
	public ModelAndView getMovieByGenre(String genre, int limit) {
		ModelAndView mv = new ModelAndView();
		List<DVDs> dvdList = gfDAO.getMovieByGenre(genre, limit);
		System.out.println("inside controller for genre search");
		mv.setViewName("testindex.jsp");
		mv.addObject("list", dvdList);
		return mv;
	}
 // THIS WORKS. DO NOT EDIT!!!!
	@RequestMapping(path = "createCust.do", method = RequestMethod.GET)
	public ModelAndView createCust(CustomerTO cust) {
		ModelAndView mv = new ModelAndView();
		System.out.println("inside create customer");
		System.out.println(cust.getFirstName());
		System.out.println(cust.getBirthDate());
		Customers newCust = gfDAO.insertCust(cust);
		mv.setViewName("account.jsp");
		mv.addObject("profile", newCust);
		return mv;
	}

	@RequestMapping(path = "EditCust.do")
	public ModelAndView editCust(Customers cust) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("testindex.jsp");
		mv.addObject("profile", gfDAO.editCust(cust));
		return mv;
	}

	@RequestMapping(path = "updateCust.do", method = RequestMethod.POST)
	public ModelAndView updateCust(Customers cust) {
		ModelAndView mv = new ModelAndView();
		System.out.println("inside updating customer");
		Customers updatedCust = gfDAO.updateCust(cust);
		 mv.setViewName("account.jsp");
		 mv.addObject("profile", updatedCust);
		return mv;
	}

	@RequestMapping(path = "deleteCust.do", method = RequestMethod.GET)
	public ModelAndView deleteCust(String email) {
		ModelAndView mv = new ModelAndView();
		System.out.println("inside deleting controller");
		gfDAO.deleteCust(email);
		System.out.println("in controller again");
		mv.setViewName("index.jsp");
		return mv;
	}
	
	
	
	@RequestMapping(path="viewCust.do", method=RequestMethod.GET)
	public ModelAndView viewCust(String email) {
		ModelAndView mv = new ModelAndView();
		System.out.println("inside view customer controller");
		System.out.println(email);
		mv.setViewName("testindex2.jsp");
		mv.addObject("profile", gfDAO.viewCust(email));
		System.out.println("back in view cust");
		return mv;
	}
	
	
	
	@RequestMapping(path="login.do", method=RequestMethod.POST)
	public ModelAndView login( Model model, @ModelAttribute("cart") ArrayList<DVDs> cart, HttpSession session, @RequestParam("email") String email, @RequestParam("password")String password){
		ModelAndView mv = new ModelAndView();
		
		boolean verify = gfDAO.login(email, password); 
		
		String wrong = "Wrong Email or Password";
		
		if(verify == false){
		
			mv.addObject("wrong", wrong);
			mv.setViewName("login.jsp");
			return mv;
		}
		else{
			
			Customers cust = gfDAO.getCustomerById(email);
			
			model.addAttribute("cart", new ArrayList<DVDs>());
			
//			session.setAttribute("cust", cust);
			mv.addObject("size", cart.size());
			
//	
			
			
			mv.setViewName("movies.jsp");
		    mv.addObject("genreGroups", gfDAO.listDVDsByGenre());
		}
		    
		    
		    
			return mv;
		}
	

	
	
	
	@RequestMapping(path="addMovieToCart.do", method=RequestMethod.POST)
	public ModelAndView addToCart(Model model, @ModelAttribute("cart") ArrayList<DVDs> cart, HttpSession session, @RequestParam("dvdid") String id) {
		ModelAndView mv = new ModelAndView();
		DVDs dvd = gfDAO.getDVD(id);
		System.out.println(dvd);
		
		System.out.println("----------------------ADDING MOVIE TO CART---"
				+ "---------------dvd passed in--------------" + dvd + "------------"
						+ "---------------------------------");
		

		
		
		System.out.println(dvd.getDvdTitle());
		
		cart.add(dvd);
		
		model.addAttribute("size", cart.size());
		System.out.println(dvd.getId());
		System.out.println(cart.size());
		
		for (DVDs dv : cart) {
			System.out.println("----xx------" + dv + "-----------x--------");
		}
		
		
		
//		int itemCount = cart.size();
//		session.setAttribute("itemCount", itemCount);
//		mv.addObject("genreGroups", gfDAO.getAllDVDs());
//		mv.setViewName("movies.jsp");
	

		
		return listGenreGroups();
	}
	

	@RequestMapping(path="logout.do", method=RequestMethod.POST)
	public ModelAndView logout(Model model, @ModelAttribute("cart") ArrayList<DVDs> cart, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		session.invalidate();
		cart.clear();
		mv.setViewName("index.jsp");
		return mv;
	}
	
	
	
	
	
		
		
		
//		session.invalidate();
		
//		
//		List shoppingCart = dao.getAllItems();
//		session.setAttribute("shoppingCart",  shoppingCArt);
//		session.removeAttribute("shoppingCart");
//		List shoppingCArt = dao.getAllItems();
//		session.setAttribute("shoppingCart",  shoppingCArt);
		
		

	
	
	
	
	
	
	
	
	// CONSULT WITH TEAM ON BEST WAY TO ACCOMPLISH ORDER LIST
	// @RequestMapping(path="checkout.do", method=RequestMethod.POST)
	// public ModelAndView checkout(Customers order) {
	// ModelAndView mv = new ModelAndView();
	// System.out.println("inside checkout");
	// gfDAO.updateCart
	// }
	//
	// @RequestMapping(path="addToCart.do", method=RequestMethod.POST)
	// public ModelAndView addToCart(Orders item) {
	//
	// }
	
	



		HashMap<String, List<DVDs>> result = new HashMap<>();
	
	   @RequestMapping("listGenreGroups.do")
	    public ModelAndView listGenreGroups(){
		   
		   ModelAndView mv = new ModelAndView();
	        mv.setViewName("movies.jsp");
	        mv.addObject("genreGroups", gfDAO.listDVDsByGenre());
	   
	        return mv;
	        
	    }
	   
	   @RequestMapping("listAllOfGenre.do")
	    public ModelAndView listAllGenre(@RequestParam("genre")String genre){
		   System.out.println("list all of genre.do in controller" + genre);
		 
		   ModelAndView mv = new ModelAndView();
	        mv.setViewName("see-all.jsp");
	        mv.addObject("genreGroups", gfDAO.listDVDsByGenre(genre));
	        
	 

	        return mv;
	        
	    }
	   
	   @RequestMapping("viewMovie.do")
	    public ModelAndView viewMovie(@RequestParam("id")String id){
		   System.out.println("id in controller" + id);
		 
		   ModelAndView mv = new ModelAndView();
	        mv.setViewName("view-movie.jsp");
	        mv.addObject("dvd", gfDAO.getDVD(id));

	        return mv;
	        
	    }
	
	
	
	
	
	
	

}

