package com.rc.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.rc.bean.User;
import com.rc.mybatis.MyBatisUtil;

@Component("userLoginDao")
public class UserLoginDao {
	
	
	public User userLogin(User user) throws Exception{
		SqlSession  sqlSession = null;
		try{
			sqlSession = MyBatisUtil.getSqlSession();
			User users = sqlSession.selectOne("userLoginBean.userLogin",user);
			sqlSession.commit();
			return users;
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
			throw e;
		}finally{
			MyBatisUtil.closeSqlSession();
		}
	}

	
	public int userRegist(User user) throws Exception{
		SqlSession sqlSession = null;
		try{
			int i = 0;
			sqlSession = MyBatisUtil.getSqlSession();
			i = sqlSession.insert("userLoginBean.userRegister", user);
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
	
	public int changePwd(User user) throws Exception{
		
		SqlSession sqlSession = null;
		int i = 0;
		try{
			sqlSession = MyBatisUtil.getSqlSession();
			i = sqlSession.update("userLoginBean.userChangPwd", user);
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
