package com.rc.bean;


public class Car {

	private int cid;
	private String branch; //品牌
	private String type; //车系
	private String year; //年代
	private String configure; //配置
	private String size; //座位数
	private String fuel; //燃油标号
	private String gus; //排量
	private String speed; //变速箱类型
	private String drive; //驱动方式
	private String GPS; //GPS	
	private String price;
	private String picture;
	private String status;
	private int amount;
	public Car(){}
	/**
	public MultipartFile getCar_picture() {
		return car_picture;
	}

	public void setCar_picture(MultipartFile car_picture) {
		this.car_picture = car_picture;
	}
	**/

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getConfigure() {
		return configure;
	}

	public void setConfigure(String configure) {
		this.configure = configure;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getFuel() {
		return fuel;
	}

	public void setFuel(String fuel) {
		this.fuel = fuel;
	}

	public String getGus() {
		return gus;
	}

	public void setGus(String gus) {
		this.gus = gus;
	}

	public String getSpeed() {
		return speed;
	}

	public void setSpeed(String speed) {
		this.speed = speed;
	}

	public String getDrive() {
		return drive;
	}

	public void setDrive(String drive) {
		this.drive = drive;
	}

	public String getGPS() {
		return GPS;
	}

	public void setGPS(String gPS) {
		GPS = gPS;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}


}
