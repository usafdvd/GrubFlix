package data;

import java.util.HashMap;
import java.util.List;

import entities.Customers;
import entities.DVDs;
import transfers.CustomerTO;

public interface GrubFlixDAO {

	public DVDs getDVD(String id);

	public HashMap<String, List<DVDs>> listDVDsByGenre();

	public String getFoodType(int id);

	public List<DVDs> getAllDVDs();

	public List<DVDs> getMovieByGenre(String genre, int limit);

	public Customers insertCust(CustomerTO cust);

	public Customers editCust(Customers cust);

	public Customers viewCust(String email);

	public Customers updateCust(Customers cust);

	public void deleteCust(String email);

	public Customers getCustomerById(String e);

	public boolean login(String e, String p);

	public List<Object> cart(String e);

	public List<DVDs> insertDVD(DVDs dvd);

	public DVDs editDVD(int id);

	public List<DVDs> updateDVD(DVDs dvd);

	public List<DVDs> deleteDVD(int id);

	public HashMap<String, List<DVDs>> listDVDsByGenre(String genreName);

	public List<DVDs> searchDVDByTitle(String title);
}
