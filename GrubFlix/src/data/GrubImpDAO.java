package data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.transaction.annotation.Transactional;

import entities.DVDs;

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

}


