<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<title>봉봉축구홈페이지</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<%-- <%
	String id=document.getElementbyId()
%> --%>
<style>
body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
body {font-size:16px;}


.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer; height: 400px;}
.w3-half img:hover{opacity:1}

</style>
<body>

<!-- Sidebar/menu -->
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

<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
  <a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onclick="w3_open()">☰</a>
  <span>Company Name</span>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:340px;margin-right:40px">

  <!-- Header -->
  <div class="w3-container" style="margin-top:80px" id="SoccerTeam">
    <h1 class="w3-jumbo"><b>YOU ARE LIGHT OF THE WORLD</b></h1>
    <h1 class="w3-xxxlarge w3-text-black"><b>SoccerTeam.</b></h1>
    <hr style="width:50px;border:5px solid red" class="w3-round">
  </div>
  
  <!-- Photo grid (modal) -->
  <form action="" id="pfrm">
  <div class="w3-row-padding">
    <div class="w3-half" >
      <img src="/jspMyBatis/project/image/d.jpg" style="width:100%" onclick="onClick(this)" alt="REALMADRID" id="REALMADRID">
      <img src="/jspMyBatis/project/image/e.jpg" style="width:100%" onclick="onClick(this)" alt="LIVERPOOL" id="LIVERPOOL">
      <img src="/jspMyBatis/project/image/f.jpg" style="width:100%" onclick="onClick(this)" alt="MANCHESTER UNITED" id="MANCHESTERUNITED">
    </div>

    <div class="w3-half" >
      <img src="/jspMyBatis/project/image/a.jpg" style="width:100%" onclick="onClick(this)" alt="JUVENTUS" id="JUVENTUS">
      <img src="/jspMyBatis/project/image/b.jpg" style="width:100%" onclick="onClick(this)" alt="FC BARCELONA" id="FCBARCELONA">
      <img src="/jspMyBatis/project/image/c.jpg" style="width:100%" onclick="onClick(this)" alt="ARSENAL" id="ARSENAL" >
    </div>
  </div>
</form>
  <!-- Modal for full size images on click-->
  <div id="modal01" class="w3-modal w3-black" style="padding-top:0" onclick="this.style.display='none'">
    <span class="w3-button w3-black w3-xxlarge w3-display-topright">×</span>
    <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
      <img id="img01" class="w3-image" onclick="enterSite(this)" style="cursor:pointer">
      <p id="caption"></p>
       <div class="w3-display-bottomcenter w3-padding-large">
  
  </div>
    </div>
  </div>

  

<!-- End page content -->
</div>
<script>
// Script to open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("myOverlay").style.display = "none";
}

// Modal Image Gallery
function onClick(element){
	/* top.location.href='www.'+element.id+'.com'; */
  document.getElementById("img01").src = element.src;
	document.getElementById("img01").name = element.id;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt; 
	
}

function enterSite(obj){
	location.href="http://www."+obj.name+".com";
}

</script>

</body>
</html>
