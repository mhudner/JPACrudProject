package com.skilldistillery.health.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.health.data.HealthDAO;
import com.skilldistillery.health.entities.HealthLog;

@Controller
public class HealthController {
	
	
	@Autowired
	private HealthDAO healthDAO;

	public HealthController(HealthDAO healthDAO) {
		this.healthDAO = healthDAO;
	}
	
	@GetMapping({"/", "index.do"})
	public String index() {
		return "index";
	}
	
	@PostMapping({"getHealth.do"})
	public String findById(@RequestParam("id")int id, Model model) {
	HealthLog healthlog = healthDAO.findById(id);
	model.addAttribute("healthLog", healthlog);
	return "views/showid";
	
	}
	
	@GetMapping({"getHealthUserName.do"})
	public String getByUserName(@RequestParam("userName")String userName, Model model) {
		List <HealthLog> health = healthDAO.findByUserName(userName);
		
		model.addAttribute("healthLogs",health);

	  return "views/showuser";
	}
	
	@PostMapping({"createLog.do"})
	public String createLog( @RequestParam("userName") String userName, @RequestParam("logDate") String logDate, @RequestParam("totalSteps") Integer totalSteps, @RequestParam("sleepMinutes") Integer sleepMinutes, @RequestParam("waterOunces") Integer waterOunces, @RequestParam("mood") String mood, Model model) {
		HealthLog log = new HealthLog();
		log.setUserName(userName);
		log.setLogDate(logDate);
		log.setTotalSteps(totalSteps);
		log.setSleepMinutes(sleepMinutes);
		log.setWaterOunces(waterOunces);
		log.setMood(mood);
		System.out.println("*******************************************************");
		healthDAO.createNewLog(log);
		return "index";
		
		
	}
	
	@PostMapping({"updateLog.do"})
	public String updateLog(@RequestParam("id")int id, HealthLog log, Model model) {
			healthDAO.updateExistingLog(log, id);
			System.out.println(id);
			System.out.println(log);
			System.out.println("USERNAME !!!!"+log.getUserName());
			return "views/showid";
		
	
	}

	
	@PostMapping("deleteLog.do")
	public String deleteLog(@RequestParam("id") Integer id) {
		healthDAO.deleteLog(id);
		return "redirect:/index.do";
	}


}	
	
