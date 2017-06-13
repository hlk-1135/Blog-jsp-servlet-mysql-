<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
request.setAttribute("path", basePath);  
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="${path }css/index.css" rel="stylesheet" type="text/css">
		<title>留言板</title>
		<style>
			.ds-thread {
				margin-left: 180px;
				width: 895px;
			}
			.msg_top {
				width: 800px;
				height:50px;
				margin-left:180px;
				background-color: #F7F7F7;
			}
			h1 {
				display: inline-block;
				font-weight: blod;
    			font-size: 40px;
			}
		</style>
	</head>
	<body>   
    <header class="archive-header">
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
    <div class="msg_top">
    	<h1>&nbsp;<<<喜欢我>>>&nbsp;就给我留言吧</h1>
	</div>
	<!-- 多说评论框 start -->
	<div class="ds-thread" data-thread-key="ad7e591ae14f6bc302ecd24a420a82d7" data-title="留言栏目" data-url="">
	</div>
	<!-- 多说评论框 end -->

	<!-- 多说公共JS代码 start (一个网页只需插入一次) -->
	<script type="text/javascript">
	var duoshuoQuery = {short_name:"hlk1135"};
	(function() {
		var ds = document.createElement('script');
		ds.type = 'text/javascript';ds.async = true;
		ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
		ds.charset = 'UTF-8';
		(document.getElementsByTagName('head')[0] 
		 || document.getElementsByTagName('body')[0]).appendChild(ds);
	})();
	</script>
	<!-- 多说公共JS代码 end -->
	</body>
</html>