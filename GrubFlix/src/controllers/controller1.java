package controllers;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import data.GrubFlixDAO;
import entities.Customers;
import entities.DVDs;
import transfers.CustomerTO;

@Controller
public class controller1 {

	    @Autowired
	    private GrubFlixDAO gfDAO;
	    
	    @RequestMapping(path="getDVD.do", params="id", method=RequestMethod.GET)
	    public ModelAndView getDVD(int id){
	    	ModelAndView mv = new ModelAndView();	
	    	DVDs dvd = gfDAO.getDVD(id);
	    	
	    	System.out.println("inside controller" + dvd);
	    	 //return new ModelAndView("DVDtest2.jsp", "dvd", dvd);
	    	mv.setViewName("DVDtest2.jsp");
			mv.addObject("dvd", dvd);
			return mv;
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
	        
	        System.out.println(gfDAO.listDVDsByGenre());
	        return mv;
	        
	    }
	   
	   
	   
	
	
	@RequestMapping(path = "createDVD.do", method = RequestMethod.GET)
	public ModelAndView createDVD(DVDs dvd) {
		ModelAndView mv = new ModelAndView();
		System.out.println("inside create customer");
	
		DVDs newDVD = gfDAO.insertDVD(dvd);
		mv.setViewName("DVDtest.jsp");
		mv.addObject("newDVD", newDVD);
		return mv;
	}
	
	@RequestMapping(path = "deleteDVD.do", method = RequestMethod.POST)
	public ModelAndView deleteDVD(DVDs dvd) {
		ModelAndView mv = new ModelAndView();
		System.out.println("inside deleting controller");
		//gfDAO.deleteDVD(dvd);
		mv.setViewName("DVDtest.jsp");
		mv.addObject("remove", gfDAO.deleteDVD(dvd));
		return mv;
	}
	
	@RequestMapping(path = "EditDVD.do")
	public ModelAndView editDVD(DVDs dvd) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("testindex.jsp");
		mv.addObject("profile", gfDAO.editDVD(dvd));
		return mv;
	}

	@RequestMapping(path = "updateCust.do", method = RequestMethod.POST)
	public ModelAndView updateCust(DVDs dvd) {
		ModelAndView mv = new ModelAndView();
		System.out.println("inside updating DVD");
		DVDs updateDVD = gfDAO.updateDVD(dvd);
		mv.setViewName("INSERT RESULT PAGE HERE");
		mv.addObject("RESULT PAGE HERE");
		return mv;
	}

	

}
