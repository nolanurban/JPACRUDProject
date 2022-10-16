package com.skilldistillery.jpadrills.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class DrillDataTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	DrillData drillData;
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf  = Persistence.createEntityManagerFactory("JPADrills");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
			em = emf.createEntityManager();
			drillData = em.find(DrillData.class, 1);
		
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		drillData = null;
	}


	@Test
	void test() {
		assertNotNull(drillData);
		assertEquals(3.10, drillData.getTime());
	}

}
