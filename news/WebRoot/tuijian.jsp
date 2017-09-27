<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="/struts-tags" prefix="s"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>推荐</title>
    <link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/recommend.css">
</head>

<body>
    <!--头部-->
    <div class="header">
        <div class="container">
            <div class="title">
                <span>推荐</span>
                <span class="refresh glyphicon glyphicon-repeat"></span>
            </div>
            <div class="myCare clearfix">
                <div class="pull-left">
                    <a href="">
                    
                    </a>
                </div>
                <div class="pull-right">
                    <form action="news!search.action" method="post">
                        <span class="glyphicon glyphicon-search"></span>
                        <input type="search" name="news_title" placeholder="输入要搜索的内容">
                    </form>
                </div>
                <div class="pull-right">
                    <span><i class="icon"></i></span>
                    <span><i class="icon"></i></span>
                    <span><i class="icon"></i></span>
                </div>
            </div>
        </div>
    </div>
    <!--头部-->
    <!--main部分-->
    <div class="main">
        <div class="container">
            <ul class="list">
            	<%-- <s:iterator value="newsList" var="news" status="status">
            	<s:a href="news!openNews.action?news.news_ID=%{#news.news_ID}"> --%>
            	<c:forEach items="${newsList}" var="news">
            		<a href="news!openNews.action?news_ID=${news.news_ID }">
                    	<li>
                            <div class="pull-left" style="width:251px; line-height:30px">
                                <span class="title">${news.news_title}</span>
                            </div>
                            <div class="pull-right" style="padding: 10px 0;">
                                <img src="" alt="">
                            </div>
                    	</li>
                    </a>
                    </c:forEach>
                <%-- </s:a>
                </s:iterator> --%>
                <li style="margin-bottom: 150px;">
                            <div class="pull-left">
                                <span class="title"></span>
                            </div>
                            <div class="pull-right">
                                
                            </div>
                    	</li>
            </ul>
        </div>
    </div>
    <!--main部分-->
    <script src="js/jquery-1.11.1.js"></script>
    <script src="libs/bootstrap/js/bootstrap.js"></script>
    <script src="js/tuijian.js"></script>
</body>

</html>