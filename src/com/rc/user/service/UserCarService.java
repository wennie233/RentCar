package com.rc.user.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.rc.bean.Car;
import com.rc.user.dao.UserCarDao;

@Component("userCarService")
public class UserCarService {
	private UserCarDao userCarDao;
	@Resource(name="userCarDao")
	public void setUserCarDao(UserCarDao userCarDao){
		
		this.userCarDao = userCarDao;
	}
	
	public List<Car> user_get_carInfo(){
		return userCarDao.user_get_carInfo();
	}
	
	public Car look_car_info(int id){
		
		return userCarDao.look_car_info(id);
	}
}
