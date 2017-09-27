<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/collectNews.css">
</head>
<body>
<header id="login_header">
    <a id="btn"><span><&nbsp;</span>返回</a>
    <h1>我的收藏</h1>
</header>

<section id="list_collect">
    <ul>

    </ul>
</section>
</body>
</html>
<script src="js/jquery-1.11.1.js"></script>
<script>
   $(function () {
        // localStorage.clear();
        $("#btn").click(function () {
            $(".tabs",parent.document).show();
            $(".tabs>ul>li:last",parent.document).trigger("click");
            window.location.href="person.jsp";
        });
        // 读取本地存储渲染到页面
        render();
        // 1.读取localstorage转化成json对象
        function toJson() {
            var str = localStorage.getItem('news');
            return JSON.parse(str);
        }
        // 2.遍历json对象渲染到页面
        function render() {
            var json = toJson();
            bindDetail(json);
        }

        function bindDetail(data) {
            var str = '';
            for (var i = 0; i < data.length; i++) {
                str += '<li class="clearfix">';
                str += '<div class="pull-left">';
                str += '<span class="title">' + data[i].title + '</span>';
                str += ' <div class="date">' + data[i].date + '</div>';
                str += '</div>';
                str += '<div class="pull-right">';
                str += '<img src="' + data[i].images[0] + '" alt="">';
                str += '</div>';
                str += '</li>';
            }
            console.log(str);
            $('#list_collect ul').html(str);
        }
   
  
    });

   
</script>