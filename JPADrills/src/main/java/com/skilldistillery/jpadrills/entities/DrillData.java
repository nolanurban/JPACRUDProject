package com.skilldistillery.jpadrills.entities;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="drill_data")
public class DrillData {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private double time;
	@Column(name="actual_points")
	private double actualPoints;
	LocalDate date;
	
	public DrillData() {
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public double getTime() {
		return time;
	}
	public void setTime(double time) {
		this.time = time;
	}
	public double getActualPoints() {
		return actualPoints;
	}
	public void setActualPoints(double actualPoints) {
		this.actualPoints = actualPoints;
	}
	public LocalDate getDate() {
		return date;
	}
	public void setDate(LocalDate date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "DrillData [id=" + id + ", time=" + time + ", actualPoints=" + actualPoints + ", date=" + date + "]";
	}

	
	
}
