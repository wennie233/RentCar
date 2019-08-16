package com.rc.bean;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;


public class Admin {
	
	private int aid;
	private String name;
	private String tel;
	private String password;
	private String birthday;
	private String id_card;
	private String address;
	private String mail;
	private String adress;
	private List<Orders> orderList = new ArrayList<Orders>();
	
	public Admin(){}
	
	
	public List<Orders> getOrderList() {
		return orderList;
	}


	public void setOrderList(List<Orders> orderList) {
		this.orderList = orderList;
	}


	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getId_card() {
		return id_card;
	}

	public void setId_card(String id_card) {
		this.id_card = id_card;
	}
	
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
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
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	
	

}
