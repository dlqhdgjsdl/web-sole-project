<%@page import="sist.com.project.dao.zipCodeBean"%>
<%@page import="sist.com.project.dao.OrangeDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<link href="/jspMyBatis/sist/css/common.css" rel="stylesheet" type="text/css" />
<link href="/jspMyBatis/sist/css/user.css" rel="stylesheet" type="text/css" />
<script>
   function searhAddr(){
	   var obj=document.addrFrm;
	   if(!obj.dong.value){
		   alert('주소좀 입력하지....');
		   return false;
	   }
	   obj.submit();
   }
   function sendZipcode(post,addr){
	   window.opener.memberfrm1.post1.value=post.split("-")[0];
	   window.opener.memberfrm1.post2.value=post.split("-")[1];
	   window.opener.memberfrm1.ADRESS.value=addr;
	   self.close();
	   
   }
</script>
</head>
<%
    request.setCharacterEncoding("EUC-KR");
    List<zipCodeBean>list=null;
    String dong=request.getParameter("dong");
    if(dong!=null)
    list=OrangeDao.zipCodeBeanselect(dong);
%>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<form action="addresscheck.jsp" method="post" name="addrFrm">
<table width="400" height="380"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top" background="/jspMyBatis/sist/img/join_pop_bg1.gif">
	<table width="100%"  border="0" cellspacing="0" cellpadding="0">
	  <tr>
        <td height="45" colspan="3"><img src="/jspMyBatis/sist/img/join_pop_title4.gif" width="115" height="20"></td>
      </tr>
	  <tr>
        <td width="50" height="30">&nbsp;</td>
        <td>&nbsp;</td>
        <td width="50">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td align="center" style="padding: 10 ">찾고자 하는 지역의 &quot;읍,면,동&quot; 이름을 입력하세요.<br>
          예: 구의동일 경우, '구의' 로 검색하세요.</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td></td>
        <td height="7"></td>
        <td></td>
      </tr>
	  <tr>
        <td>&nbsp;</td>
        <td height="40" align="center" bgcolor="F5F5F5">주소검색 
            <input type="text" name="dong"  size="25" class="input"/>
            <input type="image" src="/jspMyBatis/sist/img/btn_search.gif" width="36" height="18" border="0" align="absmiddle" onclick="searhAddr()">
		</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td height="7">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td style="padding: 1 " bgcolor="#DDDDDD">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		 <tr height="1" bgcolor="f4f4f4">
           <td></td>
		   <td></td>
		   <td></td>
         </tr>
		 <tr bgcolor="ddddddd">
           <td width="1" bgcolor="f4f4f4"></td>
           <td height="25" align="center" bgcolor="EEEEEE">해당 주소를 선택하세요.</td>
		   <td width="1" bgcolor="f4f4f4"></td>
         </tr>
        </table>
		<div style="height:120px; width:300; overflow:auto;">		  
		  <table width="100%" height="120"  border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" class="gray_blue">
            <tr>
			  <td height="8"></td>
			</tr>
			<%
			  if(dong!=null&& list.size()>0){
			    for(int i=0;i<list.size();i++){
			    	zipCodeBean bean=list.get(i);
			    	String temp=bean.getSido()+bean.getGugun()+bean.getDong();
			    	
			%>			  
            <tr>
              <td height="20" style="padding-left: 25 ">
                <a href="javascript:sendZipcode('<%=bean.getZipcode()%>','<%=temp %>')"><%=bean.getZipcode()%><%=temp %></a>
              </td>
            </tr>
            <%
			    }
			  }
            %>
           
          </table>
		  </div>
		</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
   </form>  
</body>
</html>





    