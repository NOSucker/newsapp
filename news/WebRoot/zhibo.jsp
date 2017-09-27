<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<title></title>
	<link rel="stylesheet" href="css/zhibo.css">
	<link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css">
	<script src="js/jquery-1.11.1.js"></script>
	<script src="libs/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar" id="myNav">
		<ul class="clearfix" id="nav_ul">
			<li class="active"><a href="#">精选</a></li>
			<li><a href="#">资讯</a></li>
			<li><a href="#">文艺</a></li>
			<li><a href="#">娱乐</a></li>
			<li><a href="#">财经</a></li>
			<li><a href="#">态势太</a></li>
			<li><a href="#">满世界</a></li>
		</ul>
	</nav>
	<section class="content">
		<p id="zhiboyugao"><span>6场&nbsp;</span>直播预告</p>
		<div class="news_zhibo">
			<ul>
				<li>
					<div>
						<h4>京城美女到浙江小山村寻访神秘料理</h4>
						<i class="icon-live"></i>
					</div>
					<p>这是小标题</p>
				</li>
			</ul>
		</div>
	</section>
</body>
</html>
<script>
	$(function () {
	    var screenWidth=$(window).width();

		var nav_ul=$("#nav_ul");
		var lis=nav_ul.children();
		var li_width=window.getComputedStyle(lis[0],null)["width"];
		if (li_width<screenWidth){
		    li_width=screenWidth;
		}else{
            var realWidth=parseInt(li_width)*lis.length+5;
            document.getElementById("nav_ul").style.width=realWidth+"px";
		}
        $.each(lis,function (index, elem) {
			$(elem).on("click",function () {
				for(var i=0;i<lis.length;i++){
				    $(lis[i]).removeClass("active");
				}
				$(lis[$(this).index()]).addClass("active");
            })
        });


		//点击li进入直播界面
		var news_lis=$(".news_zhibo>ul>li");
		$.each(news_lis,function (index, elem) {
		    $(elem).on("click",function () {
                var index=$(this).index();
				//跳转界面
                $(".tabs",parent.document).hide();
				window.location.href="liveInterface.jsp";

            });

        })

    })

    $(window).scroll(function () {
        if ($(window).scrollTop()>=60){
            $("#myNav").css({
                "position":"fixed",
				"top": 0
            })
        }else{
            $("#myNav").css({
                "position":"relative",
                "top": 0
            })
        }
    })
</script>