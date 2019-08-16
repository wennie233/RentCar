package com.rc.admin.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.rc.bean.Admin;
import com.rc.bean.Car_admin;
import com.rc.bean.User;
import com.rc.mybatis.MyBatisUtil;

@Component("adminLoginDao")
public class AdminLoginDao {
	
	
	public Admin userLogin(Admin admin) throws Exception{
		SqlSession  sqlSession = null;
		try{
			sqlSession = MyBatisUtil.getSqlSession();
			Admin admins = sqlSession.selectOne("adminLoginBean.adminLogin",admin);
			sqlSession.commit();
			return admins;
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
			throw e;
		}finally{
			MyBatisUtil.closeSqlSession();
		}
	}

	
	
	public int changePwd(Admin admin) throws Exception{
		
		SqlSession sqlSession = null;
		int i = 0;
		try{
			sqlSession = MyBatisUtil.getSqlSession();
			i = sqlSession.update("adminLoginBean.adminChangPwd", admin);
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
	
	public int adminInfoModefied(Admin admin){
		SqlSession sqlSession = null;
		int i = 0;
		try{
			sqlSession = MyBatisUtil.getSqlSession();
			i = sqlSession.update("adminLoginBean.adminInfoModefied", admin);
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


}
