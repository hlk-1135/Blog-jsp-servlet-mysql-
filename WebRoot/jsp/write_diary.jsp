<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
request.setAttribute("path", basePath);  
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>写日记</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<style>
		#messageBox {
    		width:80%;
    		height:auto;
    		margin-left:5%;
    	}
    	#shuru {
    		width:260px;
    		height:100px;
    	}
	</style>

  </head>
  
  <body>
    <div id="messageBox">
		<form action="servlet/AddDiaryServlet" method="post">
		  <p>写日记：<br/>
		    <textarea name="content" id="shuru"></textarea>
		  </p>
		  <p align="center">
		    <input type="submit" value="发表" />
		    <input type="reset" value="重置" />
		  </p>
	  	</form>
	</div>
  </body>
</html>
