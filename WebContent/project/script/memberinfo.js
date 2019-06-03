function namecheck(){
	
	var member=document.memberfrm1;
	
	if(member.FIRSTNAME.value && isNaN(member.FIRSTNAME.value) && member.FIRSTNAME.value.length>=10){
		member.FIRSTNAME.value=member.FIRSTNAME.value.substring(0,5);
		
	}else if(!member.FIRSTNAME.value||!isNaN(member.FIRSTNAME.value)){
		alert("FirstName Chenck");
		
		member.FIRSTNAME.style.background='coral';
	}
	var spname=document.getElementById("sname");
	var temp="";
	
	if(!member.FIRSTNAME.value){
		temp+='성만 확인좀ㅎ';
		
	}
	else if(!isNaN(member.FIRSTNAME.value)){
		temp+='문자만  좀 ㅎ';
	
	}
	else if(member.FIRSTNAME.value.length>5){
		temp+='5글자 이내로 좀 ㅎ';
		
	}
		alert(temp);
}


function namecheck1(){
	
	var member=document.memberfrm;
	if(member.NAME.value && isNaN(member.NAME.value) && member.NAME.value.length>=10){
		member.NAME.value=member.NAME.value.substring(0,10);
		
	}else if(!member.NAME.value||!isNaN(member.NAME.value)){
		/*alert("Name Check");*/
		
		member.NAME.style.background='coral';
	}
	var spname1=document.getElementById("sname1");
	var temp="";
	
	
	if(!member.NAME.value){
		temp+='이름을 확인좀ㅎ';
		
	}
	else if(!isNaN(member.NAME.value)){
		temp+='문자만  좀 ㅎ';
	
	}
	else if(member.NAME.value.length>10){
		temp+='10글자 이내로 좀 ㅎ';
		
	}
	
		alert(temp);
}
function idcheck1(){
	
	window.open("/jspMyBatis/project/idcheck.jsp","id","left=100,top=100,width=350,height=280");
	
}

function passwordcheck1(){
	var password=document.getElementById("PASSWORD").value;
	if(password==null || password==''){
		alert("비밀번호를 확인...");
	}else if (password!=null){
	window.open("/jspMyBatis/project/passwordcheck.jsp?password="+password,"id","left=100,top=100,width=350,height=280");
	}
}
function addr(){
	
	window.open("/jspMyBatis/project/addresscheck.jsp","id","left=100,top=100,width=350,height=280");
}

function pncheck(){
	var phobj=document.memberfrm1;
	
	if(isNaN(phobj.pn1.value)||isNaN(phobj.pn2.value)||isNaN(phobj.pn3.value)){
		alert('핸드폰에 문자가 들어가나요?...');
		phobj.pn1='';
		phobj.pn2='';
		phobj.pn3='';
		
	}else{
		phobj.PHONENUM.value=phobj.pn1.value+"-"+phobj.pn2.value+"-"+phobj.pn3.value;
	}
}	
function membersend(){
var obj=document.memberfrm1;
obj.submit();

}

function main() {
	location.href='/jspMyBatis/project/main.jsp';
}
function gendercheck(obj){
	var hid=document.getElementById("GENDER");
	hid.value=obj.value;
	
}
function login(){
	window.open("/jspMyBatis/project/login.jsp","id","left=100,top=100,width=350,height=280");
}


