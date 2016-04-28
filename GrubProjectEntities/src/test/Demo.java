package test;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
//import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import entities.DVDs;

public class Demo {
	public static void main(String[] args) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("GrubProject");
		EntityManager em = emf.createEntityManager();
//		EntityTransaction et = em.getTransaction();
//		et.begin();
		
		List<DVDs> dvds = em.createQuery("Select d from DVDs d", DVDs.class)
				.getResultList();
		
		for (DVDs dvd : dvds) {
			System.out.println(dvd.getDvdTitle());
		}
		
		em.close();
		emf.close();
	}
}
