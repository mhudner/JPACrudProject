package com.skilldistillery.health.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.health.data.HealthDAO;
import com.skilldistillery.health.entities.HealthLog;

@Controller

public class HealthController {
	
	
	
	private HealthDAO healthDAO;

	public HealthController(HealthDAO healthDAO) {
		this.healthDAO = healthDAO;
	}
	
	@GetMapping({"/", "index.do"})
	public String index() {
		return "index";
	}
	
	@GetMapping({"getHealth.do"})
	public String findById(@RequestParam("id")int id, Model model) {
	HealthLog healthlog = healthDAO.findById(id);
	model.addAttribute("healthLog", healthlog);
	return "views/show";
	
	}
	
	@GetMapping({"getHealthUserName.do"})
	public String getByUserName(@RequestParam("userName")String userName, Model model) {
		List <HealthLog> health = healthDAO.findByUserName(userName);
		
		model.addAttribute("healthLogs",health);

	  return "views/show";
	}
	
	@PostMapping({"createLog.do"})
	public String createLog(HealthLog log, Model model) {
		healthDAO.createNewLog(log);
		model.addAttribute("healthLog" , log);
		return "views/show";
		
	}
	
	@PostMapping({"updateLog.do"})
	public String updateLog(HealthLog log, Model model) {
		  boolean success = healthDAO.updateLog(log);
	        if (success) {
	            model.addAttribute("updateLog", "Log updated successfully");
	        } else {
	            model.addAttribute("updateLog", "Log not found or update failed");
	        }
	        model.addAttribute("healthLog", log);
	        return "views/show";
	
	}

	
	@PostMapping({"deleteLog.do"})
	public String deleteLog(HealthLog log, Model model) {
	        boolean success = healthDAO.deleteLog(log);
	        if (success) {
	            model.addAttribute("updateLog", "Log deleted successfully");
	        } else {
	            model.addAttribute("updateLog", "Log not found or delete failed");
	        }
	        return "redirect:/index";
	
	}


}	
	
