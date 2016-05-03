package data;

import java.util.List;

import entities.Customers;
import entities.DVDs;

public interface GrubFlixDAO {
	
	
	public DVDs getDVD(int id);

	public String getFoodType(int id);

	public List<DVDs> getMovieByGenre(String genre, int limit);

	public Customers insertCust(Customers cust);
	
	public Customers editCust(Customers cust);
	
	public Customers updateCust(Customers cust);

	public void deleteCust(Customers cust);
	
	 public List<List<String>> listDVDsByGenre ();

	
//	public String getDVDStatus (int id);

}
