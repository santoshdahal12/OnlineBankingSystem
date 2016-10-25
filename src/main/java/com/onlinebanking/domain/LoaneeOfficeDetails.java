package com.onlinebanking.domain;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class LoaneeOfficeDetails {

	/**
	 * 
	 */
	//private static final long serialVersionUID = 1L;
	 @Id
		@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	public String getOfficeName() {
		return officeName;
	}
	public void setOfficeName(String officeName) {
		this.officeName = officeName;
	}
	public Double getNoOfYearsWorked() {
		return noOfYearsWorked;
	}
	public void setNoOfYearsWorked(double noOfYearsWorked) {
		this.noOfYearsWorked = noOfYearsWorked;
	}
	public String getContactPersonName() {
		return contactPersonName;
	}
	public void setContactPersonName(String contactPersonName) {
		this.contactPersonName = contactPersonName;
	}
	public String getContactPersonPosition() {
		return contactPersonPosition;
	}
	public void setContactPersonPosition(String contactPersonPosition) {
		this.contactPersonPosition = contactPersonPosition;
	}
	/*public static long getSerialversionuid() {
		return serialVersionUID;
	}*/
	private String officeName;
	private Double noOfYearsWorked;
	private String contactPersonName;
	private String contactPersonPosition;

}
