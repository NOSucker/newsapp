<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/guanzhu.css">
</head>
<body>
<header id="login_header">
    <a id="btn"><span><&nbsp;</span>返回</a>
    <h1>我的关注</h1>
</header>

<section id="guanzhu_list">
    <ul id="list">
    	
    </ul>
</section>

</body>
</html>
<script src="js/jquery-1.11.1.js"></script>
<script>
    $(function () {
        $("#btn").click(function () {
            $(".tabs",parent.document).show();
            $(".tabs>ul>li:last",parent.document).trigger("click");
            window.location.href="person.jsp";
        });
        
        
        var ids=sessionStorage.ids;
        
        console.log("ddddd"+ids);
   		 var attr=ids.split("%")
   		 for(var k in attr){
   		 	 $.ajax({
            url: 'http://localhost:8080/news/news!focus.action',
            type: 'POST',
            dataType: 'json',
            data:{
            	news_ID:attr[k]
            }
        })
        .done(function(data) {
            console.log(data);
            console.log("success");
            
            var str='<li style="height: 50px;">';
            str+='<div class="pull-left">';
            str+='<span class="title">'+data.news_title+'</span>';
            str+='</div>';
            str+='<div class="pull-right">';
            str+='<img src="img/0.jpg" width="50px" height="30px" alt="">';
            str+='</div>';
            str+='</li>';
              
            $("#list").append(str);
            
        })
        .fail(function() {
            console.log("出错了！！！！！");
        })
   		 
   	}

       
    });
</script>