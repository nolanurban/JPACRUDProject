package com.skilldistillery.jpadrills.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpadrills.data.DrillDAO;

@Controller
public class DrillController {

	@Autowired
	private DrillDAO drillDAO;
	
	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) { // model injection 
		model.addAttribute("drill", drillDAO.findAll());
		return "index";
	}
}
