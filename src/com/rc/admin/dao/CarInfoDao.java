package com.rc.admin.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.rc.bean.Car;
import com.rc.bean.Car_admin;
import com.rc.mybatis.MyBatisUtil;

@Component("carInfoDao")
public class CarInfoDao {
	
	public int car_info_add(Car car){
		SqlSession sqlSession = null;
		try{
			sqlSession = MyBatisUtil.getSqlSession();
			int i = sqlSession.insert("adminCarBean.car_info_add", car);
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
	
	public int adminCar(Car_admin car_admin){
		SqlSession sqlSession = null;
		try{
			sqlSession = MyBatisUtil.getSqlSession();
			int i = sqlSession.insert("adminCarBean.car_admin", car_admin);
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
	
	public Car search_carInfo_by_id(int id){
		SqlSession sqlSession = null;
		try{
			sqlSession = MyBatisUtil.getSqlSession();
			Car car = sqlSession.selectOne("adminCarBean.search_carInfo_by_id", id);
			sqlSession.commit();
			return car;
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
			throw e;
		}finally{
			MyBatisUtil.closeSqlSession();
		}
	}
	
	public int car_info_modefied(Car car){
		SqlSession sqlSession = null;
		try{
			sqlSession = MyBatisUtil.getSqlSession();
			int i = sqlSession.insert("adminCarBean.car_info_modefied", car);
			return i;
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
			throw e;
		}finally{
			MyBatisUtil.closeSqlSession();
		}
	}
	
	public List<Car> check_car_info(Car car){
		SqlSession sqlSession = null;
		try{
			sqlSession = MyBatisUtil.getSqlSession();
			List<Car> carlist = sqlSession.selectList("adminCarBean.check_car_info", car);
			sqlSession.commit();
			return carlist;
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
			throw e;
		}finally{
			MyBatisUtil.closeSqlSession();
		}
		
	}


}
