package com.vti.mock.service;

import java.util.List;

import com.vti.mock.entity.City;

public interface ICityService {
	
	public City getCityById(int id);

	public City getCityByName(String name);
	
	public void createCity(City city);

	public void updateCity(City city);
	
	public void deleteCity(int id);
	
	public void deleteCities(List<Integer> ids);
}
