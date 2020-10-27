package com.hcl.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "PILOT_TABLE")
public class Pilot implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	private Long id1;
	private Long id;
	private String name;
	private String otherdetails;

	public Pilot() {
	}

	public Pilot(Long id, String name, String otherdetails) {
		super();
		this.id = id;
		this.name = name;
		this.otherdetails = otherdetails;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getOtherdetails() {
		return otherdetails;
	}

	public void setOtherdetails(String otherdetails) {
		this.otherdetails = otherdetails;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
