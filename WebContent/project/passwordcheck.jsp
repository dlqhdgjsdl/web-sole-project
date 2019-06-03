<%@page import="sist.com.project.dao.OrangeDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script >
	function sendpassword(password1){
		window.opener.memberfrm1.PASSWORD.value=password1;
		self.close();
	}
</script>
</head>
<% boolean flag=false;
	String password1=request.getParameter("password");
	if(password1!=null){
		flag=OrangeDao.password(password1);
	}

%>

<body>
	 <h1>비밀번호 확인</h1>
	 <table>
	 	<%
	 		if(password1!=null && flag){
	 	%>
	 	<tr>
	 	 <td> 입력하신 패스워드 <strong><%=password1 %></strong>은 이미 사용중인 패스워드 입니다.
	 		<p>다른 패스워드를...</p></td>
	 	<td>
	 	</td>
	 	</tr>
	 	<%
	 		}else if(password1!=null && !flag){
	 	%>
	 	<tr>
	 	<td> 입력하신 패스워드 <strong><%=password1 %></strong>은  사용가능 한  패스워드 입니다.
          <p> <a href="javascript:sendpassword('<%=password1%>')"> 여기를 눌러줘 </a></p></td>
		</tr>
		<%
	 		}
		%>
	 </table>
</body>
</html>