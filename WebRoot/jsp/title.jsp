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
		<title>博客文章</title>
		<link href="${path }css/index.css" rel="stylesheet" type="text/css">
		<link href="${path }css/style.css" rel="stylesheet" type="text/css">
		<link href="${path }css/knowledge.css" rel="stylesheet" type="text/css"/>
	</head>
	<body>
		<header>
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
		<article class="blogs">
			<h1 class="t_nav">
				<span>“慢生活”不是懒惰，放慢速度不是拖延时间，而是让我们在生活中寻找到平衡。</span>
				<a href="/" class="n1">网站首页</a>
				<a href="/" class="n2">技术干货</a>
			</h1>
			<div class="newblog left">
			  <%int sum=0; %>
			  <c:forEach items="${requestScope.titles}" var="title">
			    <h2>${title.title_article }</h2>
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
			    <div class="rnav">
			      <ul>
			       <li class="rnav1"><a>日记</a></li>
			       <li class="rnav2"><a>程序人生</a></li>
			       <li class="rnav3"><a>美文欣赏</a></li>
			       <li class="rnav4"><a>排球生活</a></li>
			      </ul>      
			    </div>
				<div class="news">
				    <h3>
				      <p>最新<span>文章</span></p>
				    </h3>
				    <ul class="rank">
				      <li><a href="">Only one Two years(关于高中)</a></li>
				      <li><a href="" target="_blank">两个人的生活(关于爱情)</a></li>
				      <li><a href="/" target="_blank">排球之路</a></li>
				      <li><a href="" target="_blank">学生会个人总结</a></li>
				      <li><a href="/" target="_blank">兴趣与激情</a></li>
				      <li><a href="" target="_blank">Java学习历程之设计模式</a></li>
				      <li><a href="" target="_blank">数据库之MySQL函数汇总</a></li>
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
		   </div>
		   <div class="about_me"></div>
		    <div id="bdshare" class="bdshare_t bds_tools_32 get-codes-bdshare"><a class="bds_tsina"></a><a class="bds_qzone"></a><a class="bds_tqq"></a><a class="bds_renren"></a><span class="bds_more"></span><a class="shareCount"></a></div>
		    <script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=6574585" ></script> 
		    <script type="text/javascript" id="bdshell_js"></script> 
		    <script type="text/javascript">
				document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
			</script> 
		</aside>
	</article>
	<div align="center">
		<c:choose>
			<c:when test="${page.hasPrepage}">
			  <a href="GetTitleListServlet?currentPage=1">首页</a> | 
			  <a href="GetTitleListServlet?currentPage=${page.currentPage-1 }">上一页</a>
			</c:when>
			<c:otherwise>
				首页 | 上一页
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${page.hasNextPage}">
			<a href="GetTitleListServlet?currentPage=${page.currentPage + 1 }">下一页</a> | 
		<a href="GetTitleListServlet?currentPage=${page.totalPage }">尾页</a>
		</c:when>
		<c:otherwise>
			下一页 | 尾页
		</c:otherwise>
		</c:choose>
		当前为第${page.currentPage}页,共${page.totalPage}页
	</div>
	<br>
	<footer>
	  <p>Design by HLK_1135&nbsp;&nbsp;姓名:史坤&nbsp;&nbsp;学号:20142203717</p>
	</footer>
<script src="js/index.js"></script>
</body>
</html>