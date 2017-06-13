<%@page import="cn.edu.ldu.bean.Diary"%>
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
		<title>闲言碎语</title>
		
		<link href="${path }css/index.css" rel="stylesheet">
		<link href="${path }css/mood.css" rel="stylesheet">
	</head>
	<body>
		<header>
		  <div id="logo"><a href="/"></a></div>
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
		<div class="moodlist">
		  <h1 class="t_nav">
		  	<span>删删写写，回回忆忆，一步一步，慢慢向前走。</span>
		  	<a href="index.html" class="n1">网站首页</a>
		  	<a href="/" class="n2">碎言碎语</a>
		  </h1>
		  <div class="bloglist">
		  	<%int sum=0; %>
		  	<c:forEach items="${requestScope.diaries}" var="diary">
			  	<ul class="arrow_box">
				    <img src="../images/<%=(sum%4)+1%>.png">
				    <%sum=sum+1; %>
				    <p>${diary.dirary_content }</p>
				    <span class="dateview">${diary.dirary_timeDate }</span>
				</ul>
		  	</c:forEach>
		  </div>
		  <br/>
		  <!-- 分页显示 -->
		  <div align="center">
			<c:choose>
				<c:when test="${page.hasPrepage}">
				  <a href="GetDiaryListServlet?currentPage=1">首页</a> | 
				  <a href="GetDiaryListServlet?currentPage=${page.currentPage-1 }">上一页</a>
				</c:when>
				<c:otherwise>
					首页 | 上一页
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${page.hasNextPage}">
				<a href="GetDiaryListServlet?currentPage=${page.currentPage + 1 }">下一页</a> | 
			<a href="GetDiaryListServlet?currentPage=${page.totalPage }">尾页</a>
			</c:when>
			<c:otherwise>
				下一页 | 尾页
			</c:otherwise>
			</c:choose>
			当前为第${page.currentPage}页,共${page.totalPage}页
		  </div>
		</div>
		<br/>
		<footer>
		  	<p>Design by HLK_1135&nbsp;&nbsp;姓名:史坤&nbsp;&nbsp;学号:20142203717</p>
		</footer>
	</body>
</html>