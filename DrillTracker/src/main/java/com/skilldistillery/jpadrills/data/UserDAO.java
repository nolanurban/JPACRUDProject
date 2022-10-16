package com.skilldistillery.jpadrills.data;

import java.util.List;

import com.skilldistillery.jpadrills.entities.User;

public interface UserDAO {

	public List<User> findAll();
	public User getUserByID();
	
}
