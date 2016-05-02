package data;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

import entities.Customers;
import entities.DVDs;
import entities.Food;
import entities.Gender;

@Transactional
public class GrubImpDAO implements GrubFlixDAO {
	@PersistenceContext
	private EntityManager em;

	@Override
	public DVDs getDVD(int id) {
		DVDs dvd = em.find(DVDs.class, id);
//		em.detach(dvd);
		
		//System.out.println("id passed back from controller" + id);
		//System.out.println("inside jpa dao" + dvd.getDvdTitle());
		
		return dvd;
	}

	
    @Override
    public String getDVDGenre(int id) {
        DVDs dvd = em.find(DVDs.class, id);
        String name = dvd.getGenreName();
        return name;
    }
    
//    @Override
//    public String getDVDStatus (int id) {
//    	DVDs dvd = em.find(DVDs.class, id);
//    	String status = dvd.getStatus();
//    	return status;
//    }
    
    @Override
    public String getFoodType (int id) {
        Food food = em.find(Food.class, id);
        String foodType = food.getType();
        return foodType;    
    }
    
    @Override
    public List<DVDs> getMovieByGenre (String g, int l) {
         List<DVDs> dvdsByGenre = em.createQuery("SELECT dvd FROM DVDs dvd WHERE dvd.genreName = :genre", DVDs.class).setParameter("genre", g).setMaxResults(l).getResultList();
//         List<DVDs> dvdsByGenre = em.createQuery("SELECT dvd FROM DVDs dvd WHERE dvd.genreName = " + "\'" + g +"\'", DVDs.class).getResultList();
         System.out.println(dvdsByGenre);
         return dvdsByGenre;         
    }
    
    @Override
    public int insertCust (Customers cust) {
        
        String sql = "INSERT INTO customers( email, password, accessLevel, birthdate, firstName, lastName, gender, phone ) " + 
                "VALUES ( '" + cust.getEmail() + "', '" + cust.getPassword() + "', " + cust.getAccessLevel() + ", " + cust.getBirthDate() + 
                " '" + cust.getFirstName() +"', '" + cust.getLastName() + "', '" + cust.getGender() + "', " + cust.getPhone() + " )";
        
        int rowsAffected = em.createNativeQuery(sql, Customers.class).executeUpdate();
        
        return rowsAffected;
           
    }
    
    @Override
    public int deleteCust (Customers cust) {
    	
    	String sql = "DELETE customer from CUSTOMERS customer WHERE customer.email = :emailaddress";
    	String emailaddress = cust.getEmail();
    	int rowsAffected = em.createNativeQuery(sql, Customers.class).setParameter("emailaddress", emailaddress).executeUpdate();
    	return rowsAffected;
    
    }
    
    @Override
    public int updateCust (Customers cust) {
    	
    	String sql = "UPDATE CUSTOMERS customer set customer.email= :email, customer.password= :pw, customer.accessLevel= :al, customer.birthDate= :bd, customer.firstName= :fn, customer.lastName= :ln, customer.gender= :g, customer.phone= :pn";
    	String email = cust.getEmail();
    	String pw = cust.getPassword();
    	int al = cust.getAccessLevel();
    	Date bd = cust.getBirthDate();
    	String fn = cust.getFirstName();
    	String ln = cust.getLastName();
    	Gender g = cust.getGender();
    	int pn = cust.getPhone();
//    	cust.setEmail(email);
//    	cust.setPassword(pw);
//    	cust.setAccessLevel(al);
//    	cust.setBirthDate(bd);
//    	cust.setFirstName(fn);
//    	cust.setLastName(ln);
//    	cust.setGender(g);
//    	cust.setPhone(pn);
    	
    	int rowsAffected = em.createNativeQuery(sql, Customers.class).setParameter("email", email).setParameter("pw", pw).setParameter("al", al).setParameter("bd", bd).setParameter("fn", fn).setParameter("ln", ln).setParameter("g", g).setParameter("pn", pn).executeUpdate();
    	return rowsAffected;
    	
    }
    
   
}


