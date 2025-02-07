package com.vti.mock.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vti.mock.entity.Country;
import com.vti.mock.repository.ICountryRepository;

@Service
@Transactional
public class CountryService implements ICountryService{
	
	@Autowired
	private ICountryRepository countryRepository;

	@Override
	public Country getCountryById(int id) {
		return countryRepository.findById(id).get();
	}

	@Override
	public Country getCountryByName(String name) {
		return countryRepository.findByName(name);
	}

	/**
	 * create country
	 */
	@Override
	public void createCountry(Country country) {
		countryRepository.save(country);
	}

	/**
	 * update info country
	 */
	@Override
	public void updateCountry(Country country) {
		countryRepository.save(country);
	}

	/**
	 * delete 1 country
	 */
	@Override
	public void deleteCountry(int id) {
		countryRepository.deleteById(id);
	}

}
