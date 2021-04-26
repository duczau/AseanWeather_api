package com.vti.mock.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "FavouriteCountry", catalog = "TestingSystem")
public class FavouriteCountry implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Column(name = "UserID")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private short id;
	
	@Column(name = "Name", length = 256, nullable = false )
	private String name;
	
	@Column(name = "Email", length = 50, nullable = false, unique = true)
	private String email;
	
	@Column(name = "Address", length = 250, nullable = false, unique = true)
	private String address;
	

}
