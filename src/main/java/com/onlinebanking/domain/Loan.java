/**
 * 
 */
package com.onlinebanking.domain;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

/**
 * @author santosh dahal
 *
 */
@Entity
public class Loan implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2289242414013471477L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long Id;
	private String accountNo;
	private Integer loanPeriod;
	public String getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}
	public Integer getLoanPeriod() {
		return loanPeriod;
	}
	public void setLoanPeriod(Integer loanPeriod) {
		this.loanPeriod = loanPeriod;
	}
	public String getLoanType() {
		return loanType;
	}
	public void setLoanType(String loanType) {
		this.loanType = loanType;
	}
	public LoaneePartner getLoaneePartner() {
		return loaneePartner;
	}
	public void setLoaneePartner(LoaneePartner loaneePartner) {
		this.loaneePartner = loaneePartner;
	}
	public LoaneeOfficeDetails getLoaneeOfficeDetails() {
		return loaneeOfficeDetails;
	}
	public void setLoaneeOfficeDetails(LoaneeOfficeDetails loaneeOfficeDetails) {
		this.loaneeOfficeDetails = loaneeOfficeDetails;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	private String loanType;
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="LoanPartner_id",nullable=false)
	private LoaneePartner loaneePartner;
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="LoaneeOfficeDetails_Id",nullable=false)
	private LoaneeOfficeDetails loaneeOfficeDetails;
	

}
