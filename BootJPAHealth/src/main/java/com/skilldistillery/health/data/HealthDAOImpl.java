package com.skilldistillery.health.data;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.skilldistillery.health.entities.HealthLog;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;


@Repository
public class HealthDAOImpl implements HealthDAO {
	
	
	@PersistenceContext
	private EntityManager em;
	

	@Override
	public HealthLog findById(int id) {
		// TODO Auto-generated method stub
		return em.find(HealthLog.class, 1);
	}

	@Override
	public List<HealthLog> findByUserName(String userName) {
	String jpql =  "SELECT h FROM HealthLog h WHERE h.userName = :userName";
	TypedQuery<HealthLog> query = em.createQuery(jpql,  HealthLog.class);
	query.setParameter("userName", userName);
   
   return query.getResultList();
   

}

	@Override
	public HealthLog createNewLog(HealthLog log) {
			em.persist(log);
			
			System.out.println("**********************************");
			
			return log;
	}

	@Override
	public boolean updateLog(HealthLog log) {
		boolean itWorked = false;
		HealthLog updatedLog = em.find(HealthLog.class, log.getId());
		
		updatedLog.setUserName(updatedLog.getUserName());
		updatedLog.setLogDate(updatedLog.getLogDate());
		updatedLog.setTotalSteps(updatedLog.getTotalSteps());
		updatedLog.setSleepMinutes(updatedLog.getSleepMinutes());
		updatedLog.setWaterOunces(updatedLog.getWaterOunces());
		updatedLog.setMood(updatedLog.getMood());
			System.out.println(updatedLog + " has been updated.");
		
			return itWorked;
	}

	@Override
	public boolean deleteLog(HealthLog log) {
		boolean itWorked = false;
		HealthLog foundLog = em.find(HealthLog.class, 1);
		
			em.remove(foundLog);
			System.out.println(foundLog + " has been removed.");
			return itWorked;

	}


}
