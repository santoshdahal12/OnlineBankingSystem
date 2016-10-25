/**
 * 
 */
package com.onlinebanking.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.onlinebanking.domain.Loan;

/**
 * @author santosh dahal
 *
 */
@Repository
public interface LoanRepository extends CrudRepository<Loan, Long>{

}
