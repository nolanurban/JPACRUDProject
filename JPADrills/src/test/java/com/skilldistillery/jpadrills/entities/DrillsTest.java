package com.skilldistillery.jpadrills.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class DrillsTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	Drill drill;
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
		drill = em.find(Drill.class, 1);
		
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		drill = null;
	}

	@Test
	void test() {
		assertNotNull(drill);
		assertEquals(12, drill.getHitFactor());
		assertEquals("Bill Drill", drill.getName());
	}

}
