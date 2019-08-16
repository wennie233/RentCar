package com.rc.user.servlet;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rc.bean.Orders;
import com.rc.bean.User;
import com.rc.user.service.UserOrderService;

@Controller
@RequestMapping(value="/order")
public class UserOrderAction {
	
	private UserOrderService userOrderService;
	@Resource(name="userOrderService")
	public void setUserOrderService(UserOrderService userOrderService){
		
		this.userOrderService = userOrderService;
	}
	
	@RequestMapping(value="add_user_order")
	public String add_user_order(Orders order, Model model){
		
		int user_id = order.getUser_id();
		//查找用户是否有正在进行中的订单
		Orders orders = userOrderService.look_order_by_user(user_id);
		if (orders == null){
		
			System.out.println(order.getCar_id()+"==="+order.getFrom_date()+"====="+order.getEnd_date()+"======"+order.getPrice());
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			order.setMake_date(df.format(new Date()));
			String from_date = order.getFrom_date();
			String[] from = from_date.split("/");
			from_date = from[2]+"-"+from[0]+"-"+from[1];
			
			String end_date = order.getEnd_date();
			String[] end = end_date.split("/");
			end_date = end[2]+"-"+end[0]+"-"+end[1];
			System.out.println(order.getFrom_date()+"============="+order.getEnd_date());
			System.out.println(from_date+"============="+end_date);
			order.setFrom_date(from_date);
			order.setEnd_date(end_date);
			System.out.println(order.getMake_date());
			int i = userOrderService.add_user_order(order);
		
			if (i == 0){
				model.addAttribute("message", "新增失败！");
				return "/user/user_success.jsp";
			}
			else{
				userOrderService.reset_car_amount(order.getCar_id());
				model.addAttribute("message", "新增成功！");
				return "/user/user_success.jsp";
			}
		}
		else{
			model.addAttribute("message", "新增失败，当前还有未完成订单！");
			return "/user/user_success.jsp";
		}
	}
	
	@RequestMapping(value="look_user_order")
	@ResponseBody
	public List<User> look_user_order(Orders order, Model model,HttpSession session){
		User user = (User) session.getAttribute("user");
		order.setUser_id(user.getUid());
		System.out.println("========"+order.getFrom_date());
		System.out.println(order.getAdmin_id());
		List<User>  orders = userOrderService.look_user_order(order);
		System.out.println("test=========================");
		return orders;
	}
	
	@RequestMapping(value="look_finish_order")
	@ResponseBody
	public List<User> look_finish_order(Orders order, Model model,HttpSession session){
		User user = (User) session.getAttribute("user");
		order.setUser_id(user.getUid());
		System.out.println("========"+order.getFrom_date());
		System.out.println(order.getAdmin_id());
		List<User>  orders = userOrderService.look_finish_order(order);
		System.out.println("test=========================");
		return orders;
	}

	@RequestMapping(value="cancel_user_order")
	@ResponseBody
	public String cancel_user_order(@RequestParam("oid") Integer oid, Model model){
		System.out.println("====[oid]=========="+oid);
		int i = 0;
		Orders order = new Orders();
		order.setOid(oid);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		order.setDeal_date(df.format(new Date()));
		i = userOrderService.cancel_user_order(order);
		if(i == 1){
			return "success";
		}
		else{
			return "error";
		}
		
	}
	
	@RequestMapping(value="modify_user_order")
	@ResponseBody
	public String modify_user_order(Orders order, Model model){
		System.out.println(order.getOid()+"----------"+order.getFrom_date()+"---------"+order.getEnd_date());
		int i = 0;
		i = userOrderService.modify_user_order(order);
		if(i == 1){
			return "success";
		}
		else{
			return "error";
		}
	}
	
}
