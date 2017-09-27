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
                alert("账号不为空...");
            }else if(password==null||password==""){
                alert("密码不为空...");
            } else{
                $("#login_form").submit();
            }
        });   
        $("#login_form>p>a:first").on("click",function () {
            window.location.replace("zhuce.jsp");
        })
    });