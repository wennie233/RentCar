package com.rc.user.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.rc.bean.User;
import com.rc.user.dao.UserInfoDao;
@Component("userInfoService")
public class UserInfoService {
	
	private UserInfoDao userInfoDao;
	@Resource(name="userInfoDao")
	public void setUserInfoDao(UserInfoDao userInfoDao){
		this.userInfoDao = userInfoDao;
	}

	public int userInfoModefied(User user){
		return userInfoDao.userInfoModefied(user);
	}
}
