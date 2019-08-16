package com.rc.admin.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.rc.admin.dao.AdminLoginDao;
import com.rc.bean.Admin;
import com.rc.bean.Car_admin;
import com.rc.bean.User;
import com.rc.user.dao.UserLoginDao;

@Component("adminLoginService")
public class AdminLoginService {

	private AdminLoginDao adminLoginDao;

	@Resource(name = "adminLoginDao")
	public void setAdminLoginDao(AdminLoginDao adminLoginDao) {
		this.adminLoginDao = adminLoginDao;
	}

	public Admin login(Admin admin) throws Exception {

		return adminLoginDao.userLogin(admin);
	}

	public int changePwd(Admin admin) throws Exception {

		return adminLoginDao.changePwd(admin);
	}
	public int adminInfoModefied(Admin admin){
		return adminLoginDao.adminInfoModefied(admin);
	}
	
	
}
