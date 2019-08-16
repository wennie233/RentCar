package com.rc.user.servlet;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rc.admin.service.CarInfoService;
import com.rc.bean.Car;
import com.rc.bean.User;
import com.rc.user.service.UserCarService;
@Controller
@RequestMapping(value="/user")
public class UserCarAction {

	private UserCarService userCarService;
	@Resource(name="userCarService")
	public void setUserCarService(UserCarService userCarService){
		
		this.userCarService = userCarService;
	}
	
	private CarInfoService carInfoService;
	@Resource(name="carInfoService")
	public void setCarInfoService(CarInfoService carInfoService){
		this.carInfoService = carInfoService;
	}
	
	@RequestMapping(value="user_get_carInfo")
	public String user_get_carInfo(Model model){
		List<Car> carList = userCarService.user_get_carInfo();
		model.addAttribute("carList",carList);
		return "/user/car_rent.jsp";
	}
	
	
	@RequestMapping(value="look_car_info")
	public String look_car_info(@RequestParam("cid") Integer cid, Model model){
		System.out.println("===============test");
		Car car = userCarService.look_car_info(cid);
		System.out.println("******************************test");
		model.addAttribute("car",car);
		return "/user/car_info_detail.jsp";
	}
	
	@RequestMapping(value="user_rent_car")
	public String user_rent_car(@RequestParam("id") Integer id, Model model, HttpSession httpSession){
		
		User user = (User) httpSession.getAttribute("user");
		Car car = carInfoService.search_carInfo_by_id(id);
		if (user.getAddress() == null){
			System.out.println("address======");
			return "error";
		}
		if(user.getEmail() == null){
			System.out.println("email==========");
			return "error";
		}
		if(user.getId_card() == null){
			System.out.println("id_card===========");
			return "error";
		} 
		if(user.getLicense() == null){
			System.out.println("license===========");
			return "error";
		}
		if(user.getTel() == null){
			System.out.println("tel===========");
			return "error";
		}
		if(user.getReal_name() == null){
			System.out.println("real_name============");
			return "error";
		}
		
		System.out.println(user.getLicense()+"============"+user.getReal_name());
		
		model.addAttribute("car",car);
		model.addAttribute("user",user);
		return "/user/order.jsp";
	}
}
