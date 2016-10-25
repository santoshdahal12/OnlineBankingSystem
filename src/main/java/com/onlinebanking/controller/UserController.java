package com.onlinebanking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.onlinebanking.domain.*;
@Controller
public class UserController {
		@RequestMapping(value={"/userForm"},method=RequestMethod.GET)
		public String showForm(@ModelAttribute("user") User user, Model model)
		{
			model.addAttribute("user", "hello User");
			return null;
		}

	}


