package com.skilldistillery.jpadrills.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpadrills.data.DrillDAO;
import com.skilldistillery.jpadrills.data.DrillDataDAO;
import com.skilldistillery.jpadrills.data.UserDAO;

@Controller

public class DrillController {

	@Autowired
	private DrillDAO drillDAO;
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private DrillDataDAO drillDataDAO;
	
	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) { // model injection 
		model.addAttribute("drill", drillDAO.findAll());
		model.addAttribute("user", userDAO.findAll());
		model.addAttribute("drillData", drillDataDAO.findAll());
		return "index";
	}
}
