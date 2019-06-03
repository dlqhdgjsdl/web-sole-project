<%@page import="sist.com.project.dao.OrangeDao"%>
<%@page import="java.util.HashMap"%>
<%@page import="sist.com.project.dao.bulltinbean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">


<title>봉봉축구홈페이지</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<link href="../css/contents.css" rel="stylesheet" type="text/css" />
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>

<style>
body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
	

body {font-size:16px;}
.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1}

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


</style>
<body>
<%
	request.setCharacterEncoding("EUC-KR");
	HashMap<String,Object>map=new HashMap<String,Object>();
	String query=request.getParameter("query");
    String data=request.getParameter("data");
    map.put("query", query);
    map.put("data", data);
	List<bulltinbean>list;
	int totalrow=OrangeDao.TotalRow(map);
	int pageScale=5;
	int totalPage=(totalrow%pageScale)==0?(totalrow/pageScale):(totalrow/pageScale)+1;
	if(totalrow==0)totalPage=1;
	int currentPage=1;
	String temp="1";
	temp=request.getParameter("page")==null?"1":request.getParameter("page");
	currentPage=Integer.parseInt(temp);
	
	int start=1+(currentPage-1)*pageScale;
	int end=pageScale+(currentPage-1)*pageScale;
	int currentBlock=currentPage%pageScale==0?(currentPage/pageScale):(currentPage/pageScale)+1;
	int startPage=1+(currentBlock-1)*pageScale;
	int endPage=pageScale+(currentBlock-1)*pageScale;
	if(totalPage<=endPage)endPage=totalPage;
	
	map.put("start",start);
	map.put("end", end);
	list = OrangeDao.Boardselect(map);
	%>
	<nav class="w3-sidebar w3-black w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
  <div class="w3-container">
    <h3 class="w3-padding-64"><b>봉봉<br>축구페이지</b></h3>
  </div>
  <div class="w3-bar-block">
    <a href="playermain.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Home</a> 
    <a href="borderlist.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">BulltinBoard</a> 
	<a href="main.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Login out</a> 

  </div>
</nav>
	

	<div id="wrapper">
		
		<div id="container">
			<div id="contentsWrap" class="contentsWrap">
				<div class="contents">
					<div>
				  <div class="w3-container" style="margin-left:190px" id="SoccerTeam">
    <h1 class="w3-jumbo"><b>BULLTIN LIST</b></h1>
    <h1 class="w3-xxxlarge w3-text-black"><b style="font-size:10;">게시판수정,삭제는 관리자만 가능</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
  </div>
  
					</div>
					<div class="btnSet clfix mgb15" style="margin-top: 70px; margin-right: -70px">
						<span class="fr">
							<button type="button" onclick="location.href='borderedit.jsp'">Writer</button>
							<button type="button" onclick="location.href='main.jsp'">Main</button>
						</span>
					</div>
					<form action="" method="post" name="sFrm">
					<table class="bbsWrite mgb35" style="margin-left:140px;">
						<caption></caption>
						<colgroup>
							<col width="30" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col />
						</colgroup>
						<tbody>
						<tr>
							<th>검색</th>
							<td>
								<select id="query" name="query">
									<option value="empty">선택좀..</option>
									<option value="team">팀이름</option>
									<option value="title">선수이름</option>
								</select>
								<input type="text" name="data" class="inputText" size="30" />
								<a href="#">검색</a>
							</td>
						</tr>
						</tbody>
					</table>
					</form>
					<table class="bbsList" style="margin-left: 140px">
						<colgroup>
							<col width="30" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
						</colgroup>
						<thead>
						<tr class="coltitle">
							<th scope="col" class="fir">NO.</th>
							<th scope="col">이미지</th>
							<th scope="col">선수</th>
							<th scope="col">작성자</th>
							<th scope="col">조회수</th>
							<th scope="col">등록일</th>
						</tr>
						</thead>

						<tbody>
						<tr>
						</tr>
						<%
							for(int i = 0;i<list.size(); i++){
							bulltinbean btb = list.get(i);
						%>
						<tr>
							<td><%=btb.getNo()%></td>
							<td>
								<%
									String[] res = null;
								res =btb.getImage().split("#");
								
								for(int j = 0;j<res.length;j++){
									%><img src="/jspMyBatis/project/upimage/<%=res[j]%>" width="50" height="50"/>
								<%
											}
								%>	
							</td>
							<td><a href="Hit.jsp?no=<%=btb.getNo()%>&page=<%=currentPage%>"><%=btb.getName() %></a></td>
							<td><%=btb.getWriter() %></td>
							<td><%=btb.getHit() %></td>
							<td><%=btb.getRegdate() %></td>
						</tr>
						<%
							} 
						%>
						</tbody>
					</table>

					<div class="paging" style= "margin-left: 250px;" >
						<a href="borderlist.jsp?page=1"><i class="fa fa-arrow-circle-left" style="font-size:36px"></i></a>
						<%
						if(currentBlock>1){
						%>
						<a href="borderlist.jsp?page=<%=startPage-1%>"><img src="../img/button/btn_prev.gif" alt="이전" /></a>
						<%
						}
						%>
						<%if(currentPage>1){
						%>
						<a href="borderlist.jsp?page=<%=currentPage-1%>"><i class='fas fa-caret-square-left' style='font-size:36px'></i></a>
						<% 
						}
						%>
						<span>
						<%
						for(int i=startPage;i<=endPage;i++){
							if(currentPage==i){
							%>
						 <a href="#"> <font size="7" color="green" style="font-family: fantasy;"><%=i%></font></a>
						<%
						}else{
							
						%>	
						<a href="borderlist.jsp?page=<%=i%>"><%=i%></a>
						<%
							}
						}
						%>
						</span>
						<%
						if(currentPage<totalPage){
							%>
							<a href="borderlist.jsp?page=<%=currentPage+1%>"><i class='fas fa-caret-square-right' style='font-size:36px'></i></a>
						<%
						}
						%>
						<% 
						if(totalPage>endPage){
						%>
						 <a href="borderlist.jsp?page=<%=endPage+1%>"><img src="../img/button/btn_next.gif" alt="다음" /></a>
						<%
						}
						%><a href="borderlist.jsp?page=<%=totalPage%>"><i class="fa fa-arrow-circle-right" style="font-size:36px"></i></a>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>