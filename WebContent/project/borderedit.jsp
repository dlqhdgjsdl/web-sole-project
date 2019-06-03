<%@page import="sist.com.project.dao.bulltinbean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>봉봉 글쓰기</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="imagetoolbar" content="no" />
<link href="../css/contents.css" rel="stylesheet" type="text/css" />
<style>
button{
  background:#080808;
  color:#fff;
  border:none;
  position:relative;
  height:60px;
  font-size:1.6em;
  padding:0 2em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
  border-radius: 15px/15px;
  
}
button:hover{
  background:#fff;
  color:#1AAB8A;
}
button:before,button:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #1AAB8A;
  transition:400ms ease all;
}
button:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
button:hover:before,button:hover:after{
  width:100%;
  transition:800ms ease all;
}
h1{
	font-family: "휴먼매직체";
	margin-left: 13%;
	font-size: 50px;
	color: black;
}

html, body {width:100%; height:100%;}
    body{background-image: url("4.jpg");
  min-height: 100%;
  background-position: center;
  background-size: cover;}
</style>
<%
	bulltinbean btb=(bulltinbean)session.getAttribute("info");
	String flag=request.getParameter("flag");
	String pageno=request.getParameter("page");
	if(btb!=null){
		session.setAttribute("modifyfile",btb.getImage());
	}
	
%>
<script>
	function saveborder(){
		var obj=document.boardfrm;
		obj.submit();
	}
/* 	 function show(flag2){
		var obj=document.getElementById("save"){
			if(flage2=='mod'){
				   obj.firstChild.nodeValue='수정';
			   }else{
				   obj.firstChild.nodeValue='저장';
			   }	   
		   }
	} 
	
 */</script>
</head>
<body<%--  onload="show('<%=flag %>')" --%>>
	<div id="wrapper">
		<!-- <div id="header">
			<div class="topInfoWrap">
				<div class="topInfoArea clfix">
					<div class="loginWrap">
						<span class="fir">2012.05.17</span>
						<span>13:30:22</span>
						<span><em>OOO님</em> 좋은 하루 되세요</span>
						<a href="" class="btnLogout"><img src="../img/common/btn_logout.gif" alt="로그아웃" /></a>
					</div>
				</div>
			</div>
			<div class="gnbSubWrap">
				
			</div>
		</div> -->	
					<h1>게시판 등록</h1>
 		<div id="container">
			<div id="contentsWrap" class="contentsWrap">
				<div class="contents">
					<div class="btnSet clfix mgb15">
						<span class="fr" style="margin-right: 330px;">
						
							<button type="button" onclick="location.href='javascript:saveborder()'">저장</a></button>
							<button type="button" onclick="location.href='borderlist.jsp'" >목록</button>
						</span>
					</div>
					<form action="boardeditInsert.jsp?flag=<%=btb!=null?"mode1":"insert1" %>&no=<%=btb!=null?btb.getNo():0 %>&page=<%=btb!=null?pageno:"1" %>" name="boardfrm" method="post" enctype="multipart/form-data">
					<table class="bbsWrite">
						<colgroup>
							<col width="90" />
							<col />
						</colgroup>

						<tbody>
						<tr>
							<th scope="row">작성자</th>
							<td><input type="text" name="writer" class="inputText" size="10" /></td>
						</tr>
						<tr>
							<th scope="row">선수이름</th>
							<td><input type="text" name="name" class="inputText" size="30" /></td>
						</tr>
						<tr>
							<th scope="row">나이</th>
							<td><input type="text" name="age" class="inputText" size="10" /></td>
						</tr>
						<tr>
							<th scope="row">소속</th>
							<td><input type="text" name="team" class="inputText" size="10" /></td>
						</tr>
						<tr>
							<th scope="row">국적</th>
							<td><input type="text" name="nation" class="inputText" size="10" /></td>
						</tr>
						
						
						<tr>
							<th scope="row">커리어</th>
							<td class="editer">
								<textarea name="contents"></textarea>
							</td>
						</tr>
						<%
							if(flag!=null && session!=null){
								String []res=btb.getImage().split("#");
								for(int i = 0;i<res.length;i++){
							
						%>
						<tr>
							<th scope="row">이미지첨부</th>
							<td>
							<input type="file" name="filename" class="inputText" size="50" />
							<img src="/jspMyBatis/project/upimage/<%=res[i]%>" width="50" height="50"/>
							</td>
						</tr>
						<%
								}
						%>
						<%
							}else{
						%>
						<tr>
						<th scope="row">이미지첨부</th>
						<td>
						<input type="file" name="fileName" class="inputText" size="50" />
						</td>
						</tr>
						<tr>
						<th scope="row">이미지첨부</th>
						<td>
						<input type="file" name="fileName" class="inputText" size="50" />
						</td>
						</tr>
						<th scope="row">이미지첨부</th>
						<td>
						<input type="file" name="fileName" class="inputText" size="50" />
						</td>
						</tr>
						<%
						} 
						%>
						</tbody>
					</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>