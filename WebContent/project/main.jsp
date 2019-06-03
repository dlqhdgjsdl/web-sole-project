<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<title>봉봉이 축구 가즈앗~!</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body,h1 {font-family: "Raleway", sans-serif}
body, html {height: 100%}
.bgimg {
  background-image: url("1.jpg");
  min-height: 100%;
  background-position: center;
  background-size: cover;
}
a{
	text-decoration:none;
	
}

</style>
<body>

<div class="bgimg w3-display-container w3-animate-opacity w3-text-white">
  <div class="w3-display-topleft w3-padding-large w3-xlarge">
  	봉봉 축구 홈페이지
  </div>
  <div class="w3-display-topright w3-padding-large w3-xlarge">
  
  <a href="Login.jsp" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">로그인</a>
  <a href="member.jsp" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">회원가입</a>
  </div>
  
  <div class="w3-display-middle">
    <h1 class="w3-jumbo w3-animate-top">welcome my friend</h1>
    <hr class="w3-border-grey" style="margin:auto;width:40%">
    <p class="w3-large w3-center">로그인 하시면 자동으로 들어가집니다!</p>
  </div>
</div>

<script>

var modal = document.getElementById('id01');
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
</body>
</html>
