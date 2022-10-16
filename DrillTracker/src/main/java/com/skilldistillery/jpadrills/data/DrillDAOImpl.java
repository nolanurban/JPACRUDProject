package com.skilldistillery.jpadrills.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpadrills.entities.Drill;

@Service
@Transactional
public class DrillDAOImpl implements DrillDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public List<Drill> findAll() {	
		String query = "SELECT s FROM Drill s";
		return em.createQuery(query, Drill.class).getResultList();
	}

	@Override
	public Drill findById(int id) {
		// we will test this 
		return null;
	}

	@Override
	public Drill createDrill(Drill drill) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteDrill() {
		// TODO Auto-generated method stub
		return false;
	}

}
