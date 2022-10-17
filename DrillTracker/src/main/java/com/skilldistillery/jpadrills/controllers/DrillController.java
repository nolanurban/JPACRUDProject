package com.skilldistillery.jpadrills.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.jpadrills.data.DrillDAO;
import com.skilldistillery.jpadrills.data.DrillDataDAO;
import com.skilldistillery.jpadrills.data.UserDAO;
import com.skilldistillery.jpadrills.entities.User;

@Controller

public class DrillController {

	@Autowired
	private DrillDAO drillDAO;
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private DrillDataDAO drillDataDAO;
	
//	@RequestMapping(path = { "/", "home.do" })
//	public String index(Model model) { // model injection 
//		model.addAttribute("drill", drillDAO.findAll());
//		model.addAttribute("user", userDAO.findAll());
//		model.addAttribute("drillData", drillDataDAO.findAll());
//		return "index";
//	}
	@RequestMapping(path = { "/", "login.do" }, method = RequestMethod.GET)
	public String loginView() {
		return "login";
	}
	@RequestMapping(path = { "/", "login.do"} , method = RequestMethod.POST, params = { "email", "password"})
	public String loginPost(String email, String password, HttpSession session, Model model) {
		
		User user = userDAO.getUserByEmailAndPassword(email, password);
		if (user == null) {
			return "login";
		} else {
			session.setAttribute("account", user);
			return "account";
		}
	}
	@RequestMapping(path = "logout.do")
	public String logout(HttpSession session ) {
		session.removeAttribute("account");
		return "index";
	}
	
	
}
