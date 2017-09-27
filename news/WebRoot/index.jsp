<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>成都东软学院新闻客户端</title>
    <link rel="stylesheet" href="css/base.css" />
    <link rel="stylesheet" href="css/index.css" />
</head>
<body>
	<button id="exitbtn">点击</button>
	<div class="content" id="content">
		<div class="active">
			<iframe src="news.jsp" border="0"></iframe>
		</div>
		
		<div>
	<%-- 	<!-- <%=request.getContextPath() %> /news!list.action  --> --%>
			<iframe src="<%=request.getContextPath()%>/news!list.action" border="0"></a></iframe>
			
		</div>
		
		<div>
			<iframe src="zhibo.jsp" border="0"></iframe>
		</div>
		
		<div>
			<iframe src="person.jsp"  id="person" border="0"></iframe>
		</div>
	</div>
	<div class="tabs">
		<ul>
			<li class="current">
				<i class="icon-news"></i>
				新闻
			</li>

			<li>
				<i class="icon-tuijian"></i>
				推荐
			</li>
	
			<li>
				<i class="icon-zhibo"></i>
				直播</li>
			<li>
				<i class="icon-me"></i>
				个人</li>
		</ul>
	</div>
</body>
</html>
<script src="js/jquery-1.11.1.js"></script>
<script type="text/javascript">
	$(function(){
		var screenHeight=$(window).height();

		var lis=$(".tabs> ul > li");
		var tab_items=$(".content> div");
		
		$.each(tab_items, function(index,elem) {
			$(elem).css({
				"height":screenHeight
			});
		});

		$.each(lis, function(index,elem) {
			$(elem).on("click",function(){
				for(var i=0;i<lis.length;i++){
					$(lis[i]).removeClass("current");
					tab_items[i].style.display="none";
				}
				$(elem).addClass("current");
				
				var index=$(this).index();
				tab_items[index].style.display="block";
			});
		});
		$(lis[0]).trigger("click");

		$("#exitbtn").click(function () {
			window.close()
        });
	});
</script>