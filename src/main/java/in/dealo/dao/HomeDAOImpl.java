package in.dealo.dao;

import in.dealo.entity.Deal;


import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

@Repository
public class HomeDAOImpl implements HomeDAO {
	@PersistenceContext
	private EntityManager em;

	@Override
	public Deal getActiveDeal(Integer cityId) {
		Query q = em.createQuery("select d from Deal d where enabled=true and dealStatus.id=10 and startTime <= CURRENT_TIMESTAMP and endTime > CURRENT_TIMESTAMP and city.id=:cityId order by priority desc", Deal.class);
		q.setParameter("cityId", cityId);
		return (Deal)q.getSingleResult();
	}
	
}
