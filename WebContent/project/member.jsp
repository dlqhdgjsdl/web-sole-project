<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<style>
/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fff0f2;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 40%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}
body {
background-image: url("4.jpg");
	min-height: 80%;
		background-position: center;
		background-size: cover;}
* {box-sizing: border-box;
font-family: Arial, Helvetica, sans-serif;}




.input-container {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  width: 100%;
  margin-bottom: 15px;
}



.input-field {
  width: 100%;
  padding: 10px;
  outline: none;
}

.input-field:focus {
  border: 2px solid dodgerblue;
}

button{
  background:#080808;
  color:#fff;
  border:none;
  position:fixed;
  height:40px;
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

<script charset="UTF-8" src="/jspMyBatis/project/script/memberinfo.js">
</script>
</head>
<body>
<div class="bgimg w3-display-container w3-animate-opacity w3-text-white">
<div id="id01" class="modal" style="display:block; opacity: 0.8 ">
<form class="modal-content animate" action="memberIN.jsp" style="max-width:500px;margin:auto; border-radius: 15px/15px;;" name="memberfrm1">
  <h2 style="text-align: center;">Register Form</h2>
  <div class="input-container">
   
    <input class="input-field" type="text" placeholder="FirstName" name="FIRSTNAME" onblur="namecheck()"/>
  	
  </div>

  <div class="input-container">
   
    <input class="input-field" type="text" placeholder="NAME" name="NAME" onblur="namecheck1()"/>
  	
  </div>
  
  <div class="input-container">
    <input class="input-field" type="text" placeholder="Id" name="ID" readonly="readonly" style="width: 60%;" /><button type="button"  onclick="javascript:idcheck1()" style="margin-left: 330px; height: 40px;width: 120px; font-size: 15px;">중복체크</button>
  </div>
  
  <div class="input-container">
   
    <input class="input-field" type="text" placeholder="Password" name="PASSWORD" id="PASSWORD" style="width: 60%;"><button type="button"  onclick="javascript:passwordcheck1()" style="margin-left: 330px; padding-left:1.0em;padding-right:1.0em; height: 40px; width: 120px; font-size: 15px;">비밀번호체크</button>
  </div>
  
  <div class="input-container" style="background-color:white; height: 30px; " >
    <input  type="radio"  name="Gender1" id="male" checked="checked" onclick="gendercheck(this)" value="male">남자
    <input  type="radio"  name="Gender1" id="female" style="margin-left: 50%" onclick="gendercheck(this)" value="female">여자
  	<input type="hidden" name="GENDER" value="male" id="GENDER"/>
  </div>
  
  <div class="input-container">
    <input class="input-field" type="text" placeholder="Adress" name="post1" readonly="readonly" onclick="javascript:addr()"> - <input class="input-field" type="text" placeholder="Adress" name="post2" readonly="readonly">
  </div>
   <div class="input-container">
    <input class="input-field" type="text" placeholder="Adress" name="ADRESS">
  </div>
  <div class="input-container">
   
    <input class="input-field" type="text" placeholder="***" name="pn1">-
  	<input class="input-field" type="text" placeholder="****" name="pn2">-
  	<input class="input-field" type="text" placeholder="****" name="pn3" onblur="pncheck()">
  	<input class="input-field" type="hidden"  name="PHONENUM">
  </div>

  <button style="margin-left: 300px;">Register</button>
  <button class="a4" type="button" onclick="location.href='main.jsp'">main</button>
</form>
</div>
</div>
</body>
</html>