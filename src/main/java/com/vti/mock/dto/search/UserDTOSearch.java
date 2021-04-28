package com.vti.mock.dto.search;

/**
 * class dto để hiển thị thông tin muốn hiển thị
 */
public class UserDTOSearch {

	private String name;

	private String email;

	private String address;

	public UserDTOSearch() {

	}

	public UserDTOSearch(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
