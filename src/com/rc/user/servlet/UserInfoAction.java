package com.rc.user.servlet;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rc.bean.User;
import com.rc.user.service.UserInfoService;

@Controller
@RequestMapping(value="/user")
public class UserInfoAction {
	
	private UserInfoService userInfoService;
	@Resource(name="userInfoService")
	private void setUserInfoService(UserInfoService userInfoService){
		this.userInfoService = userInfoService;
	}
	
	@RequestMapping(value="/userInfoModefied")
	public String userInfoModefied(Model model, User user, HttpSession httpSession){
		
		User users = (User) httpSession.getAttribute("user");
		System.out.println(users.getName()+","+users.getPassword());
		System.out.println("====================="+user.getReal_name());
		user.setPassword(users.getPassword());
		int i = userInfoService.userInfoModefied(user);
		if (i == 0){
			model.addAttribute("message", "修改失败");
			return "/user/user_success.jsp";
		}
		else{
			model.addAttribute("message", "修改成功");
			return "/user/user_success.jsp";
		}
	}

}
