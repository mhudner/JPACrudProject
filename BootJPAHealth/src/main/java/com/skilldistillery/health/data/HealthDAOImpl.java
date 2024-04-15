package com.skilldistillery.health.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.health.entities.HealthLog;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class HealthDAOImpl implements HealthDAO {
	
	
	@PersistenceContext
	private EntityManager em;
	

	@Override
	public HealthLog findById(int id) {
		// TODO Auto-generated method stub
		HealthLog health = em.find(HealthLog.class, id);
		return health;
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
	 public HealthLog updateExistingLog(HealthLog log, int id) {
		System.out.println("**********************************" + log);
        HealthLog newLog = em.find(HealthLog.class, id);
        		newLog.setUserName(log.getUserName());
        		newLog.setLogDate(log.getLogDate());
        		newLog.setTotalSteps(log.getTotalSteps());
        		newLog.setSleepMinutes(log.getSleepMinutes());
        		newLog.setWaterOunces(log.getWaterOunces());
        		newLog.setMood(log.getMood());
        		
           
    return newLog;
	}

	@Override
	public HealthLog deleteLog(int id) {  
		HealthLog log = em.find(HealthLog.class, id);
		if (log != null) {
			em.remove(log);
		}
		return log;

	}


}
