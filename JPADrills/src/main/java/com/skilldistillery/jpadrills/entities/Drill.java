package com.skilldistillery.jpadrills.entities;

import java.time.LocalTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Drill {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	@Column(name="points_actual")
	private double pointsActual;
	@Column(name="hit_factor")
	private double hitFactor;
	@Column(name="points_total")
	private double pointsTotal;
	private LocalTime time;
	// needs time
	
	public Drill() { }
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPointsActual() {
		return pointsActual;
	}
	public void setPointsActual(double pointsActual) {
		this.pointsActual = pointsActual;
	}
	public double getHitFactor() {
		return hitFactor;
	}
	public void setHitFactor(double hitFactor) {
		this.hitFactor = hitFactor;
	}
	public double getPointsTotal() {
		return pointsTotal;
	}
	public void setPointsTotal(double pointsTotal) {
		this.pointsTotal = pointsTotal;
	}
	

	public LocalTime getTime() {
		return time;
	}

	public void setTime(LocalTime time) {
		this.time = time;
	}

	@Override
	public String toString() {
		return "Drill [id=" + id + ", name=" + name + ", pointsActual=" + pointsActual + ", hitFactor=" + hitFactor
				+ ", pointsTotal=" + pointsTotal + "]";
	}
	
	
}
