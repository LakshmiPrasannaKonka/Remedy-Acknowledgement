package com.remedyack.remedyack.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.remedyack.remedyack.models.Admin;



@Repository
public interface Admindao extends CrudRepository<Admin, String> {
	public Admin findByadminId(String AdminId);
	public Admin findBycontactNumber(String contactNumber);
}
