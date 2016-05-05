package test;

import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import entities.Address;
import entities.Customers;
import entities.Gender;

public class Demo2 {


	public static void main(String[] args) throws Exception {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("GrubProject");
		EntityManager em = emf.createEntityManager();
		 EntityTransaction et = em.getTransaction();
		 et.begin();
//		 List<DVDs> dvdsByGenre = em.createQuery("SELECT dvd FROM DVDs dvd WHERE dvd.genreName = :genre", DVDs.class).setParameter("genre", "Comedy").setMaxResults(5).getResultList();
////		List<DVDs> dvds = em.createQuery("Select d from DVDs d", DVDs.class).getResultList();
//
//
//		for (DVDs dvd : dvdsByGenre) {
//			System.out.println(dvd.getDvdTitle());
//			System.out.println(dvd.getGenreName());
//			System.out.println(dvd.getId());
//		}

		 Customers newCust = new Customers();
			Address address = new Address();
			newCust.setEmail("hello@tester.com");
			newCust.setPassword("pw");
			newCust.setBirthDate(new Date());
			newCust.setAccessLevel(1);
			newCust.setFirstName("Don");
			newCust.setLastName("Green");
			newCust.setGender(Gender.M);
			newCust.setPhone(1231231234);
			address.setName("Home");
			address.setStreetAddress("145 Dreary Lane");
			address.setCity("Denver");
			address.setState("FL");
			address.setZip(99999);
			address.setCustomer(newCust);
			newCust.addAddress(address);
			em.persist(newCust);
			em.persist(address);
			et.commit();
		
		
		
		
		
		em.close();
		emf.close();
	}
	
	
	

}
