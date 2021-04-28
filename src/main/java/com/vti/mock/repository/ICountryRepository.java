package com.vti.mock.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.vti.mock.entity.Country;

public interface ICountryRepository extends JpaRepository<Country, Integer>, JpaSpecificationExecutor<Country> {

	public Country findByName(String name);
}
