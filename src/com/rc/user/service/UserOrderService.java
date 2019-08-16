package com.rc.user.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.rc.bean.Orders;
import com.rc.bean.User;
import com.rc.user.dao.UserOrderDao;

@Component("userOrderService")
public class UserOrderService {

	private UserOrderDao userOrderDao;

	@Resource(name = "userOrderDao")
	public void setUserOrderDao(UserOrderDao userOrderDao) {
		this.userOrderDao = userOrderDao;
	}
	
	public List<User> look_user_order(Orders order){
		return userOrderDao.look_user_order(order);
	}
	
	public List<User> look_finish_order(Orders order){
		return userOrderDao.look_finish_order(order);
	}
	
	public int add_user_order(Orders order){
		return userOrderDao.add_user_order(order);
	}
	
	public Orders look_order_by_user(int id){
		return userOrderDao.look_order_by_user(id);
	}
	
	public void reset_car_amount(int car_id){
		userOrderDao.reset_car_amount(car_id);
	}
	
	public int cancel_user_order(Orders order){
		return userOrderDao.cancel_user_order(order);
	}
	
	public int modify_user_order(Orders order){
		return userOrderDao.modify_user_order(order);
	}
}
