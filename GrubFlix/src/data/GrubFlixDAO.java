package data;

import java.util.List;

import entities.Customers;
import entities.DVDs;

public interface GrubFlixDAO {
	
	
	public DVDs getDVD(int id);

	public String getDVDGenre(int id);

	public String getFoodType(int id);

	public List<DVDs> getMovieByGenre(String genre, int limit);

	public int insertCust(Customers cust);
	
	public int deleteCust(Customers cust);
	
	public int updateCust(Customers cust);
	
//	public String getDVDStatus (int id);

}
