package com.rc.mybatis;

import java.io.IOException;
import java.io.Reader;
import java.sql.Connection;

import javax.annotation.Resource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.log4j.chainsaw.Main;

public class MyBatisUtil {

	
	private static ThreadLocal<SqlSession> threadLocal = new ThreadLocal<SqlSession>();
	
	public static SqlSessionFactory sqlSessionFactory;
	
	static{
		
		try {
			//加载配置文件
			Reader reader = Resources.getResourceAsReader("mybatis.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException();
		}
	}
	
	//禁止外界加载这个方法
	private MyBatisUtil(){}
	
	public static SqlSession getSqlSession(){
		SqlSession sqlSession = threadLocal.get();
		if(sqlSession == null){
			sqlSession = sqlSessionFactory.openSession();
			threadLocal.set(sqlSession);
		}
		return sqlSession;
	}
	
	
	public static SqlSession closeSqlSession(){
		SqlSession sqlSession = threadLocal.get();
		if(sqlSession != null){
			sqlSession.close();
			//分离Session，释放对象
			threadLocal.remove();
		}
		return null;
	}
	
	
	
	public static void main(String[] args) {
		Connection con = MyBatisUtil.getSqlSession().getConnection();
		System.out.println(con != null?"连接成功":"连接失败");
	}

}
