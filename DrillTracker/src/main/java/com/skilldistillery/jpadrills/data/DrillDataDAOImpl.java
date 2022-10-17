package com.skilldistillery.jpadrills.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpadrills.entities.DrillData;

@Service
@Transactional
public class DrillDataDAOImpl implements DrillDataDAO {
	
	@PersistenceContext
	private EntityManager em;
	

	@Override
	public List<DrillData> findAll() {
		String query = "SELECT s FROM DrillData s";
		return em.createQuery(query, DrillData.class).getResultList();
	}

	@Override
	public DrillData updateDrillData() {
		// TODO Auto-generated method stub
		return null;
	}

	
}
