package test;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import entities.DVDs;

public class Demo {


	public static void main(String[] args) throws Exception {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("GrubProject");
		EntityManager em = emf.createEntityManager();
		// EntityTransaction et = em.getTransaction();
		// et.begin();
		 List<DVDs> dvdsByGenre = em.createQuery("SELECT dvd FROM DVDs dvd WHERE dvd.genreName = :genre", DVDs.class).setParameter("genre", "Comedy").setMaxResults(5).getResultList();
//		List<DVDs> dvds = em.createQuery("Select d from DVDs d", DVDs.class).getResultList();


		for (DVDs dvd : dvdsByGenre) {
			System.out.println(dvd.getDvdTitle());
			System.out.println(dvd.getGenreName());
			System.out.println(dvd.getId());
		}

		em.close();
		emf.close();
	}
	

}
