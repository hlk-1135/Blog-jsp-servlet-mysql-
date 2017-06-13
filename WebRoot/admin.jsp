<%@page import="cn.edu.ldu.bean.Title"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
request.setAttribute("path", basePath);  
%>

<!DOCTYPE html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="${path }css/admin.css">
	<link rel="stylesheet" type="text/css" href="${path }css/mood.css">
	<title>博客后台管理</title>
</head>
<body id="bg">

<div class="container">

	<div class="leftsidebar_box">
		<div class="line">
			<div class="avtor">
				<a href="#"><span>Hi,史小坤</span></a>
			</div>
		</div>
        <!--描述：左侧管理栏目导航-->
		<dl class="system_log">
			<dt onClick="changeImage()">系统设置<img src="images/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="#">查看用户信息</a></dd>
			<dd><a href="#">修改个人信息</a></dd>
			<dd><a href="#">修改记录</a></dd>
		</dl>
		<dl class="custom">
			<dt onClick="changeImage()" id="jtitle">文章管理<img src="images/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="#">文章类别</a></dd>
			<dd><a href="#">文章类型</a></dd>
			<dd><a href="#">文章属性</a></dd>
		</dl>
		<dl class="channel">
			<dt>相册管理<img src="images/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="#">添加照片</a></dd>
			<dd><a href="#">删除照片</a></dd>
		</dl>
		<dl class="app">
			<dt onClick="changeImage()">留言板管理<img src="images/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="http://hlk1135.duoshuo.com/admin/settings/">留言板设置</a></dd>
			<dd><a href="http://hlk1135.duoshuo.com/admin/">留言管理</a></dd>
		</dl>
		<dl class="cloud">
			<dt>书籍管理<img src="images/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="#">书籍列表</a></dd>
		</dl>
		<dl class="syetem_management">
			<dt>日记管理<img src="images/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="#">写日记</a></dd>
			<dd><a href="#">查看日记</a></dd>
		</dl>
		<dl class="source">
			<dt>资料管理<img src="images/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="#">学习视频</a></dd>
			<dd><a href="#">链接库</a></dd>
			<dd><a href="#">推广管理</a></dd>
		</dl>
		<dl class="statistics">
			<dt>统计分析<img src="images/left/select_xl01.png"></dt>
			<dd class="first_dd"><a href="#">访客统计</a></dd>
		</dl>
	</div>
	<!--描述：右侧session部分-->
	<div class="rightsidebar_box">
		<div class="right_top">		
		</div>
		<div class="right_section">
		  <div class="jtitle">
			<table class="tab1">
				<tbody>
					<tr>
						<td width="90" align="right">文章类别：</td>
						<td>
							<input type="text" class="allInput" value=""/>
						</td>
						<td width="90" align="right">演示字段2：</td>
						<td>
							<input type="text" class="allInput" value=""/>
						</td>
                        <td width="85" align="right"><input type="submit" class="tabSub" value="查 询" /></td>
   					</tr>
				</tbody>
			</table>
			<table class="tab2" width="100%">
				<tbody>
					<tr>
					    <th><input type="checkbox" id="all" onclick=""/></th>
					    <th>序号</th>
					    <th>文章标题</th>
					    <th>写作时间</th>
					    <th>阅读量</th>
					    <th>操作</th>
					</tr>
					<%int sum=0; %>
					<c:forEach items="${requestScope.titles}" var="title">
					<tr class="list">
						<%sum=sum+1; %>
						<td><input type="checkbox" /></td>
						<td><%=sum%></td>
						<td>${title.title_article }</td>
						<td>${title.title_time }</td>
						<td>${title.title_read }</td>
						<td>
							<a href="">修改</a>&nbsp;&nbsp;&nbsp;
							<a href="">删除</a>
						</td>
					</tr>
					</c:forEach> 
				</tbody>
			</table>
		  </div>	
		</div><br/>
		<div class="right_last">
		  <div align="center">
			<c:choose>
				<c:when test="${page.hasPrepage}">
				  <a href="AdminServlet?currentPage=1">首页</a> | 
				  <a href="AdminServlet?currentPage=${page.currentPage-1 }">上一页</a>
				</c:when>
				<c:otherwise>
					首页 | 上一页
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${page.hasNextPage}">
				<a href="AdminServlet?currentPage=${page.currentPage + 1 }">下一页</a> | 
			<a href="AdminServlet?currentPage=${page.totalPage }">尾页</a>
			</c:when>
			<c:otherwise>
				下一页 | 尾页
			</c:otherwise>
			</c:choose>
			当前为第${page.currentPage}页,共${page.totalPage}页
		  </div>
		</div>
	</div>
</div>
<!-- 左侧导航栏目 -->
<script type="text/javascript" src="${path }js/jquery.min.js"></script>
<script type="text/javascript" src="${path }js/admin.js"></script>

</body>
</html>