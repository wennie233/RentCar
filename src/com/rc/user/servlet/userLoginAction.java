package com.rc.user.servlet;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.rc.bean.User;
import com.rc.user.service.UserLoginService;

@Controller
@RequestMapping(value="/user")
public class userLoginAction{
	
	private UserLoginService userLoginService;
	@Resource(name="userLoginService")
	public void setUserLoginService(UserLoginService userLoginService) {
		this.userLoginService = userLoginService;
	}

	@RequestMapping(value="/login")
	public String userLogin(Model model, User user, HttpSession httpSession) throws Exception{
		User userLogin = userLoginService.login(user);
		if (userLogin == null){
			return "/user/register.jsp";
		}
		else{
			httpSession.setAttribute("user", userLogin);
			System.out.println(userLogin.getReal_name());
			return "redirect:/user/user_get_carInfo.action";
		}
		
	}
	
	@RequestMapping(value="/regist")
	public String userRegist(Model model, User user, HttpSession httpSession) throws Exception{
		System.out.println("============="+user.getName()+","+user.getPassword()+","+user.getEmail());
		int i = userLoginService.regist(user);
		if(i == 0){
			System.out.println("test111");
			return null;
		}else{
			System.out.println("test111");
			httpSession.setAttribute("user", user);
			return "/user/user_login.jsp";
		}
		
	}
	
	@RequestMapping(value="/changePwd")
	public String changePwd(Model model,String old_pwd, String new_pwd, HttpSession httpsession) throws Exception{
		
		User user = (User) httpsession.getAttribute("user");
		System.out.println(new_pwd);
		System.out.println(old_pwd);
		System.out.println(user.getUid());
		if (user.getPassword().equals(old_pwd)){
			user.setPassword(new_pwd);
			userLoginService.changePwd(user);
			model.addAttribute("message", "修改失败");
			return "/user/user_success.jsp";
		}
		else{
			model.addAttribute("message", "旧密码与当前密码不相符，修改失败！");
			return "/user/user_success.jsp";
		}
	}
}
