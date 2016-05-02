package data;

import java.util.List;

import entities.Customers;
import entities.DVDs;

public interface GrubFlixDAO {
	
	
	public DVDs getDVD(int id);

	String getDVDGenre(int id);

	String getFoodType(int id);

	List<DVDs> getMovieByGenre(String genre);

	int insertCust(Customers cust);
	

}
