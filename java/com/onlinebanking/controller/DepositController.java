package com.onlinebanking.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DepositController {
	
//	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@RequestMapping(value = "/deposit", method = RequestMethod.GET)
	public String getDepositAmount(Locale locale, Model model) {
		return "depositAmount";
	}
	
	@RequestMapping(value = "/deposit", method = RequestMethod.POST)
	public String saveDepositAmount(Locale locale, Model model) {
		return "depositAmount";
	}
}