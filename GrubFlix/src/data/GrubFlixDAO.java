package data;

import java.util.List;

import entities.Customers;
import entities.DVDs;
import transfers.CustomerTO;

public interface GrubFlixDAO {
	
	
	public DVDs getDVD(int id);

	public String getFoodType(int id);

	public List<DVDs> getMovieByGenre(String genre, int limit);

	public Customers insertCust(CustomerTO cust);
	
	public Customers editCust(Customers cust);
	
	public Customers updateCust(Customers cust);

	public void deleteCust(Customers cust);

	
//	public String getDVDStatus (int id);

}
