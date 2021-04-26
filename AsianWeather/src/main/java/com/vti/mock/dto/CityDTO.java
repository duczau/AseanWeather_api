package com.vti.mock.dto;

import java.util.List;

import com.vti.mock.entity.Country;
import com.vti.mock.entity.User;

public class CityDTO {

	private int id;
	
	private String name;
	
	private String description;
	
	private Country countryID;
	
	private String image;
	
	private List<User> listUser;
	
	public CityDTO() {
		// TODO Auto-generated constructor stub
	}

	public CityDTO(int id, String name, String description, Country countryID, String image, List<User> listUser) {
		this.id = id;
		this.name = name;
		this.description = description;
		this.countryID = countryID;
		this.image = image;
		this.listUser = listUser;
	}



	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getDescription() {
		return description;
	}

	public Country getCountryID() {
		return countryID;
	}

	public String getImage() {
		return image;
	}

	public List<User> getListUser() {
		return listUser;
	}
	
}
