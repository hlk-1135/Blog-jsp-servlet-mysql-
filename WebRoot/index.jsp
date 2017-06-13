<%@page import="cn.edu.ldu.bean.Title"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
request.setAttribute("path", basePath);  
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<title>HLK_1135技术专栏</title>
		<link rel="stylesheet" type="text/css" href="${path}css/index.css" />
	</head>
	<body>
		<header>
			<div class="login"><a href="login.html">登陆</a></div>
			<div class="regist"><a href="register.html">注册</a></div>
			<div id="logo"><a href="index.html"></a></div>
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
		<div class="banner">
			<section class="box">
			    <ul class="texts">
			      <p>每个人的生命就像沙漏，里面装的沙子总量大致相当，</p>
			      <p>不同的是，有的沙漏颈部较细，有的沙漏颈部较粗。</p>
			      <p>颈部较细的沙漏能够抓住每一粒时间之沙，即使沙子总</p>
			      <p>量一样，也能拥有更长的生命。</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			      	&nbsp;&nbsp;&nbsp;-----《暗时间》
			      </p>
			    </ul>
			    <div class="avatar"><a href="#"><span>史小坤</span></a> </div>
			</section>
		</div>
		<div class="template">
			<div class="box">
			    <h3>
			      <p><span>经典书籍</span>分享</p>
			    </h3>
			    <ul>
			      <li><a><img src="${path }images/book_01.png"></a><span>《深入理解Java虚拟机》</span></li>
			      <li><a><img src="${path }images/book_02.png"></a><span>《Effective Java》</span></li>
			      <li><a><img src="${path }images/book_03.png"></a><span>《深入分析JavaWeb》</span></li>
			      <li><a><img src="${path }images/book_04.png"></a><span>《MySQL5.6从零开始学》</span></li>
			      <li><a><img src="${path }images/book_05.png"></a><span>《Java多线程编程》</span></li>
			      <li><a><img src="${path }images/book_06.png"></a><span>《Java并发编程实战》</span></li>
			    </ul>
			</div>
		</div>
		<div class="art">
			<article>
			  <h2 class="title_tj">
			    <p>文章<span>推荐</span></p>
			  </h2>
			  <div class="bloglist left">
			 	  <%int sum=0; %>
				  <c:forEach items="${requestScope.titles}" var="title">
				    <h3>${title.title_article }</h3>
				    <figure><img src="../images/<%=(sum%4)+1%>.png"></figure>
				    <%sum=sum+1; %>
				    <ul class="nlist">
			    	<p>${title.title_summary }</p>
				    <a href="GetTitle?title_id=${title.title_id }" class="readmore">阅读全文>></a>
				    </ul>
				    <p class="dateview"><span>${title.title_time }</span>
				    <span>作者：HLK_1135</span><span>阅读量：[<a>${title.title_read }</a>]</span></p>
				  </c:forEach> 
			  </div>

			  <aside class="right">
			    <div class="weather">
			    	<iframe width="250" scrolling="no" height="60" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=12&icon=1&num=1"></iframe>
			    </div>
			    <div class="news">
			    <h3>
			      <p>最新<span>文章</span></p>
			    </h3>
			    <ul class="rank">
			      <li><a href="http://blog.csdn.net/hlk_1135/article/details/50256113" target="_blank">Only one Two years(关于高中)</a></li>
			      <li><a href="http://blog.csdn.net/hlk_1135/article/details/50322407" target="_blank">两个人的生活(关于爱情)</a></li>
			      <li><a href="/" target="_blank">排球之路</a></li>
			      <li><a href="http://blog.csdn.net/hlk_1135/article/details/50256143" target="_blank">学生会个人总结</a></li>
			      <li><a href="/" target="_blank">兴趣与激情</a></li>
			      <li><a href="http://www.cnblogs.com/xrq730/category/740512.html" target="_blank">Java学习历程之设计模式</a></li>
			      <li><a href="http://www.cnblogs.com/xrq730/p/4943660.html" target="_blank">数据库之MySQL函数汇总</a></li>
			    </ul>
			    <h3 class="ph">
			      <p>点击<span>排行</span></p>
			    </h3>
			    <ul class="paih">
			      <li><a href="" target="_blank">Only one Two years(关于高中)</a></li>
			      <li><a href="" target="_blank">两个人的生活(关于爱情)</a></li>
			      <li><a href="" target="_blank">学生会个人总结</a></li>
			      <li><a href="" target="_blank">Java学习历程之设计模式</a></li>
			      <li><a href="" target="_blank">数据库之MySQL函数汇总</a></li>
			    </ul>
			    <h3 class="links">
			      <p>友情<span>链接</span></p>
			    </h3>
			    <ul class="website">
			      <li><a href="http://blog.csdn.net/hlk_1135">我的博客</a></li>
			      <li><a href="http://blog.csdn.net/softwareldu">张小峰老师个人博客</a></li>
			      <li><a href="http://www.cnblogs.com/xrq730/p/4994545.html">五月的仓颉</a></li>
			      <li><a href="http://blog.csdn.net/llwwlql">L-75专栏</a></li>
			    </ul> 
			    </div>  
			    <div id="bdshare" class="bdshare_t bds_tools_32 get-codes-bdshare">
			    	<a class="bds_tsina"></a>
			    	<a class="bds_qzone"></a>
			    	<a class="bds_tqq"></a>
			    	<a class="bds_renren"></a><span class="bds_more"></span>
			    	<a class="shareCount"></a>
			    </div>
			    <script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=6574585" ></script> 
			    <script type="text/javascript" id="bdshell_js"></script> 
			    <script type="text/javascript">
				document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000);
				</script> 
			    <a href="/" class="weixin"> </a></aside>
			</article>
		</div>
		<footer>
		  	<p>Design by HLK_1135&nbsp;&nbsp;姓名:史坤&nbsp;&nbsp;学号:20142203717</p>
		</footer>
		<script src="js/index.js"></script>
	</body>
</html>