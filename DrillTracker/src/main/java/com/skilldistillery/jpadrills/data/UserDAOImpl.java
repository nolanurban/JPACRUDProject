package com.skilldistillery.jpadrills.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpadrills.entities.User;

@Service
@Transactional
public class UserDAOImpl implements UserDAO {
	
	@PersistenceContext
	private EntityManager em;
	

	@Override
	public List<User> findAll() {
		String query = "SELECT s FROM User s";
		return em.createQuery(query, User.class).getResultList();
	}

	@Override
	public User getUserByID() {
		// TODO Auto-generated method stub
		return null;
	}

}
