package com.skilldistillery.jpadrills.data;

import java.util.List;

import com.skilldistillery.jpadrills.entities.DrillData;
import com.skilldistillery.jpadrills.entities.User;

public interface UserDAO {

	List<User> findAll();
	User getUserByID(int id);
	User getUserByEmailAndPassword(String email, String password);
	List<DrillData> getDrillDataByUserId(int id);
}
