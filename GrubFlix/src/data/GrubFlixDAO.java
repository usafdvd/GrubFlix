package data;

import java.util.List;

import entities.Customers;
import entities.DVDs;
import transfers.CustomerTO;

public interface GrubFlixDAO {
	
	
	public DVDs getDVD(int id);

	public List<List<String>> listDVDsByGenre ();

	public String getFoodType(int id);
	
	public List<DVDs> getAllDVDs();

	public List<DVDs> getMovieByGenre(String genre, int limit);

	public Customers insertCust(CustomerTO cust);
	
	public Customers editCust(Customers cust);
	
	public Customers viewCust(String email);
	
	public Customers updateCust(Customers cust);

	public void deleteCust(Customers cust);
	 
	 public DVDs insertDVD (DVDs dvd);
	 
	 public DVDs editDVD (DVDs dvd);
	 
	 public DVDs updateDVD (DVDs dvd);
	 
	 public void deleteDVD (DVDs dvd);


}
