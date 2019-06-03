<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>로그인 화면</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
body,h1 {font-family: "Raleway", sans-serif}
body, html {height: 100%}


body {font-family: Arial, Helvetica, sans-serif;
 background-image: url("1.jpg");
	min-height: 80%;
		background-position: center;
		background-size: cover; }
form {border: 3px solid #f1f1f1;}


/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

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


/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
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
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 25%; /* Could be more or less, depending on screen size */
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

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>
<div class="bgimg w3-display-container w3-animate-opacity w3-text-white">
<div id="id01" class="modal" style="display:block; opacity: 0.9 ">
<form class="modal-content animate" name="login" method="post" action="LoginProcess.jsp" style="border-radius: 15px/15px;">
  <div >
  <div class="imgcontainer" >
    <a href="main.jsp"><span class="close" title="Close Modal">&times;</span></a>
    <img src="2.jpg" alt="Avatar" class="avatar">
  </div>
  
  <div class="loginidForm">
     <!-- <label for="uname"><b>ID</b></label> -->
     <input type="text" name="user_id" class="text" id="user_id" placeholder="ID입력부탁 ㅎ"/>
</div>

<div>
 	<!-- <label for="psw"><b>PW</b></label> -->
    <input type="password" name="user_passwd" class="text" id="user_passwd" placeholder="PW입력부탁 ㅎ"/>
    
</div>    
    <div class="btn" style="margin-left: 200px">
    <button type="submit" style="margin-left: -80%;">login</button>
    </div>
   
   </fieldset>
  
</form>
</div>
</div>
</div>
</body>
</html>