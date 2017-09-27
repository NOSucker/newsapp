$(function(){
		var screenHeight=$(window).height();

		var lis=$(".tabs> ul > li");
		var tab_items=$(".content> div");
		
		$.each(tab_items, function(index,elem) {
			$(elem).css({
				"height":screenHeight
			});
		});

		$.each(lis, function(index,elem) {
			$(elem).on("click",function(){
				for(var i=0;i<lis.length;i++){
					$(lis[i]).removeClass("current");
					tab_items[i].style.display="none";
				}
				$(elem).addClass("current");
				
				var index=$(this).index();
				tab_items[index].style.display="block";
			});
		});
		$(lis[0]).trigger("click");

		$("#exitbtn").click(function () {
			window.close()
        });
	});