/**
 * 
 */
package com.onlinebanking.domain;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * @author santosh dahal
 *
 */
@Entity
public class LoaneePartner {
	/**
	 * 
	 */
	//private static final long serialVersionUID = 1L;
	public String getNameOfPartner() {
		return nameOfPartner;
	}
	
	public void setNameOfPartner(String nameOfPartner) {
		this.nameOfPartner = nameOfPartner;
	}
	
	public String getPhoneNumber() {
		return phoneNumber;
	}
	
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	/*public static long getSerialversionuid() {
		return serialVersionUID;
	}*/
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	private String nameOfPartner;
	private String phoneNumber;

}
