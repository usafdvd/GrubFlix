package controllers;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import data.Bio;
import data.GrubFlixDAO;
import entities.DVDs;
import entities.Customers;

@Controller
public class controller1 {


	    @Autowired
	    private GrubFlixDAO gfDAO;
	    
	    @RequestMapping(path="getDVD.do", method=RequestMethod.POST)
	    public ModelAndView getDVD(int id){
	    		
	    	DVDs dvd = gfDAO.getDVD(id);
	    	
	    	System.out.println("inside controller" + dvd);
	    	 return new ModelAndView("index.jsp", "dvd", dvd);
	    }
	    
	    @RequestMapping(path="searchByGenre.do", method=RequestMethod.GET)
	    public ModelAndView getMovieByGenre(String genre, int limit) {
	    	ModelAndView mv = new ModelAndView();
	    	List<DVDs> dvdList = gfDAO.getMovieByGenre(genre, limit);
	    	System.out.println("inside controller for genre search");
	    	mv.setViewName("testindex.jsp");
	    	mv.addObject("list", dvdList);
	    	return mv;
	    }
	    
	    @RequestMapping(path="createCust.do", method=RequestMethod.POST)
	    public ModelAndView createCust(Customers cust) {
	    	ModelAndView mv = new ModelAndView();
	    	System.out.println("inside create customer");
	    	Customers newCust = gfDAO.insertCust(cust);
	//    	mv.setViewName("INSERT RESULT PAGE HERE");
	//    	mv.addObject("RESULT PAGE HERE", newCust);
	    	return mv;
	    }
	    
	    @RequestMapping(path = "EditCust.do")
		public ModelAndView editCust(Customers cust) {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("editCustomer.jsp");
			mv.addObject("profile", gfDAO.editCust(cust));
			return mv;
		}
	    
	    @RequestMapping(path="updateCust.do", method=RequestMethod.POST)
	    public ModelAndView updateCust(Customers cust) {
	    	ModelAndView mv = new ModelAndView();
	    	System.out.println("inside updating customer");
	    	Customers updatedCust = gfDAO.updateCust(cust);
	    	//    	mv.setViewName("INSERT RESULT PAGE HERE");
	    	//    	mv.addObject("RESULT PAGE HERE", updatedCust);
	    	    	return mv;	
	    }
	    
	    @RequestMapping(path="deleteCust.do", method=RequestMethod.GET)
	    public ModelAndView deleteCust(Customers cust) {
	    	ModelAndView mv = new ModelAndView();
	    	System.out.println("inside deleting controller");
	    	gfDAO.deleteCust(cust);
	    	mv.setViewName("INSERT PAGE RESULT HERE");
	    	return mv;
	    }
	    // CONSULT WITH TEAM ON BEST WAY TO ACCOMPLISH ORDER LIST
	    @RequestMapping(path="checkout.do", method=RequestMethod.POST)
	    public ModelAndView checkout(Customers order) {
	    	ModelAndView mv = new ModelAndView();
	    	System.out.println("inside checkout");
	    	gfDAO.updateCart
	    }
	    
	    @RequestMapping(path="addToCart.do", method=RequestMethod.POST)
	    public ModelAndView addToCart(Orders item) {
	    	
	    }
	    



	
}
