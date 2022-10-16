package com.skilldistillery.jpadrills.data;

import java.util.List;

import com.skilldistillery.jpadrills.entities.DrillData;

public interface DrillDataDAO {

	List<DrillData> findAll();
	DrillData updateDrillData();
}
