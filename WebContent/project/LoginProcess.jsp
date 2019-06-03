<%@page import="sist.com.project.dao.OrangeDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
	String id=request.getParameter("user_id");
	String pw=request.getParameter("user_passwd");
	if(OrangeDao.logincheck(id, pw)){
		session.setAttribute("id",id);
		
		//session.setMaxInactiveInterval(60*2);
		response.sendRedirect("playermain.jsp");
	}else{
		response.sendRedirect("Login.jsp");	
	}
			
	
%>
<body>
	
</body>
</html>