var flag_email=0;
var flag_name=0;
var flag_phone=0;
var flag_password=0;
var flag_password_2=0;
function checkEmail(){   //检验邮箱是否符合规定
	var m=document.getElementById("mail");
	var mail=m.value;
	var reg =/^[a-zA-Z0-9]\w{5,17}$/;
	if(mail.length<6 || mail.length>18 || !reg.test(mail))
	{
		document.getElementById("errorEmail").innerHTML="Error!请重新输入!";
		document.getElementById("errorEmail").style.color="red";
		flag_email=0;
	}
	else{
		document.getElementById("errorEmail").style.color="green";
		document.getElementById("errorEmail").innerHTML="Success";
		flag_email=1;
	}
}
function checkName(){   //检测用户名
	var s=document.getElementById("name");
	var str=s.value;
	var reg=/^[a-zA-Z0-9\u4E00-\u9FA5]+$/;
	if(str.length>=2 && str.length<=12 && reg.test(str)){
		document.getElementById("errorName").innerHTML="Success";
		document.getElementById("errorName").style.color="green";
		flag_name=1;
	}
	else{
		document.getElementById("errorName").innerHTML="Error!请重新输入!";
		document.getElementById("errorName").style.color="red";
		flag_name=0;
	}	
}
function checkPhone(){   //检验手机号是否符合规定
	var p=document.getElementById("phoneNumber");
	var phone=p.value;
	var reg_1=/^[0-9]+$/;
	if(phone.length==11 && reg_1.test(phone)){
		document.getElementById("errorPhone").innerText="Success";
		document.getElementById("errorPhone").style.color="green";
		flag_phone=1;
	}
	else{
		document.getElementById("errorPhone").innerText="Error!请重新输入!";
		document.getElementById("errorPhone").style.color="red";
		flag_phone=0;
	}
}
function checkPassword(){  //验证密码是否符合规定
	var s=document.getElementById("password");
	var str=s.value;
	if(str.length<4 || str.length>12){
		document.getElementById("errorword").innerHTML="Error!请重新输入!";
		document.getElementById("errorword").style.color="red";
		flag_password=0;
	}
	else{
		document.getElementById("errorword").innerHTML="Success";
		document.getElementById("errorword").style.color="green";
		flag_password=1;
	}
}
function checkPassword_2(){  //验证确认密码是否和密码相同
	var p1=document.getElementById("password").value;
	var p2=document.getElementById("password_2").value;
	if(p1!=p2){
		document.getElementById("errorword_2").innerHTML="Error!两次输入密码不一致!";
		document.getElementById("errorword_2").style.color="red";
		flag_password_2=0;
	}
	else{
		document.getElementById("errorword_2").innerHTML="Success";
		document.getElementById("errorword_2").style.color="green";
		flag_password_2=1;
	}
}
function submitbox(){   //注册
	if(flag_email==1 && flag_name==1 && flag_phone==1 && flag_password==1 && flag_password_2==1){
		window.open("new_file.html");
	}
	else
		alert("注册失败！");
}

//导航条
var obj=null;
var As=document.getElementById('topnav').getElementsByTagName('a');
obj= As[0];
for(i=1;i<As.length;i++){
	if(window.location.href.indexOf(As[i].href)>=0)
	obj=As[i];
}
obj.id='topnav_current';

$(function(){
	var wid=$('.box li:first').outerWidth(true),
		index=1,
		timer,
		len=$('.box ul li').length,
		uls=$('.box ul li');
	console.log(wid)
	$('.box').hover(function(){
		clearInterval(timer);
	},function(){
		timer=setInterval(function(){
			play(index+1)
		},2000)
	}).mouseleave();


	$('.box ol li').bind('click',function(){
		play($(this).index()+1)
	})

	$('.next').bind('click',function(){play(index+1)});
	$('.prev').bind('click',function(){play(index-1)});
	
	function play(nums){
		var dir=nums>index?-1:-1;
		if(nums>len){
			nums=1;
		}else if(nums<=0){
			nums=len;
		}
		index=nums;
		$('.box ul').animate({left:wid*dir*(index-1)},500);
		$('.box ol li').eq(index-1).addClass('on').siblings().removeClass('on');
	}
})