/**
 * 
 */
package com.onlinebanking.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.onlinebanking.domain.Loan;
import com.onlinebanking.repository.LoanRepository;
import com.onlinebanking.service.LoanService;

/**
 * @author santosh dahal
 *
 */

@Service
@Transactional

public class LoanServiceImpl implements LoanService {
	@Autowired
	LoanRepository loanRepository;

	@Override
	public void saveLoan(Loan loan) {
		// TODO Auto-generated method stub
		loanRepository.save(loan);
		
	}

	@Override
	public List<Loan> getAll() {
		// TODO Auto-generated method stub
		return (List<Loan>) loanRepository.findAll();
	}

}
