<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<title>비밀번호확인~</title>
<link href="/jspMyBatis/sist/css/common.css" rel="stylesheet" type="text/css" />
<link href="/jspMyBatis/sist/css/user.css" rel="stylesheet" type="text/css" />
<script>
  var passCheck=function(){
	  var obj=document.confrm;
	  if(!obj.cp.value){
		  alert('PassCheck!');
		  obj.cp.focus();
		  return false;
	  }
	  obj.submit();
  }
</script>
</head>
<%
     String no=request.getParameter("no");
     String job=request.getParameter("job");
     String pageno=request.getParameter("page");
     
     

%>
<body>
<div id="wrap">
	
    
    
    
    <!-- #contents -->
  <div id="contents">
       <form action="boardconfirmProcess.jsp" name="confrm">
          <ul id="join_comp1">
            	<li><img src="/jspMyBatis/sist/img/img_key.gif" width="51" height="67" alt="확인" align="absmiddle"  />&nbsp;
            	<input name="cp" type="password" class="input" size="20" />
            	<input  type="hidden" name="no" value="<%=no%>"/>
            	<input  type="hidden" name="job" value="<%=job%>"/>
            	<input  type="hidden" name="page" value="<%=pageno%>"/>
            	
       	    &nbsp;<img src="/jspMyBatis/sist/img/btn_confirm2.gif" width="57" height="28" alt="확인" align="absmiddle" onclick="passCheck()" /> </li>
		  </ul>
              
            </form>
          
    </div>
   
  </div><!-- /#contents -->

</div><!-- /#wrap -->



</body>
</html>
