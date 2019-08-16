package com.rc.user.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.rc.bean.User;
import com.rc.user.dao.UserLoginDao;

@Component("userLoginService")
public class UserLoginService {

	private UserLoginDao userLoginDao;

	@Resource(name = "userLoginDao")
	public void setUserLoginDao(UserLoginDao userLoginDao) {
		this.userLoginDao = userLoginDao;
	}

	//用户登陆
	public User login(User user) throws Exception {

		return userLoginDao.userLogin(user);
	}
	//用户注册
	public int regist(User user) throws Exception {

		return userLoginDao.userRegist(user);
	}
	//用户修改密码
	public int changePwd(User user) throws Exception {

		return userLoginDao.changePwd(user);
	}

}
