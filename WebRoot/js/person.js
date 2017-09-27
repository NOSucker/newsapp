
window.onload=function(){
		var info=sessionStorage.getItem("username");
		if(info==null){
			info="登陆";
		}
		console.log(info);
		$(".info>h5").text(info);
	}

//$(document.ready)=function(){
//	
//}

	$(function () {
		var lis=$(".list>ul>li");
		$.each(lis,function (index, elem) {
			$(elem).on("click",function () {
                var src=$(this).data("src");
                $(".tabs",parent.document).hide();
                window.location.replace(src);
            })
        });

		$(".header>div>span>h5").on("click",function () {
            $(".tabs",parent.document).hide();
			window.location.replace("login.jsp");
        });
    })