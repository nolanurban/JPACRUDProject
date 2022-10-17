package com.skilldistillery.jpadrills.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpadrills.data.DrillDAO;
import com.skilldistillery.jpadrills.data.DrillDataDAO;
import com.skilldistillery.jpadrills.data.UserDAO;

@Controller
public class AccountController {
	@Autowired
	private DrillDAO drillDAO;
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private DrillDataDAO drillDataDAO;
	
	@RequestMapping (path = { "/", "home.do", "index.do", "account.do" } )
	public String userDetails (HttpSession session, Model model) {
		if (session.getAttribute("account") != null) {
			return "account";
			
		}
	return "login";
	}
	@RequestMapping (path = { "updateDrill" })
	public String updateData (HttpSession session, Model model) {
		return "account";
	}
}
