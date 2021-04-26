package com.vti.mock.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.vti.mock.dto.CityDTO;
import com.vti.mock.entity.City;
import com.vti.mock.service.ICityService;

@RestController
@RequestMapping(value = "api/v1/cities")
@CrossOrigin("*")
public class CityController {

	@Autowired
	private ICityService cityService;
	
	@GetMapping(value = "name/{name}")
	public CityDTO getCityByName(@PathVariable(name = "name") String name) {
		City city = cityService.getCityByName(name);
		
		if (city == null) {
			return null;
		}
		CityDTO cityDTO = new CityDTO(city.getId(), city.getName(), city.getDescription(), city.getCountryID(), city.getImage(),city.getListUser());
		return cityDTO;
	}
}
