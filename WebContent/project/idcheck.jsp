<%@page import="sist.com.project.dao.OrangeDao"%>
<%@page import="sist.com.dao.ScottDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<title>아이디 중복검사</title>
<link href="/jspMyBatis/sist/css/common.css" rel="stylesheet" type="text/css" />
<link href="/jspMyBatis/sist/css/user.css" rel="stylesheet" type="text/css" />
<script>
	function Idsend(){
		var obj=document.IdFrm;
		if(!obj.id.value){
			alert('아이디를 입력하세요');
			return false;
		}
		obj.submit();
	}
	function IdData(id){
		window.opener.memberfrm1.ID.value=id;
		self.close();
	}

</script>
</head>
<% boolean flag=false;
	String id=request.getParameter("id");
	if(id!=null)
		flag=OrangeDao.idcheck(id);
	
%>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<form action="" name="IdFrm" method="post">
<table width="400" height="289"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top" background="/jspMyBatis/sist/img/join_pop_bg.gif">
    <table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="45" colspan="3"><img src="/jspMyBatis/sist/img/join_pop_title2.gif" width="130" height="20" /></td>
      </tr>
      <tr>
        <td width="50" height="60">&nbsp;</td>
        <td height="60">&nbsp;</td>
        <td width="50">&nbsp;</td>
      </tr>
      <%
         if(id!=null && flag){
      %>
     <tr>
        <td>&nbsp;</td>
        <td height="60" align="center" style="padding: 10 "> 입력하신 아이디 <strong><%=id %></strong>은 이미 사용중인 ID 입니다.
          <p>다른 ID를 검색하여주세요. </p></td>
        <td>&nbsp;</td>
      </tr>
      <%
         }else if(id!=null&& !flag){
      %>
      <tr>
        <td>&nbsp;</td>
        <td height="60" align="center" style="padding: 10 "> 입력하신 아이디 <strong><%=id %></strong>은  사용가능 한  ID 입니다.
          <p> <a href="javascript:IdData('<%=id%>')"> 여기를 클릭 하세요 </a></p></td>
        <td>&nbsp;</td>
      </tr>
      <%
         }
      %>
        <tr>
          <td>&nbsp;</td>
          <td height="40" align="center" bgcolor="F5F5F5"><strong>ID</strong> 입력
            <input type="text" name="id" class="input" />
            <input type="image" src="/jspMyBatis/sist/img/btn_confirm_re.gif" width="59" height="18" border="0" align="absmiddle" onclick="Idsend()" /></td>
          <td>&nbsp;</td>
        </tr>
      <tr>
        <td>&nbsp;</td>
        <td height="20">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td></td>
        <td height="1" background="/jspMyBatis/sist/images/dotline_2px.gif"></td>
        <td></td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html>