<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="2;url=person.jsp">
<title>Insert title here</title>
</head>
<body>
	恭喜你，<span> ${person.person_num} </span>，登录 成功。正在跳转.....
</body>
</html>
<script src="js/jquery-1.11.1.js"></script>
<script>

$(function(){

	sessionStorage.setItem("username","");
    sessionStorage.setItem("username",$("span").text());

setTimeout(function () {
	$(".tabs",parent.document).show();
    $(".tabs>ul>li:eq("+3+"+)",parent.document).trigger("click");
    window.location.replace("person.jsp")
},1500);


})




</script>