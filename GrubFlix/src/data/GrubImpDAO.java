package data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

import entities.Customers;
import entities.DVDs;
import entities.Food;

@Transactional
public class GrubImpDAO implements GrubFlixDAO {
	@PersistenceContext
	private EntityManager em;

	@Override
	public DVDs getDVD(int id) {
		DVDs dvd = em.find(DVDs.class, id);
//		em.detach(dvd);
		
		System.out.println("id passed back from controller" + id);
		System.out.println("inside jpa dao" + dvd.getDvdTitle());
		
		return dvd;
	}

	
    @Override
    public String getDVDGenre(int id) {
        DVDs dvd = em.find(DVDs.class, id);
        String name = dvd.getGenreName();
        return name;
    }
    
    @Override
    public String getFoodType (int id) {
        Food food = em.find(Food.class, id);
        String foodType = food.getType();
        return foodType;    
    }
    
    @Override
    public List<DVDs> getMovieByGenre (String genre) {
         List<DVDs> dvdsByGenre = em.createQuery("SELECT dvd FROM DVDs dvd WHERE dvd.genreid = :genre", DVDs.class).getResultList();
         System.out.println(dvdsByGenre);
         return dvdsByGenre;         
    }
    
    @Override
    public int insertCust (Customers cust) {
        
        String sql = "INSERT INTO customers( email, password, access_level, birthdate, firstname, lastname, gender, phone ) " + 
                "VALUES ( '" + cust.getEmail() + "', '" + cust.getPassword() + "', " + cust.getAccessLevel() + ", " + cust.getBirthDate() + 
                " '" + cust.getFirstName() +"', '" + cust.getLastName() + "', '" + cust.getGender() + "', " + cust.getPhone() + " )";
        
        int rowsAffected = em.createNativeQuery(sql, Customers.class).executeUpdate();
        
        return rowsAffected;
        
        
        
    }
}


