<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/liveInterface.css">
    <script src="js/jquery-1.11.1.js"></script>
    <title>直播界面</title>
</head>
<body>
    <header id="header">
        <a href="javascript:;" id="btn"><</a>
        <video id="live" src="fun.mp4" autoplay poster="img/news1.jpg">对不起，你你的浏览器不支持该应用!</video>
        <p id="count_zan">本视频有&nbsp;<span>8</span>&nbsp;人点赞 </p>
    </header>
    <section id="comment_list">
        <ul>
        </ul>
    </section>

      <div class="dash">
        <span id="click_comment"></span>
        <span id="click_zan"></span>
    </div>

    <div id="comment_area">
        <textarea></textarea>
        <button>提交</button>
    </div>

</body>
</html>
<script>
    $(function () {

        //展示local里面的数据
         var names=localStorage.names;
         var times=localStorage.times;
         var comments=localStorage.comments;

         if(names==null||names=="undefined"){
            console.log("没有数据");
         }else{
             var attrname= names.split("%");
             var attrtimes= times.split("%");
             var attrcomments= comments.split("%");

             console.log(attrname);
             console.log(attrcomments);

             for(var k in attrname)
             {
                 if (k==0){
                     continue;
                 }
                 console.log(attrname[k]);
                 console.log(attrtimes[k]);
                 console.log(attrcomments[k]);

                 //此处缺少dom添加li到界面
                 var li=document.createElement("li");
                 $(li).append('<p>' +
                     '<img src="img/checkme.png">'+
                     '<span>'+ attrname[k] +'</span>'+
                     '<span class="time">'+attrtimes[k] +'</span>'+
                     '</p>');

                 $(li).append('<div>' +
                     '<p>'+ attrcomments[k] +'</p>' +
                     '</div>');

                 $("#comment_list>ul").append(li);

             }
         }



        $("#btn").click(function () {
            $(".tabs",parent.document).show();
            $(".tabs>ul>li:eq("+2+"+)",parent.document).trigger("click");
            window.location.href="zhibo.jsp";
        });

        //点评论
        $("#click_comment").on("click",function () {
            $(".dash").hide();
            $("#comment_area").show();
            $("#comment_area>textarea").val('');
        });

        //评论完成
        $("#comment_area>button").on("click",function () {

            var txt= $("#comment_area>textarea").val();
            console.log(txt);
            //此处缺少dom添加li到界面
            var current=sessionStorage.username;
            console.log(current)
            if(current==null||current=='undefined'){
                current="匿名用户";
            }


            var li=document.createElement("li");
            $(li).append('<p>' +
                '<img src="img/checkme.png">'+
                '<span>'+ current +'</span>'+
                '<span class="time">1分钟前</span>'+
            '</p>');

            $(li).append('<div>' +
                '<p>'+ txt +'</p>' +
                '</div>');

            $("#comment_list>ul").append(li);

            //存到本地
            names=localStorage.names;
            if(names==null||names=="undefined"){
                names="";
            }

            times=localStorage.times;
            if(times==null||times=="undefined"){
                times="";
            }

            comments=localStorage.comments;
            if(comments==null||comments=="undefined"){
                comments="";
            }

            names=names+"%"+current;
    //        names=names+"%"+"小明明";
            times=times+"%"+"1分钟前";
            comments=comments+"%"+txt;

            localStorage.names=names;
            localStorage.times=times;
            localStorage.comments=comments;

            $("#comment_area").hide();
            $(".dash").show();
        })

        /
        $("#click_zan").on("click",function () {
            var num=parseInt($("#count_zan>span").text());
            num++;
            localStorage.setItem("zanNum",num);
            $("#count_zan>span").text(localStorage.getItem("zanNum"));
        });
    })
</script>