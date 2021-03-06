package data;

import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

import entities.Address;
import entities.CustomerOrder;
import entities.Customers;
import entities.DVDs;
import entities.Food;
import transfers.CustomerTO;

@Transactional
public class GrubImpDAO implements GrubFlixDAO {
	private List<Customers> customers = new ArrayList<>();

	private List<DVDs> dvds = new ArrayList<>();
	@PersistenceContext
	private EntityManager em;

	@Override
	public DVDs getDVD(String id) {
		int dvdId = Integer.parseInt(id);
		DVDs dvd = em.find(DVDs.class, dvdId);
		System.out.println(dvd.getDvdTitle());
		return dvd;
	}

	@Override
	public List<DVDs> getAllDVDs() {
		List<DVDs> dvds = em.createQuery("SELECT dvd FROM DVDs dvd", DVDs.class).getResultList();
		return dvds;
	}

	@Override
	public HashMap<String, List<DVDs>> listDVDsByGenre() {

		HashMap<String, List<DVDs>> result = new HashMap<>();
		List<String> genres = em.createQuery("SELECT DISTINCT dvds.genreName FROM DVDs dvds", String.class)
				.getResultList();
		String s = "http://www.omdbapi.com/?i=&t=";
		URLConnection urlConnection;

		for (String genre : genres) {
			List<DVDs> dvdByGenre = em
					.createQuery("SELECT dvd from DVDs dvd where dvd.genreName='" + genre + "'", DVDs.class)
					.setMaxResults(6).getResultList();
			// for each DVD:
			for (DVDs dvd : dvdByGenre) {
				try {

					String dvdTitle = dvd.getDvdTitle();
					dvdTitle = dvdTitle.replaceAll(" ", "+");

					urlConnection = new URL(s + dvdTitle).openConnection();
					byte[] bytes = new byte[urlConnection.getContentLength()];
					urlConnection.getInputStream().read(bytes);
					String json = new String(bytes);
					int start = json.indexOf("Poster");
					int posterStart = json.indexOf(':', start) + 2;
					int posterEnd = json.indexOf('"', posterStart);
					String url = json.substring(posterStart, posterEnd);
					if (!url.startsWith("http")) {
						url = "img/no-image.jpg";
					}
					dvd.setPosterURL(url);
					System.out.println(url);

				} catch (Exception e) {
					e.printStackTrace();
				}
			}

			result.put(genre, dvdByGenre);

		}
		System.out.println(result);
		return result;
	}

	@Override
	public List<DVDs> getMovieByGenre(String g, int l) {
		List<DVDs> dvdsByGenre = em.createQuery("SELECT dvd FROM DVDs dvd WHERE dvd.genreName = :genre", DVDs.class)
				.setParameter("genre", g).setMaxResults(l).getResultList();
		return dvdsByGenre;
	}

	@Override
	public HashMap<String, List<DVDs>> listDVDsByGenre(String genreName) {

		HashMap<String, List<DVDs>> result = new HashMap<>();

		List<String> gn = new ArrayList<String>();
		gn.add(genreName);
		List<String> genres = gn;
		String s = "http://www.omdbapi.com/?i=&t=";
		URLConnection urlConnection;

		for (String genre : genres) {
			List<DVDs> dvdByGenre = em
					.createQuery("SELECT dvd from DVDs dvd where dvd.genreName='" + genreName + "'", DVDs.class)
					.getResultList();
			for (DVDs dvd : dvdByGenre) {
				try {

					String dvdTitle = dvd.getDvdTitle();
					dvdTitle = dvdTitle.replaceAll(" ", "+");

					urlConnection = new URL(s + dvdTitle).openConnection();
					byte[] bytes = new byte[urlConnection.getContentLength()];
					urlConnection.getInputStream().read(bytes);
					String json = new String(bytes);
					int start = json.indexOf("Poster");
					int posterStart = json.indexOf(':', start) + 2;
					int posterEnd = json.indexOf('"', posterStart);
					String url = json.substring(posterStart, posterEnd);
					if (!url.startsWith("http")) {
						url = "img/no-image.jpg";
					}
					dvd.setPosterURL(url);

				} catch (Exception e) {
					e.printStackTrace();
				}
			}

			result.put(genre, dvdByGenre);

		}
		System.out.println(result);
		return result;
	}

	@Override
	public List<DVDs> insertDVD(DVDs dvd) {
		DVDs newDVD = new DVDs();
		newDVD.setDvdTitle(dvd.getDvdTitle());
		newDVD.setRating(dvd.getRating());
		newDVD.setGenreName(dvd.getGenreName());
		em.persist(newDVD);
		List<DVDs> updatedList = getAllDVDs();
		return updatedList;
	}

