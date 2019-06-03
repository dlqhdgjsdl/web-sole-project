package sist.com.project.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sist.com.dao.SqlSessionFactoryManager;
import sist.com.project.dao.zipCodeBean;
public class OrangeDao {
	private static SqlSessionFactory sessionFactory;
	
	static {
		sessionFactory=SqlSessionFactoryManager.getSqlSessionFactory();
		
	}
	
	public static boolean idcheck(String id) {
		SqlSession session = null;
		try {
			session=sessionFactory.openSession();
			String dbId=session.selectOne("idcheck",id);
			if(dbId!=null && dbId.equals(id)) {
				return true;
			}
		} catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		return false;
	}
	
	public static boolean password(String password) {
		SqlSession session = null;
		try {
			session=sessionFactory.openSession();
			String dbpassword=session.selectOne("password",password);
			if(dbpassword!=null && dbpassword.equals(password)) {
				return true;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}return false;
	}
	
	public static List<zipCodeBean> zipCodeBeanselect(String dong){
		SqlSession sqlSession = null;
		List<zipCodeBean>list = null;
		try {
			sqlSession=sessionFactory.openSession();
			list=sqlSession.selectList("zipCodeBeanselect",dong);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			if(sqlSession!=null)sqlSession.close();
		}
		return list;
	}
	
	public static void MemberIn(projectmemberbean bean) {
		SqlSession session=null;
		try {
			session=sessionFactory.openSession();
			session.insert("MemberIn",bean);
			session.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.rollback();
		}finally {
			if(session!=null)session.close();
		}
	}
	public static  boolean logincheck(String id, String pw) {
	SqlSession session=null;
	try {
		session=sessionFactory.openSession();
		String dblogin=session.selectOne("logincheck",id);
		if(dblogin!=null && dblogin.equals(pw.trim())) {
			return true;
		}
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}finally {
		if(session!=null)session.close();
	}
		return false;
	}
	public static bulltinbean selectboardinfo(int no) {
		SqlSession session = null;
		try {
			session=sessionFactory.openSession();
			return session.selectOne("selectboardinfo",no);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		return null;
	}
	public static String selectpassCheck(String id) {
		SqlSession session =null;
		try {
			session=sessionFactory.openSession();
			return session.selectOne("selectpassCheck",id);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			if(session!=null)session.close();
		}
		return null;
	}
public static void BoardDelete(int no) {
	SqlSession session = null;
	try {
		session=sessionFactory.openSession();
		session.delete("BoardDelete",no);
		session.commit();
	} catch (Exception e) {
		// TODO: handle exception
	e.printStackTrace();
	session.rollback();
		}finally {
			if(session!=null)session.close();
		}
}

public static void BoardUpdate(bulltinbean btb) {
	SqlSession session =null;
	try {
		session=sessionFactory.openSession();
		session.update("BoardUpdate",btb);
		session.commit();
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
		session.rollback();
	}finally {
		if(session!=null)session.close();
	}
	
}
public static void BoardInsert(bulltinbean btb) {
	SqlSession session=null;
	try {
		session=sessionFactory.openSession();
		session.insert("BoardInsert", btb);
		session.commit();
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
		session.rollback();
	}finally {
		if(session!=null)session.close();
	}
}
public static void Hitupdate(int no) {
	SqlSession session = null;
	try {
		session=sessionFactory.openSession();
		session.update("Hitupdate",no);
		session.commit();
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
		session.rollback();
	}finally {
		if(session!=null)session.close();
	}
}
public static Integer TotalRow(HashMap<String,Object>map) {
	SqlSession session=null;
	try {
		session=sessionFactory.openSession();
		return session.selectOne("TotalRow",map);
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}finally {
		if(session!=null)session.close();
	}
	return 0;
}
public static List<bulltinbean>Boardselect(HashMap<String, Object>map){
	SqlSession session=null;
	try {
		session=sessionFactory.openSession();
		return session.selectList("Boardselect",map);
	} catch (Exception e) {
		// TODO: handle exception
	e.printStackTrace();
	
		}finally {
			if(session!=null)session.close();
		}
	return null;
	}
}
