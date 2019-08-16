package com.rc.admin.servlet;

import javax.annotation.Resource;
import javax.persistence.metamodel.SetAttribute;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rc.admin.service.AdminLoginService;
import com.rc.bean.Admin;
import com.rc.bean.User;
import com.rc.user.service.UserLoginService;

@Controller
@RequestMapping(value="/admin")
public class AdminLoginAction{
	
	private AdminLoginService adminLoginService;
	@Resource(name="adminLoginService")
	public void setUserLoginService(AdminLoginService adminLoginService) {
		this.adminLoginService = adminLoginService;
	}

	@RequestMapping(value="/adminLogin")
	public String adminLogin(Model model, Admin admin, HttpSession httpSession) throws Exception{
		Admin adminLogin = adminLoginService.login(admin);
		if (adminLogin == null){
			return "register";
		}
		else{
			httpSession.setAttribute("admin", adminLogin);
			model.addAttribute("admin", adminLogin);
			return "/admin/admin.jsp";
		}
		
	}

	
	@RequestMapping(value="/changePwd")
	public String changePwd(Model model,String old_pwd, String new_pwd, HttpSession httpsession) throws Exception{
		
		Admin admin = (Admin) httpsession.getAttribute("admin");
		System.out.println(old_pwd);
		System.out.println(admin.getPassword());
		if (admin.getPassword().equals(old_pwd)){
			admin.setPassword(new_pwd);
			int adminChangePwd = adminLoginService.changePwd(admin);
			model.addAttribute("message", "修改成功");
			model.addAttribute("info", "查看订单信息");
			model.addAttribute("link", "../admin/all_orders.jsp");
			return "/admin/admin_success.jsp";
		}
		else{
			model.addAttribute("message", "旧密码与当前密码不相符，修改失败！");
			model.addAttribute("info", "重新修改");
			model.addAttribute("link", "../admin/change_password.jsp");
			return "/admin/admin_success.jsp";
		}
	}
	@RequestMapping(value="/adminInfoModefied")
	public String userInfoModefied(Model model, Admin admin, HttpSession httpSession){
		
		Admin admins = (Admin) httpSession.getAttribute("admin");
		System.out.println(admins.getName()+","+admins.getPassword());
		admin.setPassword(admins.getPassword());
		admin.setAid(admins.getAid());
		int i = adminLoginService.adminInfoModefied(admin);
		if (i == 0){
			model.addAttribute("message", "修改失败！");
			model.addAttribute("info", "重新修改");
			model.addAttribute("link", "../admin/admin_info.jsp");
			return "/admin/admin_success.jsp";
		}
		else{
			model.addAttribute("message", "修改成功");
			model.addAttribute("info", "查看订单信息");
			model.addAttribute("link", "../admin/all_orders.jsp");
			return "/admin/admin_success.jsp";
		}
	}
	
}
