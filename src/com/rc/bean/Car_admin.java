package com.rc.bean;

import java.sql.Date;

public class Car_admin {
	
	private int id;
	private int car_id;
	private int admin_id;
	private String from_date;
	private String thru_date;
	private Car car;
	public int getId() {
		return id;
	}
	
	public Car getCar() {
		return car;
	}

	public void setCar(Car car) {
		this.car = car;
	}

	public void setId(int id) {
		this.id = id;
	}
	public int getCar_id() {
		return car_id;
	}
	public void setCar_id(int car_id) {
		this.car_id = car_id;
	}
	public int getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}
	public String getFrom_date() {
		return from_date;
	}
	public void setFrom_date(String from_date) {
		this.from_date = from_date;
	}
	public String getThru_date() {
		return thru_date;
	}
	public void setThru_date(String thru_date) {
		this.thru_date = thru_date;
	}

}
