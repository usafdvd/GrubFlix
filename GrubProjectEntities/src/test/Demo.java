package test;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
//import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import entities.DVDs;
import java.io.BufferedReader;
import java.io.FileReader;
import java.util.StringTokenizer;

public class Demo {
	public static void main(String[] args) {
//		     try { 
//					
//		       String csvFile = "Desktop/dvd_csv.txt";
//
//		       //create BufferedReader to read csv file
//		       BufferedReader br = new BufferedReader(new FileReader(csvFile));
//		       String line = "";
//		       StringTokenizer st = null;
//
//		       int lineNumber = 0; 
//		       int tokenNumber = 0;
//
//		       //read comma separated file line by line
//		       while ((line = br.readLine()) != null) {
//		         lineNumber++;
//
//		         //use comma as token separator
//		         st = new StringTokenizer(line, ",");
//
//		         while (st.hasMoreTokens()) {
//		           tokenNumber++;
//
//		           //display csv values
//		           System.out.print(st.nextToken() + "  ");
//		         }
//
//		         System.out.println();
//
//		         //reset token number
//		         tokenNumber = 0;
//		       }
//
//		     } catch (Exception e) {
//		       System.err.println("CSV file cannot be read : " + e);
//		     }
//		   }

		 
		
		
		
		
		
		
		
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("GrubProject");
		EntityManager em = emf.createEntityManager();
//		EntityTransaction et = em.getTransaction();
//		et.begin();
		
		List<DVDs> dvds = em.createQuery("Select d from DVDs d", DVDs.class)
				.getResultList();
		
		for (DVDs dvd : dvds) {
			System.out.println(dvd.getDvdTitle());
			System.out.println(dvd.getGenreName());
			System.out.println(dvd.getId());
		}
		
		em.close();
		emf.close();
	}
}
