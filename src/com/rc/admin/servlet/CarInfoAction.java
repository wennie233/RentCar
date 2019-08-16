package com.rc.admin.servlet;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.rc.admin.service.CarInfoService;
import com.rc.bean.Admin;
import com.rc.bean.Car;
import com.rc.bean.Car_admin;

@Component
@RequestMapping(value="/car")
public class CarInfoAction {
	
	private CarInfoService carInfoService;
	@Resource(name="carInfoService")
	public void setCarInfoService(CarInfoService carInfoService){
		this.carInfoService = carInfoService;
	}
	

	@RequestMapping(value="/car_info_add")
	public String car_info_add(@RequestParam("photo") MultipartFile photo, Car car,Model model,HttpSession httpSession,HttpServletRequest request){
        try {
        	
        	//把图片保存到图片目录下
            //为每个文件生成一个新的文件名
        	String filename = null;
        	Admin admin = (Admin) httpSession.getAttribute("admin");
        	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        	System.out.println("=========test");
        	if(!photo.isEmpty()){
        		
        		
        		System.out.println("========================="+photo.toString());
        		String picName = UUID.randomUUID().toString();
        		//获得文件类型（可以判断如果不是图片，禁止上传）  
                String contentType=photo.getContentType();  
                //获得文件后缀名 
                String suffixName=contentType.substring(contentType.indexOf("/")+1);
                //得到 文件名
                filename=picName+"."+suffixName; 
                //文件保存路径
                String filepath = request.getSession().getServletContext().getRealPath("/picture");
                System.out.println("++++++++++++++"+filepath);
                photo.transferTo(new File(filepath+filename));
                car.setPicture(filename);
        	}
			int i = carInfoService.car_info_add(car);
			
			//添加工作人员与车的联系
			Car_admin car_admin = new Car_admin();
			car_admin.setCar_id(car.getCid());
			car_admin.setAdmin_id(admin.getAid());
			car_admin.setFrom_date(df.format(new Date()));
			
			int j = carInfoService.adminCar(car_admin);
			
			if(i == 0 || j == 0){
				model.addAttribute("message", "新增失败");
				model.addAttribute("info", "查看车辆信息");
				model.addAttribute("link", "../admin/check_car_info.jsp");
				return "/admin/admin_success.jsp";
			}
			else{
				model.addAttribute("message", "新增成功");
				model.addAttribute("info", "查看车辆信息");
				model.addAttribute("link", "../admin/check_car_info.jsp");
				return "/admin/admin_success.jsp";
			}
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
        model.addAttribute("message", "新增失败");
		model.addAttribute("info", "查看车辆信息");
		model.addAttribute("link", "../admin/check_car_info.jsp");
		return "/admin/admin_success.jsp";
	}
	
	
	@RequestMapping(value="/search_car_info", produces={"application/json; charset=UTF-8"})
	@ResponseBody
	public Car select_car_info_by_id(@RequestParam("cid") Integer cid, Model model){
		System.out.println("test================="+cid);
		Car car = carInfoService.search_carInfo_by_id(cid);
		System.out.println(car.getBranch());
		return car;
	}
	
	@RequestMapping(value="/modified_car_info")
	public String car_info_modefied(@RequestParam("photo") MultipartFile photo,Car car, Model model ,HttpServletRequest request){
		if(!photo.isEmpty()){
			System.out.println("========================="+photo.toString());
    		String picName = UUID.randomUUID().toString();
    		//获得文件类型（可以判断如果不是图片，禁止上传）  
            String contentType=photo.getContentType();  
            //获得文件后缀名 
            String suffixName=contentType.substring(contentType.indexOf("/")+1);
            //得到 文件名
            picName=picName+"."+suffixName; 
            //文件保存路径
            try {
            	String filepath = request.getSession().getServletContext().getRealPath("/picture");
                System.out.println("++++++++++++++"+filepath);
                photo.transferTo(new File(filepath+picName));
                car.setPicture(picName);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		int i = carInfoService.car_info_modefied(car);
		if(i!=0){
			model.addAttribute("message", "修改成功");
			model.addAttribute("info", "查看车辆信息");
			model.addAttribute("link", "../admin/check_car_info.jsp");
			return "/admin/admin_success.jsp";
		}
		else{
			model.addAttribute("message", "修改失败");
			model.addAttribute("info", "查看车辆信息");
			model.addAttribute("link", "../admin/check_car_info.jsp");
			return "/admin/admin_success.jsp";
		}
	}
	
	@RequestMapping(value="check_car_info", produces={"application/json; charset=UTF-8"})
	@ResponseBody
	public List<Car> check_car_info(Car car,Model model){
		System.out.println(car.getBranch()+car.getStatus());
		List<Car> carlist = carInfoService.check_car_info(car);
		return carlist;
	}
}
