package com.skilldistillery.health.entities;

import java.time.LocalDate;
import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

	@Entity
	@Table(name="health_log")
	public class HealthLog {    
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name= "user_name")
	private String userName;
	
	@Column(name= "log_date")
	private LocalDate logDate;
	
	@Column(name= "total_steps")  
	private int totalSteps;
	
	@Column(name= "sleep_minutes")
	private int sleepMinutes;
	
	@Column(name= "water_ounces")
	private int waterOunces;
	
	private String mood;
	
	public HealthLog() {}
	   
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public LocalDate getLogDate() {
		return logDate;
	}

	public void setLogDate(LocalDate logDate) {
		this.logDate = logDate;
	}

	public int getTotalSteps() {
		return totalSteps;
	}

	public void setTotalSteps(int totalSteps) {
		this.totalSteps = totalSteps;
	}

	public int getSleepMinutes() {
		return sleepMinutes;
	}

	public void setSleepMinutes(int sleepMinutes) {
		this.sleepMinutes = sleepMinutes;
	}

	public int getWaterOunces() {
		return waterOunces;
	}

	public void setWaterOunces(int waterOunces) {
		this.waterOunces = waterOunces;
	}

	public String getMood() {
		return mood;
	}

	public void setMood(String mood) {
		this.mood = mood;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		HealthLog other = (HealthLog) obj;
		return id == other.id;
	}


	@Override
	public String toString() {
		return "Health Log Id: " + id + "\nUsername: " + userName + "\nLog Date: " + logDate + "\nTotal Steps: " + totalSteps
				+ "\nSleep in Minutes: " + sleepMinutes + "\nWater in Ounces: " + waterOunces + "\nMood: " + mood;
	}

	
	
	
	
	
	

}
