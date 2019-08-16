package com.rc.admin.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.rc.admin.dao.CarInfoDao;
import com.rc.bean.Car;
import com.rc.bean.Car_admin;

@Component("carInfoService")
public class CarInfoService {
	
	private CarInfoDao carInfoDao;
	@Resource(name="carInfoDao")
	public void setCarInfoDao(CarInfoDao carInfoDao){
		this.carInfoDao = carInfoDao;
	}
	
	public int car_info_add(Car car){
		return carInfoDao.car_info_add(car);
	}
	
	public int adminCar(Car_admin car_admin){
		return carInfoDao.adminCar(car_admin);
	}
	
	public Car search_carInfo_by_id(int id){
		return carInfoDao.search_carInfo_by_id(id);
	}

	public int car_info_modefied(Car car){
		return carInfoDao.car_info_modefied(car);
	}
	
	public List<Car> check_car_info(Car car){
		return carInfoDao.check_car_info(car);
	}

}
