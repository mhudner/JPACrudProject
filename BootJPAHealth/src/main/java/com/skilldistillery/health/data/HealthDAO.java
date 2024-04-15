package com.skilldistillery.health.data;

import java.util.List;

import com.skilldistillery.health.entities.HealthLog;

public interface HealthDAO {

	HealthLog findById(int id);

	List<HealthLog> findByUserName(String userName);

	HealthLog createNewLog(HealthLog log);

	HealthLog deleteLog(int id);


	HealthLog updateExistingLog(HealthLog log, int id);

}
