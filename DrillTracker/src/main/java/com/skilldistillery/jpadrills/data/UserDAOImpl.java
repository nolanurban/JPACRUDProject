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
	public User getUserByID(int id) {
		String query = "select u.first_name, u.last_name, d.name, dd.actual_points, dd.time "
				+ "from user u join drill_data dd on u.id = dd.user_id1 "
				+ "join drill d on drill.id = drill_data.drill_id1";
		return em.find(User.class, id);
	}

	
	
}
