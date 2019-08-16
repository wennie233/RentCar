package com.rc.bean;

import java.util.ArrayList;
import java.util.List;

public class User {
	
	private int uid;
	private String name;
	private String password;
	private String real_name;
	private String license;
	private String id_card;
	private String tel;
	private String email;
	private String address;
	private List<Orders> orderList = new ArrayList<Orders>();
	
	public User(){}
	
	
	
	public List<Orders> getOrderList() {
		return orderList;
	}



	public void setOrderList(List<Orders> orderList) {
		this.orderList = orderList;
	}



	public int getUid() {
		return uid;
	}
	public void setId(int uid) {
		this.uid = uid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String adress) {
		this.address = adress;
	}
	public String getLicense() {
		return license;
	}
	public void setLicense(String license) {
		this.license = license;
	}
	public String getId_card() {
		return id_card;
	}
	public void setId_card(String id_card) {
		this.id_card = id_card;
	}

	public String getReal_name() {
		return real_name;
	}

	public void setReal_name(String real_name) {
		this.real_name = real_name;
	}
	
	
	
	
}