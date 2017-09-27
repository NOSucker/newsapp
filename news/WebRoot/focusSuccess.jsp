<%@page import="cn.nsu.edu.news.hibernate.News.News"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'focusSuccess.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    	关注成功！<br>
  </body>
</html>
<script src="js/jquery-1.11.1.js"></script>
<script>
	$(function () {
		setTimeout(function () {
	$(".tabs",parent.document).show();
    $(".tabs>ul>li:eq("+3+"+)",parent.document).trigger("click");
    window.location="<%=request.getContextPath()%>/news!list.action";
},1500);
    })
</script>

