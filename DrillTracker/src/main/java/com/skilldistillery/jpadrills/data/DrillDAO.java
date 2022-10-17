package com.skilldistillery.jpadrills.data;

import java.util.List;

import com.skilldistillery.jpadrills.entities.Drill;

public interface DrillDAO {

	List<Drill> findAll();
	Drill findById(int id);
	Drill createDrill(Drill drill);
	boolean deleteDrill();
	String getDrillByID(int id);
}
