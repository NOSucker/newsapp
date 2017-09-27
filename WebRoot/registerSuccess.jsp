<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>My JSP 'registerSuccess.jsp' starting page</title>
    
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="2;url=person.jsp">

  </head>
<body>
	恭喜你，<span> ${person.person_num} </span>，注册 成功。正在跳转.....
</body>
</html>
<script src="js/jquery-1.11.1.js"></script>
<script>
$(function(){
	setTimeout(function () {
		$(".tabs",parent.document).show();
	    $(".tabs>ul>li:eq("+3+"+)",parent.document).trigger("click");
	    window.location.replace("person.jsp")
	},1500);

});
</script>
