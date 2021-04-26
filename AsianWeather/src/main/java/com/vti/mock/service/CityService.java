package com.vti.mock.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vti.mock.entity.City;
import com.vti.mock.repository.ICityRepository;

@Service
@Transactional
public class CityService implements ICityService{

	@Autowired
	private ICityRepository repository;
	
	@Override
	public City getCityByName(String name) {
		return repository.findByName(name);
	}

}
