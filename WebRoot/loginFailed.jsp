<%@ page contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'loginFailed.jsp' starting page</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="refresh" content="2;url=login.jsp">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    登录失败！返回登陆页面，请重新登陆.....<br>
  </body>
  <script src="js/jquery-1.11.1.js"></script>
<script>

$(function(){

	sessionStorage.setItem("username","");
    sessionStorage.setItem("username",$("span").text());

setTimeout(function () {
	$(".tabs",parent.document).show();
    $(".tabs>ul>li:eq("+3+"+)",parent.document).trigger("click");
    window.location.replace("login.jsp")
},1500);


})
</html>
