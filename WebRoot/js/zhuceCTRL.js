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
                alert("the username is not allow null·····");
            }else if(password==null||password==""){
                alert("密码不为空···");
            }
            else if(repeat_password==null||repeat_password==""){
                alert("确认密码不为空···");
            }else if(password!=repeat_password){
                alert("密码与确认密码不相等...");
            }else{
                //准备验证数据库֤
                var nameState=validateName(username);
                var passwordState =validateName(password);
                
                if (nameState===true&&passwordState===true){
                    $("#register_form").submit();
                }else if(nameState===false){
                    alert("账号不符合标准···");
                }else if(passwordState===false){
                    alert("密码不符合标准...");
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