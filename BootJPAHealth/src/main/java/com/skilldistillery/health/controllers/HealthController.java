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
	
	@GetMapping({"createLog.do"})
	public String createLog(HealthLog log, Model model) {
		healthDAO.createNewLog(log);
		model.addAttribute("healthLog" , log);
		return "views/addEntry";
		
	}
	
	@PostMapping({"updateLog.do"})
	public String updateLog(@RequestParam("id")int id, HealthLog log, Model model) {
			healthDAO.updateExistingLog(log, id);
			System.out.println("*******************************************************");
			System.out.println(id);
			System.out.println(log);
			System.out.println("USERNAME !!!!"+log.getUserName());
			return "views/showid";
		
	
	}

	
//	@GetMapping({"deleteLog.do"})
//	public String deleteLog(@RequestParam("id")int id, Model model) {
//	        	boolean itWorked = healthDAO.deleteLog(id);
//	        	  if (itWorked) {
//	                  model.addAttribute("message", "Log Id #: " + id + " have been deleted successfully.");
//	              } else {
//	                  model.addAttribute("error", "No log found with the id:  " + id + ".");
//	              }
//	              return "redirect:index";
//	
//	}
	
	@PostMapping("deleteLog.do")
	public String deleteSnack(@RequestParam("id") Integer id) {
		healthDAO.deleteLog(id);
		return "redirect:/index.do";
	}


}	
	
