package data;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

import entities.Address;
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
	public DVDs getDVD(int id) {
		DVDs dvd = em.find(DVDs.class, id);
		// em.detach(dvd);
		return dvd;
	}
    
    @Override
    public String getFoodType (int id) {
        Food food = em.find(Food.class, id);
        String foodType = food.getType();
        return foodType;    
    }
    
    @Override
    public List<DVDs> getAllDVDs () {
    	dvds = em.createQuery("SELECT dvd FROM DVDs dvd", DVDs.class).getResultList();
    	return dvds;
    }
    
    @Override
    public List<DVDs> getMovieByGenre (String g, int l) {
         List<DVDs> dvdsByGenre = em.createQuery("SELECT dvd FROM DVDs dvd WHERE dvd.genreName = :genre", DVDs.class)
        		 .setParameter("genre", g).setMaxResults(l).getResultList();
         return dvdsByGenre;         
    }
    
    @Override
    
    // CHECK WITH TEAM ON WHETHER THIS SHOULD RETURN A CUSTOMER OR INT. PROBABLY CUSTOMER. EXECUTE QUERY?
    public Customers insertCust (CustomerTO cust) {
        Customers newCust = new Customers();
        Address address = new Address();
        newCust.setEmail(cust.getEmail());
        newCust.setPassword(cust.getPassword());
        newCust.setBirthDate(cust.getBirthDate());
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
        address.setCustomerEmail(newCust.getEmail());
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
	//	Customers managedCust = em.find(Customers.class, cust);
		System.out.println(cust);
		return cust;
	}
    
    @Override
    public Customers editCust (Customers cust) {
    	Customers managedCust = em.find(Customers.class, cust);
    	return managedCust;
    }
    
    @Override
    public Customers updateCust (Customers cust) {
    	Customers managedCust = em.find(Customers.class, cust.getEmail());
    	managedCust.setEmail(cust.getEmail());
    	managedCust.setPassword(cust.getPassword());
    	// REMOVED ACCESS LEVEL CHANGES, SHOULDN'T BE ABLE TO CHANGE THEM.
    	managedCust.setBirthDate(cust.getBirthDate());
    	managedCust.setFirstName(cust.getFirstName());
    	managedCust.setLastName(cust.getLastName());
    	managedCust.setGender(cust.getGender());	
    	managedCust.setPhone(cust.getPhone());
    	return managedCust;
    	
    }
    
    @Override
    // POSSIBLY RETURNING STRING SAYING CUSTOMER WAS DELETED. IF STATEMENT IS SUCCESSFUL??
    public void deleteCust (Customers cust) {
    	Customers removedCust = em.find(Customers.class, cust);
    	em.remove(removedCust);
    
    }
    
 
    
 
    @Override
    public List<List<String>> listDVDsByGenre () {
    	
    	List<List<String>> result = new ArrayList();
    	List<String> genreList = new ArrayList();
    	List<String> genres = em.createQuery("SELECT DISTINCT genreid FROM DVDs dvds", String.class).getResultList();
    	
    		for(String genre : genres) {
    			genreList.add(genre);
    		}
    		
    		for (String genre : genreList) {
    			List<String> dvdByGenre = em.createQuery("SELECT dvd.dvdTitle from DVDs dvd where dvd.genreName='" + genre + "'" , String.class).getResultList();	
    			result.add(dvdByGenre);
    		}
    		return result;
    }
    
    @Override
    public DVDs insertDVD (DVDs dvd) {
    	DVDs newDVD = new DVDs();
    	newDVD.setDvdTitle(dvd.getDvdTitle());
    	newDVD.setRating(dvd.getRating());
    	newDVD.setGenreName(dvd.getGenreName());
    	em.persist(newDVD);
    	return newDVD;
    }
    
    @Override
    public DVDs editDVD (DVDs dvd) {
    	DVDs managedDVD = em.find(DVDs.class, dvd);
    	return managedDVD;
    }
    
    @Override
    public DVDs updateDVD (DVDs dvd) {
    	DVDs managedDVD = em.find(DVDs.class, dvd.getId());
    	managedDVD.setDvdTitle(dvd.getDvdTitle());
    	managedDVD.setGenreName(dvd.getGenreName());
    	managedDVD.setRating(dvd.getRating());
        return managedDVD;	
    }
    
    @Override
    // POSSIBLY RETURNING STRING SAYING DVD WAS DELETED. IF STATEMENT IS SUCCESSFUL??
    public void deleteDVD (DVDs dvd) {
    	DVDs removedDVD = em.find(DVDs.class, dvd);
    	em.remove(removedDVD);
    
    }   
   

}
