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
	 <h1>��й�ȣ Ȯ��</h1>
	 <table>
	 	<%
	 		if(password1!=null && flag){
	 	%>
	 	<tr>
	 	 <td> �Է��Ͻ� �н����� <strong><%=password1 %></strong>�� �̹� ������� �н����� �Դϴ�.
	 		<p>�ٸ� �н����带...</p></td>
	 	<td>
	 	</td>
	 	</tr>
	 	<%
	 		}else if(password1!=null && !flag){
	 	%>
	 	<tr>
	 	<td> �Է��Ͻ� �н����� <strong><%=password1 %></strong>��  ��밡�� ��  �н����� �Դϴ�.
          <p> <a href="javascript:sendpassword('<%=password1%>')"> ���⸦ ������ </a></p></td>
		</tr>
		<%
	 		}
		%>
	 </table>
</body>
</html>