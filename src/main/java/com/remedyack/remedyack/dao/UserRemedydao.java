package com.remedyack.remedyack.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.remedyack.remedyack.models.User;
import com.remedyack.remedyack.models.UserRemedy;

@Repository
public interface UserRemedydao extends CrudRepository<UserRemedy, Long> {
	public User findByUserId(String userId);

}

