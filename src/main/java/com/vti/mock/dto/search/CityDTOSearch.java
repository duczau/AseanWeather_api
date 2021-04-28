package com.vti.mock.dto.search;

import java.util.List;

public class CityDTOSearch {

	private String name;

	private String description;

	private int countryID;

	private String image;

	private List<UserDTOSearch> listUsers;

	public CityDTOSearch() {
		// TODO Auto-generated constructor stub
	}

	public CityDTOSearch(String name, String description, int countryID, String image, List<UserDTOSearch> listUsers) {
		this.name = name;
		this.description = description;
		this.countryID = countryID;
		this.image = image;
		this.listUsers = listUsers;
	}

	public CityDTOSearch(String name, String description, int countryID, String image) {
		this.name = name;
		this.description = description;
		this.countryID = countryID;
		this.image = image;
	}

	public String getName() {
		return name;
	}

	public String getDescription() {
		return description;
	}

	public int getCountryID() {
		return countryID;
	}

	public String getImage() {
		return image;
	}

	public List<UserDTOSearch> getListUsers() {
		return listUsers;
	}

}
