package test;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import entities.Address;
import entities.CustomerOrder;
import entities.Customers;

public class Demo {


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

		Customers cust = em.find(Customers.class,"hello@tester.com");
		for (Address a: cust.getAddresses()) {
			System.out.println("removing: " + a.getName());
			em.remove(a);
		}
		for (CustomerOrder c: cust.getCustomerOrder()) {
			em.remove(c);
		}
		
		System.out.println(cust.getEmail());
		em.remove(cust);
		et.commit();
		
		
		
		
		
		em.close();
		emf.close();
	}
	
	
	

}
