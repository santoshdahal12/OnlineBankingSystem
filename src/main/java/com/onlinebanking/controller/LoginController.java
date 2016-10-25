package com.onlinebanking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;




@Controller
public class LoginController {
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String inputLogin() {
 		return "login";
	}
	//No need for post method for login
	//Security does it internally
	/*@RequestMapping(value="/login", method = RequestMethod.POST)
	public String login(@ModelAttribute("user") Credentials credentials) {
 		return "home";
	}*/
 
	@RequestMapping(value="/loginfailed", method = RequestMethod.GET)
	public String loginerror(Model model) {
 
		model.addAttribute("error", "true");
		return "login";
 
	}
 
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(Model model) {
 		return "redirect:/home";
 	}

}
