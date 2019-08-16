package com.rc.admin.dao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.rc.bean.Admin;
import com.rc.bean.Order_sum;
import com.rc.bean.Orders;
import com.rc.mybatis.MyBatisUtil;

@Component("adminOrderDao")
public class AdminOrderDao {
	
	public List<Admin> look_all_order(Orders order){
		SqlSession sqlSeeion = null;
		try{
			sqlSeeion = MyBatisUtil.getSqlSession();
			List<Admin> orders = sqlSeeion.selectList("adminOrderBean.look_all_order", order);
			sqlSeeion.commit();
			return orders;
		}catch(Exception e){
			e.printStackTrace();
			sqlSeeion.rollback();
			throw e;
		}finally{
			MyBatisUtil.closeSqlSession();
		}
	}
	
	public int confirm_user_order(String[] ids, int admin_id){
		SqlSession sqlSession = null;
		int sum = 0;
		try{
			sqlSession = MyBatisUtil.getSqlSession();
			for(int j=0; j<ids.length; j++){
				Orders order = new Orders();
				//order.setOid(ids[j]);
				int id = Integer.parseInt(ids[j]);
				order.setOid(id);
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				order.setDeal_date(df.format(new Date()));
				order.setAdmin_id(admin_id);
				int i = sqlSession.update("adminOrderBean.confirm_user_order", order);
				sum = sum + i;
				sqlSession.commit();
			}
			return sum;
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
			throw e;
		}finally{
			MyBatisUtil.closeSqlSession();
		}
		
	}
	
	public int pay_user_order(Orders order){
		SqlSession sqlSession = null;
		int i = 0;
		try{
			sqlSession = MyBatisUtil.getSqlSession();
			i = sqlSession.update("adminOrderBean.pay_user_order", order);
			sqlSession.commit();
			return i;
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
			throw e;
		}finally{
			MyBatisUtil.closeSqlSession();
		}
	}
	
	public List<Order_sum> look_sum_order_by_month(){
		SqlSession sqlSeeion = null;
		try{
			sqlSeeion = MyBatisUtil.getSqlSession();
			List<Order_sum> orders = sqlSeeion.selectList("adminOrderBean.look_sum_order_by_month");
			sqlSeeion.commit();
			return orders;
		}catch(Exception e){
			e.printStackTrace();
			sqlSeeion.rollback();
			throw e;
		}finally{
			MyBatisUtil.closeSqlSession();
		}
	}
}