	@Override
	public DVDs editDVD(int id) {
		System.out.println("in editDAO before the find");
		DVDs managedDVD = em.find(DVDs.class, id);
		System.out.println("in editDAO after the find");
		return managedDVD;
	}

	@Override
	public List<DVDs> updateDVD(DVDs dvd) {
		DVDs managedDVD = em.find(DVDs.class, dvd.getId());
		managedDVD.setDvdTitle(dvd.getDvdTitle());
		managedDVD.setGenreName(dvd.getGenreName());
		managedDVD.setRating(dvd.getRating());
		List<DVDs> updatedList = getAllDVDs();
		return updatedList;
	}

	@Override

	public List<DVDs> deleteDVD(int id) {
		DVDs removedDVD = em.find(DVDs.class, id);

		em.remove(removedDVD);
		List<DVDs> updatedList = getAllDVDs();
		return updatedList;

	}

	@Override
	public List<DVDs> searchDVDByTitle(String title) {

		List<DVDs> selectedDVD = em
				.createQuery("SELECT dvd from DVDs dvd where lower(dvd.dvdTitle) like lower('%" + title + "%')",
						DVDs.class)
				.getResultList();
		return selectedDVD;

	}

	@Override
	public Customers insertCust(CustomerTO cust) {
		Customers newCust = new Customers();
		Address address = new Address();
		newCust.setEmail(cust.getEmail());
		newCust.setPassword(cust.getPassword());
		newCust.setBirthDate(cust.getBD());
		newCust.setAccessLevel(cust.getAccessLevel());
		newCust.setFirstName(cust.getFirstName());
		newCust.setLastName(cust.getLastName());
		newCust.setGender(cust.getGender());
		newCust.setPhone(cust.getPhone());
		address.setName(cust.getName());
		address.setStreetAddress(cust.getStreetAddress());
		address.setCity(cust.getCity());
		address.setState(cust.getState());
		address.setZip(cust.getZip());
		address.setCustomer(newCust);
		newCust.addAddress(address);
		em.persist(newCust);
		em.persist(address);
		return newCust;
	}

	@Override
	public Customers viewCust(String email) {
		System.out.println("inside viewCustDAO");
		customers = em.createQuery("SELECT cust FROM Customers cust", Customers.class).getResultList();
		System.out.println("after query");
		Customers cust = null;
		for (Customers custX : customers) {
			System.out.println("inside for loop");
			System.out.println(custX.getEmail());
			System.out.println("email:" + email);
			if (custX.getEmail().equalsIgnoreCase(email)) {
				System.out.println("inside if statement");
				cust = custX;
				System.out.println(cust);
				break;
			}
		}

		System.out.println(cust);
		return cust;
	}

	@Override
	public Customers editCust(String email) {
		Customers managedCust = em.find(Customers.class, email);
		return managedCust;
	}

	@Override
	public Customers updateCust(CustomerTO cust) {
		Customers managedCust = em.find(Customers.class, cust.getEmail());
		System.out.println("in updateCust DAO");
		managedCust.setEmail(cust.getEmail());
		managedCust.setPassword(cust.getPassword());
		managedCust.setBirthDate(cust.getBD());
		managedCust.setFirstName(cust.getFirstName());
		managedCust.setLastName(cust.getLastName());
		managedCust.setGender(cust.getGender());
		managedCust.setPhone(cust.getPhone());
		return managedCust;

	}

	@Override
	public void deleteCust(String email) {
		System.out.println("before");
		Customers removedCust = (Customers) (em.createQuery("SELECT c from Customers c where c.email = :email")
				.setParameter("email", email).getSingleResult());
		for (Address a : removedCust.getAddresses()) {
			System.out.println("removing: " + a.getName());
			em.remove(a);
		}
		for (CustomerOrder c : removedCust.getCustomerOrder()) {
			em.remove(c);
		}

		System.out.println(removedCust.getEmail());
		em.remove(removedCust);

	}

	@Override
	public boolean login(String e, String p) {
		System.out.println("dao passed in email: " + e + "passed in password: " + p);

		boolean verify;

		Customers cust = (Customers) (em.createQuery("SELECT c from Customers c where c.email = :email")
				.setParameter("email", e).getSingleResult());
		System.out.println("data base get cust by email: " + cust);
		System.out.println("data base get password: " + cust.getPassword());

		if (p.equals(cust.getPassword())) {
			verify = true;
		} else {
			verify = false;
		}

		return verify;
	}

	public Customers getCustomerById(String e) {

		Customers cust = (Customers) (em.createQuery("SELECT c from Customers c where c.email = :email")
				.setParameter("email", e).getSingleResult());

		return cust;
	}

	@Override
	public List<Object> cart(String e) {

		List cart = new ArrayList();

		return cart;
	}

	@Override
	public String getFoodType(int id) {
		Food food = em.find(Food.class, id);
		String foodType = food.getType();
		return foodType;
	}

}
