<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
    <header id="login_header">
        <a id="btn"><span><&nbsp;</span>返回</a>
        <h1>登录</h1>
    </header>
    <section>
        <form id="login_form" action="person!login.action" method="post">
            <label for="username">账号</label>
            <input type="text" id="username" name="person.person_num" placeholder="请输入账号.."><br>
            <label for="password">密码</label>
            <input type="password" id="password" name="person.person_password" placeholder="请输入密码.."><br>
            <input type="button" id="login_btn" value="登录">
            <p>
                <a href="#">转到注册</a>|<a href="#">忘记密码</a>
            </p>
        </form>
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

        $("#login_btn").on("click",function () {
            var username= $("#username").val().toString();
            var password= $("#password").val().toString();

            if(username==null||username==""){
                alert("用户名不为空...");
            }else if(password==null||password==""){
                console.log("d");
                alert("密码不为空...");
            } else{
            	
                $("#login_form").submit();
            }
        });

        $("#login_form>p>a:first").on("click",function () {
            window.location.replace("zhuce.jsp");
        })
        
      
    });
</script>