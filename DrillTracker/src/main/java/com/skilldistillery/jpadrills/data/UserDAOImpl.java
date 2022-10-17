package com.skilldistillery.jpadrills.data;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpadrills.entities.Drill;
import com.skilldistillery.jpadrills.entities.DrillData;
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
		String query = "";
		return em.find(User.class, id);
	}
	
	public List<DrillData> getDrillDataByUserId(int id) {
		String query = "select d from DrillData d where d.userid = :id";
		
		List<DrillData> userDrillList = em.createQuery(query, DrillData.class).setParameter("id", id).getResultList();
		
		String query1 = "select d from Drill d";
		List<Drill> drills = em.createQuery(query1, Drill.class).getResultList();
		
		Map<Integer, Drill> drillMap = new HashMap<Integer, Drill>();
		
		for (Drill drill: drills) {
			drillMap.put(drill.getId(), drill);
		}
		
		for (DrillData d : userDrillList) {
			d.setName(drillMap.get(d.getDrillid()).getName());
		}
		// having major issues not being able to join in sql.
		return userDrillList;
	}

	@Override
	public User getUserByEmailAndPassword(String email, String password) {
		 String query = "Select s from User s where email = :email and password = :password";
		 User user = em.createQuery(query, User.class).setParameter("email", email).setParameter("password",password).getSingleResult();
		 if (user != null) {
			 user.setData(getDrillDataByUserId(user.getId()));
			 return user;
		 }
		 else
		return null;
	}

	
	
}
