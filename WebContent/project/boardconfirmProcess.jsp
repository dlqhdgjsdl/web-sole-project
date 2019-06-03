<%@page import="sist.com.project.dao.OrangeDao"%>
<%@page import="sist.com.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%
    String no=request.getParameter("no");
    String job=request.getParameter("job");
    String cp=request.getParameter("cp");
    String pageno=request.getParameter("page");
    String id=(String)session.getAttribute("id");
    
    String dbPass=OrangeDao.selectpassCheck(id);//dao
    if(dbPass!=null && dbPass.equals(cp.trim())){
    	if(job.equals("delete")){
    		OrangeDao.BoardDelete(Integer.parseInt(no));
    		response.sendRedirect("borderlist.jsp");
    	}/* else if(job.equals("mod")){
    		session.setAttribute("info", OrangeDao.selectboardinfo(Integer.parseInt(no)));
    		session.setMaxInactiveInterval(60*3);
    		response.sendRedirect("borderedit.jsp?flag=mod&page="+pageno);
    	} */
    }else{
    	response.sendRedirect("boardconfirm.jsp?no="+no+"&job="+job+"&page="+pageno);
    }

%>
</head>
<body>

</body>
</html>

