package com.rc.admin.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.rc.admin.dao.AdminLoginDao;
import com.rc.admin.dao.AdminOrderDao;
import com.rc.bean.Admin;
import com.rc.bean.Order_sum;
import com.rc.bean.Orders;

@Component("adminOrderService")
public class AdminOrderService {
	
	private AdminOrderDao adminOrderDao;
	@Resource(name="adminOrderDao")
	public void setAdminOrderDao(AdminOrderDao adminOrderDao) {
		this.adminOrderDao = adminOrderDao;
	}
	
	public List<Admin> look_all_order(Orders order){
		return adminOrderDao.look_all_order(order);
	}
	
	public int confirm_user_order(String[] ids, int admin_id){
		return adminOrderDao.confirm_user_order(ids, admin_id);
	}
	
	
	public int pay_user_order(Orders order){
		return adminOrderDao.pay_user_order(order);
	}

	public List<Order_sum> look_sum_order_by_month(){
		return adminOrderDao.look_sum_order_by_month();
	}
}
