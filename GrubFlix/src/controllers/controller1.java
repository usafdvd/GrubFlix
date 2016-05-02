package controllers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import data.GrubFlixDAO;
import entities.DVDs;

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


	
}
