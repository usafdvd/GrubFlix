package controllers;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import data.GrubFlixDAO;
import entities.Customers;
import entities.DVDs;
import transfers.CustomerTO;

@Controller
public class controller1 {

	    @Autowired
	    private GrubFlixDAO gfDAO;
	    
//	    @RequestMapping(path="getDVD.do", method=RequestMethod.POST)
//	    public ModelAndView getDVD(int id){
//	    		
//	    	DVDs dvd = gfDAO.getDVD(id);
//	    	
//	    	System.out.println("inside controller" + dvd);
//	    	 return new ModelAndView("index.jsp", "dvd", dvd);
//	    }
//	    
	    
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
		    System.out.println("in list genre groups in controller");
		   ModelAndView mv = new ModelAndView();
	        mv.setViewName("movies.jsp");
	        mv.addObject("genreGroups", gfDAO.listDVDsByGenre());
	        
	        System.out.println("in list genre groups in controller");
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
