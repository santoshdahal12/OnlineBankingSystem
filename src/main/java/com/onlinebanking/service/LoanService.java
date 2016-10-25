/**
 * 
 */
package com.onlinebanking.service;

import java.util.List;

import com.onlinebanking.domain.Loan;



/**
 * @author santosh dahal
 *
 */
public interface LoanService {
	public void saveLoan(Loan loan);
	public List<Loan>getAll();

}
