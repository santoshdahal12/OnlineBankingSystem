package com.onlinebanking.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.onlinebanking.domain.Loan;
import com.onlinebanking.service.LoanService;

@Controller
@RequestMapping(value = "/loan")
public class LoanController {
	@Autowired
	LoanService loanService;
	@RequestMapping(value = "/addLoan", method = RequestMethod.GET)
	public String getNewLoan(@ModelAttribute("newLoanMember") Loan newLoanMember){
		
		return "loanapplicationform";
	}
	
	@RequestMapping(value = "/addLoan", method = RequestMethod.POST)
	public String saveNewLoan(@ModelAttribute("newLoanMember") Loan newLoanMember, RedirectAttributes redirectAttr){
		loanService.saveLoan(newLoanMember);
		redirectAttr.addFlashAttribute("newLoanMember",newLoanMember);
		return "redirect:newLoanDetails";
	}
	
	@RequestMapping(value = "/newLoanDetails", method = RequestMethod.GET)
	public String saveNewLoan(){
		
		return "loanDetails";
	}
}
