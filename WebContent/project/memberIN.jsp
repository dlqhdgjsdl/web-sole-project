<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="sist.com.project.dao.OrangeDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<% 
request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="m" class="sist.com.project.dao.projectmemberbean"></jsp:useBean>
<jsp:setProperty property="*" name="m"/>
</head>
<body>
	
	<%
		System.out.println(m);
		OrangeDao.MemberIn(m);
		session.setAttribute("name",m.getNAME());
	%>
	<script>
		alert('회원가입 완료');
		location.href='main.jsp';
	</script>
</body>
</html>