package com.skilldistillery.jpadrills.entities;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

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
	@Column(name="drill_id")
	private int drillid;
	@Column(name="user_id")
	private int userid;
	@Transient
	private String name;
	
	
	
	public int getDrillid() {
		return drillid;
	}
	public void setDrillid(int drillid) {
		this.drillid = drillid;
	}
	public DrillData() {
		
	}
	public double getHitFactor() {
		return this.actualPoints / this.time;
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
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "DrillData [id=" + id + ", time=" + time + ", actualPoints=" + actualPoints + ", date=" + date
				+ ", drillid=" + drillid + ", userid=" + userid + ", name=" + name + "]";
	}


	
	
}
