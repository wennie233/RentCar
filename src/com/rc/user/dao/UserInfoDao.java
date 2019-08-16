package com.rc.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.rc.bean.User;
import com.rc.mybatis.MyBatisUtil;

@Component("userInfoDao")
public class UserInfoDao {

	public int userInfoModefied(User user){
		SqlSession sqlSession = null;
		int i = 0;
		try{
			sqlSession = MyBatisUtil.getSqlSession();
			System.out.println("-----------------------------"+user.getReal_name());
			i = sqlSession.update("userLoginBean.userInfoModefied", user);
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
