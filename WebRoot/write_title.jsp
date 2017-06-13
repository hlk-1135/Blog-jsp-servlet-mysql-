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
    
    <title>My JSP 'msg_publish.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="ueditor/ueditor.config.js"></script>	 
    <script type="text/javascript" src="ueditor/ueditor.all.js"></script>
    <script type="text/javascript" src="js/Calendar3.js"></script>
    <style>
    	#messageBox {
    		width:80%;
    		height:auto;
    		margin-left:5%;
    	}
    </style>
  </head>
  	
  <body>
  	<div id="messageBox">
		<form action="servlet/WriteTitServlet" method="post">
	  <p>文章标题：
	    <input type="text" name="article" size="50"/>
	  </p>
	  <p>文章内容：</p>
	  <div>
	  	<textarea name="content" id="myEditor"></textarea>
	    <script type="text/javascript">  
	 		UEDITOR_CONFIG.UEDITOR_HOME_URL = './ueditor/';  
	 		UE.getEditor('myEditor');  
		</script>
	  </div><br/>
	    文章摘要：<br/>
	  <textarea name="summary" rows="5" cols="40">
	  </textarea>
	  <br/><br/>
	       写作日期:
	  <input name="data" type="text" size="10"
      maxlength="10" onclick="new Calendar().show(this);" readonly="readonly" />
      <br/>
	  <p align="center">
	    <input type="submit" value="提交" />
	    <input type="reset" value="重置" />
	  </p>
	  </form>
	</div>
  </body>
</html>