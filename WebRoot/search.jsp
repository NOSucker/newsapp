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
    
    <title>My JSP 'newsContent.jsp' starting page</title>
    
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>新闻内容</title>
    <link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css">
    <link href="css/base.css" rel="stylesheet">
    <link rel="stylesheet" href="css/newscontent.css">

  </head>
  
  <body>
    <!--头部-->
    <header class="container clearfix">
        <div class="pull-left">
            <a href="#">
                <span class="backToTJ">
                </span>
            </a>
        </div>
       
    </header>
    <!--头部-->
    <!--main部分-->
    <main>
        <div class="top">
            <h3 class="title">${news.news_title}</h3>
        </div>
        <div class="newsInfo clearfix">
            <div class="pull-left">
                <a href="#">
                 <i class="icon-author"></i>
                 <span class="authorName">${news.news_publisher}</span>
                    </a>
                <span class="date">${news.news_time}</span>
            </div>
            <div class="pull-right">
                <a class="guanzhu" <%-- href="news!focus.action?news_ID=${news.news_ID }" --%> data-id="${news.news_ID }"><span class="follow">+关注</span></a>
            </div>
        </div>
       
        
        <div class="content">
            <!--<img src="images/0.jpg" alt="">-->
            <p class="text">
               ${news.news_content}
            </p>
        </div>
    </main>
    <!--main部分-->
    <!--footer部分-->
    <footer>
        <div class="container clearfix">
            <div class="pull-left">
                <span class="icon-edit"></span>
                <form action="">
                    <label for="edit"></label>
                    <input type="text" id="edit" placeholder="评一下">
                </form>
            </div>
            <div class="pull-right">
                <span class="icon-commentNum"></span>
                <span class="icon-share"></span>
            </div>
        </div>
    </footer>
    <!--footer部分-->
    <script src="js/jquery-1.11.1.js"></script>
    <script src="libs/bootstrap/js/bootstrap.js"></script>
    <script src="js/Newsclass.js"></script>
    <script>
    
   		$(function () {
    var search = window.location.search.substr(1);
    var arr = [];
    arr = search.split(',');
    console.log(arr);
    // 绀句細鏂伴椈
    $.ajax({
        type: "GET",
        url: "http://toutiao-ali.juheapi.com/toutiao/index",
        headers: {
            "Authorization": "APPCODE a95fc85860ca4a9484a72864f19f0f37"
        },
        data: {
            type: arr[1],
        },
        dataType: "json",
        success: function (response) {
            var data = response.result.data[arr[0]];
            console.log(data);
            var news = new News();
            news.title = data.title;
            news.date = data.date;
            news.author = data.author_name;
            news.images = [data.thumbnail_pic_s, data.thumbnail_pic_s02, data.thumbnail_pic_s03];
            // 璋冪敤鏂规硶
            console.log(news.images);
            news.init();
        }
    });
   
    $('header .backToTJ').on('click', function () {
    
        $(".tabs>ul>li:eq("+1+")",parent.document).trigger("click");
     	window.history.back(-1);
    });
    
    $(".follow").on("click",function(){
    	var ids=sessionStorage.ids; 
    	
    	var id=$(".guanzhu").data("id");
    	sessionStorage.ids=ids+"%"+id;
    	console.log(sessionStorage.ids);
    	
    });
    
	    $(".pull-right").on("click",function(){
	    setTimeout(function(){
	    window.location.href="focusSuccess.jsp";},0)
	    
	    })
});
    </script>
</body>
</html>
