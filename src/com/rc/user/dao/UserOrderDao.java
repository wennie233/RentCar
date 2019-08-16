package com.rc.user.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.chainsaw.Main;
import org.springframework.stereotype.Component;

import com.rc.bean.Car;
import com.rc.bean.Orders;
import com.rc.bean.User;
import com.rc.mybatis.MyBatisUtil;

@Component("userOrderDao")
public class UserOrderDao {
	
	public List<User> look_user_order(Orders order){
		SqlSession sqlSession = null;
		try{
			sqlSession = MyBatisUtil.getSqlSession();
			List<User> orders = sqlSession.selectList("userOrderBean.look_user_order", order);
			sqlSession.commit();
			return orders;
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
			throw e;
		}finally{
			MyBatisUtil.closeSqlSession();
		}
	}
	
	public List<User> look_finish_order(Orders order){
		SqlSession sqlSession = null;
		try{
			sqlSession = MyBatisUtil.getSqlSession();
			List<User> orders = sqlSession.selectList("userOrderBean.look_finish_order", order);
			sqlSession.commit();
			return orders;
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
			throw e;
		}finally{
			MyBatisUtil.closeSqlSession();
		}
	}
	
	public int add_user_order(Orders order){
		SqlSession sqlSession = null;
		int i = 0;
		try{
			sqlSession = MyBatisUtil.getSqlSession();
			i = sqlSession.insert("userOrderBean.add_user_order", order);
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
	
	public Orders look_order_by_user(int id){
		SqlSession sqlSession = null;
		try{
			sqlSession = MyBatisUtil.getSqlSession();
			Orders order = sqlSession.selectOne("userOrderBean.look_order_by_user", id);
			sqlSession.commit();
			return order;
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
			throw e;
		}finally{
			MyBatisUtil.closeSqlSession();
		}
	}
	
	public void reset_car_amount(int car_id){
		SqlSession sqlSession = null;
		try{
			sqlSession = MyBatisUtil.getSqlSession();
			sqlSession.update("userCarBean.reset_car_amount",car_id);
			sqlSession.commit();
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
			throw e ;
		}finally{
			MyBatisUtil.closeSqlSession();
		}
	}
	
	public int cancel_user_order(Orders order){
		SqlSession sqlSession = null;
		int i = 0;
		try{
			sqlSession = MyBatisUtil.getSqlSession();
			i = sqlSession.update("userOrderBean.cancel_user_order", order);
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

	public int modify_user_order(Orders order){
		SqlSession sqlSession = null;
		int i = 0;
		try{
			sqlSession = MyBatisUtil.getSqlSession();
			i = sqlSession.update("userOrderBean.modify_user_order", order);
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
	
	//Test
	public Orders look_user_order1(){
		SqlSession sqlSession = null;
		try{
			sqlSession = MyBatisUtil.getSqlSession();
			Orders orders = sqlSession.selectOne("userOrderBean.look_user_order1", 1);
			sqlSession.commit();
			return orders;
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
			throw e;
		}finally{
			MyBatisUtil.closeSqlSession();
		}
	}
	
	
	public static void main(String[] args) {
		Orders order = new Orders();
		order.setUser_id(1);
		UserOrderDao user = new UserOrderDao();
		List<User> orders = (List<User>) user.look_user_order(order);
		for(User o : orders){
			System.out.println(o.getUid());
			for(Orders or : o.getOrderList()){
				System.out.println(or.getFrom_date());
				for(Car c :  or.getCarList()){
					System.out.println(c.getBranch());
				}
			}
		}
	}
	
	
}
