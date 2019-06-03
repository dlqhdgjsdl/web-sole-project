<%@page import="sist.com.project.dao.OrangeDao"%>
<%@page import="sist.com.project.dao.bulltinbean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	
		int no = Integer.parseInt(request.getParameter("no"));
		String pageno=request.getParameter("page");
		OrangeDao.Hitupdate(no);
		
		response.sendRedirect("memberinfo.jsp?no="+no+"&page="+pageno);
		
	%>
</body>
</html>