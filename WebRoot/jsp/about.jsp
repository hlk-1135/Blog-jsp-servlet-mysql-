<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
request.setAttribute("path", basePath);  
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>关于我</title>
	<link href="${path}css/index.css" rel="stylesheet">
	<link href="${path}css/about.css" rel="stylesheet">
	<script src="${path}js/index.js" type="text/javascript" charset="gb2312"></script>
	</head>
	<body onload="displayCD()">
		<header>
			<div id="logo">
				<a href="/"></a>
			</div>
			<nav class="topnav" id="topnav">
		  	  <a href="${path}servlet/DoIndex"><span>首页</span><span class="en">Home Page</span></a>
		  	  <a href="${path }jsp/about.jsp"><span>关于我</span><span class="en">About Me</span></a>
		  	  <a href="${path }servlet/GetTitleListServlet"><span>技术干货</span><span class="en">Life</span></a>
		  	  <a href="${path }jsp/knowledge.jsp"><span>资料分享</span><span class="en">Learn</span></a>
		  	  <a href="${path }servlet/GetDiaryListServlet"><span>碎言碎语</span><span class="en">Diary</span></a>
		  	  <a href=""><span>精彩相册</span><span class="en">Photo</span></a>
		  	  <a href="${path}jsp/message_board.jsp"><span>留言板</span><span class="en">Board</span></a>
		  	</nav>
		</header>
		<article class="aboutcon">
			<h1 class="t_nav">
					<span>像“草根”一样，紧贴着地面，低调的存在，冬去春来，枯荣无恙。</span>
					<a href="index.html" class="n1">网站首页</a>
					<a href="about.html" class="n2">关于我</a>
			</h1>
			<div class="about left">
		  	<h2>Just about me</h2>
		    <ul> 
			    <p>史坤，男，一个90后渣渣男程序员！2014年带着对大学的憧憬进入鲁东大学信息与电气工程学院，选择了软件工程专业。从未接触过的东西，从未有过的经历，没有给自己驻足的时间，就是这么选择了，就是这么要开始了新的生活。</p>
				<p>
				人生就是一个得与失的过程，而我却是一个幸运者，失去的永远比得到的多。高中迫于学习的压力，选择了体育，高考的时候，超常发挥，在我们体育队里考取了文化课的最高分数，唯一一个超过当年军检线的体育生。但是高考报志愿时毅然放弃了继续走体育的选择，放弃了华东师范大学这所211.985高校，放弃了免费师范生的优厚待遇。至如今，然后越走越远....</p>
				<p>在这条路上，我要感谢三个人，第一个是我的妈妈，是他给了我自己选择与决定的空间，并且给我鼓励让我相信自己依靠自己年轻的拼劲可以学有所成。
					第二个人是我的老师，如果不是楼道里的一次偶然间谈话，如果不是因为我正为学习而发愁，我就不会接触到体育这条路，不会在体验到训练场上的那些经历与感受，更不会在高考的考场上取得那么高的分数...</p>
				<p>
				还要特别感谢一个人，是我的女朋友。他是我在排球场上的球友，也是我失落时给我动力和激情的一个女生。我不会的，她会，最后我还是不会。我能坚持到今天这样，一半都有她的功劳。她不仅仅支持我的选择作为我有力的精神后盾，还毫无怨言的包容我所有小性格、生活当中有理无理的坏脾气，曾经我是多么有自己原则的一个人，但是遇到她，打破了我自己坚持的一些原则，喜欢一句话“冥冥中该来则来，无处可逃”。
				</p>
		    </ul>
		    <h2>About volleyball</h2>
				    <p>场   地：北排  开始于2014年10月20日 <a class="blog_link" target="_blank">排球人</a></p>
				    <p>隶属球队：信电排球队<a class="blog_link" target="_blank">XinDian Volleyball</a></p>
				    <p>球服号码：4号(2014年)&nbsp;3号(2015年)</p>
				    <p>位置：主攻手.自由人</p>
				</div>
				<aside class="right">  
				    <div class="about_c" id="showCD">
				    <p>网名：<span>HLK_1135</span> | 暗时间</p>
				    <p>姓名：史坤 </p>
				    <p>生日：1995-11-03</p>
				    <p>籍贯：山东省―青岛市</p>
				    <p>现居：鲁东大学-信息与电气工程学院</p>
				    <p>职业：学生</p>
				    <p>喜欢的书：《愿我的世界总有你二分之一》《暗时间》</p>
				    <p>喜欢的音乐：《What make me beautiful》</p>
				</div>
					<div class="about_me"></div>
				</aside>
		</article>
		<footer>
				<p>Design by HLK_1135&nbsp;&nbsp;姓名:史坤&nbsp;&nbsp;学号:20142203717</p>
		</footer>
	</body>
</html>