package com.rc.user.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.rc.bean.Car;
import com.rc.mybatis.MyBatisUtil;

@Component("userCarDao")
public class UserCarDao {
	public List<Car> user_get_carInfo(){
		SqlSession sqlSession = null;
		try{
			sqlSession = MyBatisUtil.getSqlSession();
			List<Car> carList = sqlSession.selectList("userCarBean.user_get_carInfo");
			sqlSession.commit();
			return carList;
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
			throw e;
		}finally{
			MyBatisUtil.closeSqlSession();
		}
	}
	
	public Car look_car_info(int id){
		SqlSession sqlSession = null;
		try{
			sqlSession = MyBatisUtil.getSqlSession();
			Car car = sqlSession.selectOne("userCarBean.look_car_info", id);
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
}
