package com.vti.mock.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * map class voi table trong database
 */
@Entity
@Table(name = "Admin")
public class Admin implements Serializable {

	private static final long serialVersionUID = 1L;

	/**
	 * map column
	 */
	@Column(name = "AdminID")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "Email", length = 256, nullable = false, unique = true)
	private String email;

	@Column(name = "Password", length = 256, nullable = false)
	private String password;

	/**
	 * Constructor for class Admin
	 */
	public Admin() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * getter va setter
	 */
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
