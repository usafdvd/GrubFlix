package data;

import java.util.List;

import entities.Customers;
import entities.DVDs;

public interface GrubFlixDAO {
	
	
	public DVDs getDVD(int id);

	public String getDVDGenre(int id);

	public String getFoodType(int id);

	public List<DVDs> getMovieByGenre(String genre, int limit);
	// Changed from int to Customers, discuss.
	public Customers insertCust(Customers cust);
	// Changed from int to String, discuss with team.
	public String deleteCust(Customers cust);
	// Changed from int to Customers, discuss.
	public Customers updateCust(Customers cust);
	
//	public String getDVDStatus (int id);

}
