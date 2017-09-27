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
            <img src="" alt="">
            <p class="text" style="text-indent:28px">
               ${news.news_content}
            </p>
        </div>
        <p>热门评论</p>
        <div class="commons" style="padding-bottom:30px">
            <!--<img src="images/0.jpg" alt="">-->
         <ul class="commonsList">
            <li style="padding:10px 0;">
            	<p>${news.person_ID}</p>
               ${news.news_commons}
            </li>         
         </ul>
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

    var search = window.location.search;
    console.log(search);
    var index=search.substr(9);
    console.log(typeof index);
    function toDo(index){
      var index=Number(index);
      if(index>10){
        return String(index);
      }
      else{
        return '0'+index;
      }
    }
    console.log(toDo(index));
     $('.content img')[0].src='img/tuijianimg/'+toDo(index)+'.jpg'
     
    $('header .backToTJ').on('click', function () {
     $(".tabs",parent.document).show();
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
	    
	    });
	    $('#edit').on('keydown',function(e){
	    
	    		var username=sessionStorage.username;
			    if(username==null||username=="undefined"){
			    	username="匿名用户";
			    }
			    console.log(username)
	    
	       if(13===e.keyCode){
	          var li=$('<li style="padding:10px 0;"><p id="name">'+username+'</p></li>');
	          var commentText=$(this).val();
	        
	           li.append(commentText);
	           
	          var ul=$('.commons .commonsList');
	          ul.append(li);
	          $(this).val('');
	          return false;
	       }
	    });
	   
});
    </script>
</body>
</html>
