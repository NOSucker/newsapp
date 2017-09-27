<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>Title</title>
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/zhuce.css">
</head>
<body>
    <header id="login_header">
        <a id="btn"><span><&nbsp;</span>返回</a>
        <h1>注册</h1>
    </header>
    <section>
        <form id="register_form" action="person!register.action" method="post">
            <label for="username">账号</label>
            <input type="text" id="username" placeholder="请输入账号.." name="person.person_num"><br>
            <label for="password">密码</label>
            <input type="password" id="password" placeholder="请输入密码.." name="person.person_password"><br>
            <label for="repeat_password">确认密码</label>
            <input type="password" id="repeat_password" placeholder="请确认密码.."> <br>

            <input type="button" id="register_btn" value="注册">
            <p>
                <a href="#">转到登录</a>|<a href="#">忘记密码</a>
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

        $("#register_btn").on("click",function () {
            var username= $("#username").val().toString();
            var password= $("#password").val().toString();
            var repeat_password=$("#repeat_password").val().toString();

            if(username==null||username==""){
                alert("用户名不为空...");
            }else if(password==null||password==""){
                alert("密码不为空...");
            }
            else if(repeat_password==null||repeat_password==""){
                alert("请输出确认密码...");
            }else if(password!=repeat_password){
                alert("密码与确认密码不一致，请重新输入...");
            }else{
                //正则表达式验证
                var nameState=validateName(username);
                var passwordState =validateName(password);

                if (nameState===true&&passwordState===true){
                    console.log("validate is right");
                    $("#register_form").submit();
                }else if(nameState===false){
                    alert("用户名格式不正确....");
                }else if(password===false){
                    alert("密码格式不正确...");
                } 
            }
        });

        $("#register_form>p>a:first").on("click",function () {
            window.location.replace("login.jsp");
        })

    });
    
    function validateName(str) {
        var reg=/^([0-9]|[a-zA-Z]){6,16}$/;
        var state= str.match(reg);
        if(state==null){
            return false;
        }else{
            return true;
        }
    }
</script>