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
@SessionAttributes({ "cart", "size" })
public class controller1 {
	HashMap<String, List<DVDs>> result = new HashMap<>();
	ArrayList<DVDs> cart = new ArrayList<>();

	@Autowired
	private GrubFlixDAO gfDAO;

	@RequestMapping(path = "getDVD.do", method = RequestMethod.POST)
	public ModelAndView getDVD(String id) {

		DVDs dvd = gfDAO.getDVD(id);

		System.out.println("inside controller" + dvd);
		return new ModelAndView("index.jsp", "dvd", dvd);
	}

	@RequestMapping(path = "addDVD.do", method = RequestMethod.GET)
	public ModelAndView addDVD(DVDs dvd) {
		System.out.println("inside addDVD");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin.jsp");
		mv.addObject("dvds", gfDAO.insertDVD(dvd));
		return mv;
	}

	@RequestMapping(path = "editDVD.do")
	public ModelAndView editDVD(@RequestParam("id") int id) {
		System.out.println("in edit controller");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("edit-movie.jsp");
		mv.addObject("dvd", gfDAO.editDVD(id));
		System.out.println("after editDAO back in controller");
		return mv;
	}

	@RequestMapping(path = "updateDVD.do", method = RequestMethod.POST)
	public ModelAndView updateDVD(DVDs dvd) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin.jsp");
		mv.addObject("dvds", gfDAO.updateDVD(dvd));
		return mv;
	}

	@RequestMapping(path = "deleteDVD.do", method = RequestMethod.GET)
	public ModelAndView deleteDVD(@RequestParam("id") int id) {
		System.out.println(id);
		System.out.println("INSIDE DELETE DVD");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin.jsp");
		mv.addObject("dvds", gfDAO.deleteDVD(id));
		System.out.println("after DELETEDAO back in controller");
		return mv;
	}

	@RequestMapping(path = "searchDVD.do")
	public ModelAndView searchDVD(@RequestParam("words") String word) {
		ModelAndView mv = new ModelAndView();
		System.out.println(word);
		mv.setViewName("admin2.jsp");
		mv.addObject("dvds", gfDAO.searchDVDByTitle(word));
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

	@RequestMapping("viewMovie.do")
	public ModelAndView viewMovie(@RequestParam("id") String id) {
		System.out.println("id in controller" + id);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("view-movie.jsp");
		mv.addObject("dvd", gfDAO.getDVD(id));

		return mv;

	}

	@RequestMapping("listAllOfGenre.do")
	public ModelAndView listAllGenre(@RequestParam("genre") String genre) {
		System.out.println("list all of genre.do in controller" + genre);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("see-all.jsp");
		mv.addObject("genreGroups", gfDAO.listDVDsByGenre(genre));

		return mv;

	}

	@RequestMapping("listGenreGroups.do")
	public ModelAndView listGenreGroups() {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("movies.jsp");
		mv.addObject("genreGroups", gfDAO.listDVDsByGenre());

		return mv;

	}

	@RequestMapping(path = "login.do", method = RequestMethod.POST)
	public ModelAndView login(Model model, HttpSession session, @RequestParam("email") String email,
			@RequestParam("password") String password) {
		ModelAndView mv = new ModelAndView();

		boolean verify = gfDAO.login(email, password);

		String wrong = "Wrong Email or Password";

		if (verify == false) {

			mv.addObject("wrong", wrong);
			mv.setViewName("login.jsp");
			return mv;
		} else {

			Customers cust = gfDAO.getCustomerById(email);
			model.addAttribute("cust", cust);
			session.setAttribute("cust", cust);
			model.addAttribute("cart", new ArrayList<DVDs>());
			mv.addObject("size", cart.size());
			mv.setViewName("movies.jsp");
			mv.addObject("genreGroups", gfDAO.listDVDsByGenre());
		}

		return mv;
	}

	@RequestMapping(path = "createCust.do", method = RequestMethod.GET)
	public ModelAndView createCust(Model model, CustomerTO cust) {

		ModelAndView mv = new ModelAndView();
		System.out.println("inside create customer");
		System.out.println(cust.getFirstName());
		System.out.println(cust.getBirthDate());
		Customers newCust = gfDAO.insertCust(cust);

		model.addAttribute("cart", new ArrayList<DVDs>());
		mv.setViewName("movies.jsp");
		mv.addObject("genreGroups", gfDAO.listDVDsByGenre());

		return mv;
	}

	@RequestMapping(path = "EditCust.do", method = RequestMethod.POST)
	public ModelAndView editCust(@RequestParam("email")String email) {
		System.out.println(email);
		System.out.println("inside edit cust");
		ModelAndView mv = new ModelAndView();

		mv.setViewName("account.jsp");
		mv.addObject("profile", gfDAO.editCust(email));
		return mv;
	}

	@RequestMapping(path = "updateCust.do", method = RequestMethod.POST)
	public ModelAndView updateCust(CustomerTO cust) {
		System.out.println("inside updateCust controller");
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

	@RequestMapping(path = "viewCust.do", method = RequestMethod.GET)
	public ModelAndView viewCust(String email) {
		ModelAndView mv = new ModelAndView();
		System.out.println("inside view customer controller");
		System.out.println(email);
		mv.setViewName("testindex2.jsp");
		mv.addObject("profile", gfDAO.viewCust(email));
		System.out.println("back in view cust");
		return mv;
	}

	@RequestMapping(path = "addMovieToCart.do", method = RequestMethod.POST)
	public ModelAndView addToCart(Model model, @ModelAttribute("cart") ArrayList<DVDs> cart, HttpSession session,
			@RequestParam("dvdid") String id) {
		ModelAndView mv = new ModelAndView();
		DVDs dvd = gfDAO.getDVD(id);
		cart.add(dvd);
		model.addAttribute("size", cart.size());
		return listGenreGroups();
	}

	@RequestMapping(path = "removeFromCart.do", method = RequestMethod.POST)
	public ModelAndView removeFromCart(Model model, @ModelAttribute("cart") ArrayList<DVDs> cart, HttpSession session,
			@RequestParam("dvdid") String id) {
		ModelAndView mv = new ModelAndView();
		DVDs dvd = gfDAO.getDVD(id);
		ArrayList<DVDs> cart2 = new ArrayList<DVDs>();
		for (DVDs dd : cart) {
			System.out.println(dd);
			if (dd.getId() != dvd.getId()) {
				cart2.add(dd);
			}
		}

		mv.setViewName("checkout.jsp");
		model.addAttribute("cart", cart2);
		model.addAttribute("size", cart2.size());

		return mv;
	}

	@RequestMapping(path = "logout.do", method = RequestMethod.POST)
	public ModelAndView logout(Model model, @ModelAttribute("cart") ArrayList<DVDs> cart, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index.jsp");
		return mv;
	}

	@RequestMapping(path = "adminPower.do", method = RequestMethod.GET)
	public ModelAndView getDVDList() {
		ModelAndView mv = new ModelAndView();
		List<DVDs> dvdList = gfDAO.getAllDVDs();
		mv.setViewName("admin.jsp");
		mv.addObject("dvds", dvdList);
		return mv;
	}

}
