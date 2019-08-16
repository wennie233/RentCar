package com.rc.admin.servlet;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rc.admin.service.AdminOrderService;
import com.rc.bean.Admin;
import com.rc.bean.Order_sum;
import com.rc.bean.Orders;

@Component
@RequestMapping(value="/order")
public class AdminOrderAction {
	
	private AdminOrderService adminOrderService;
	@Resource(name="adminOrderService")
	public void setAdminOrderService(AdminOrderService adminOrderService) {
		this.adminOrderService = adminOrderService;
	}
	
	@RequestMapping(value="look_all_order")
	@ResponseBody
	public List<Admin> look_all_order(Orders order, Model model){
		System.out.println("==========test");
		List<Admin> orders = adminOrderService.look_all_order(order);
		return orders;
	}
	
	@RequestMapping(value="confirm_user_order",produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String confirm_user_order(@RequestParam("ids") String ids, Model model, HttpSession httpSession){
		System.out.println(ids);
		String[] str = ids.split(",");
		int i = str.length;
		Admin admin = (Admin) httpSession.getAttribute("admin");
		int admin_id = admin.getAid();
		int j = adminOrderService.confirm_user_order(str,admin_id);
		if(i == j){
			return "修改成功";
		}
		else{
			return "修改了"+j+"条，还有"+(i-j)+"未修改成功";
		}
		
	}
	
	@RequestMapping(value="pay_user_order",produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String pay_user_order(@RequestParam("oid") int oid, Model model, HttpSession httpSession){
		Admin admin = (Admin) httpSession.getAttribute("admin");
		Orders order = new Orders();
		int admin_id = admin.getAid();
		order.setAdmin_id(admin_id);
		order.setOid(oid);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		order.setDeal_date(df.format(new Date()));
		int i = 0;
		i = adminOrderService.pay_user_order(order);
		if (i==1){
			return "修改成功";
		}
		else{
			return "修改失败";
		}
	}
	
	@RequestMapping(value="look_sum_order_by_month")
	@ResponseBody
	public List<Order_sum> look_sum_order_by_month(Model model){
		List <Order_sum> orders = adminOrderService.look_sum_order_by_month();
		for(Order_sum order : orders){
			System.out.println(order.getOrder_sum());
			System.out.println("===="+order.getDate_part());
			System.out.println("======"+order.getPrices());
		}
		return orders;
	}
}
