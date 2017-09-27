<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<title></title>
		<link rel="stylesheet" href="css/base.css" />
		<link rel="stylesheet" href="css/person.css" />
	</head>
	<body>
		<div class="header">
			<div>
				<img src="img/header.png"/>
				<span class="info">
					<h5>登录</h5>
					<p>个人信息</p>
				</span>
			</div>
		</div>
		
		<div class="mode">
			
		</div>
		
		<div class="list">
			<ul>
				<li data-src="zhuce.jsp"><a href="#">注册 <span>></span></a></li>
				<li data-src="guanzhu.jsp"><a href="#">我的关注 <span>></span></a></li>
				<li data-src="collectNews.jsp"><a href="#">我的收藏 <span>></span></a></li>
			</ul>
		</div>
	</body>
</html>
<script src="js/jquery-1.11.1.js"></script>
<script>

	window.onload=function(){
		var info=sessionStorage.getItem("username");
		if(info==null){
			info="登录";
		}
		console.log(info);
		$(".info>h5").text(info);
	}

	$(function () {
		var lis=$(".list>ul>li");
		$.each(lis,function (index, elem) {
			$(elem).on("click",function () {
                var src=$(this).data("src");
                $(".tabs",parent.document).hide();
                window.location.replace(src);
            })
        });

		$(".header>div>span>h5").on("click",function () {
            $(".tabs",parent.document).hide();
			window.location.replace("login.jsp");
        });
    })
</script>
