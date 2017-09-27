$(function () {
    var search = window.location.search.substr(1);
    var arr = [];
    arr = search.split(',');
    console.log(arr);
    $.ajax({
        type: "GET",
        url: "http://toutiao-ali.juheapi.com/toutiao/index",
        headers: {
            "Authorization": "APPCODE a95fc85860ca4a9484a72864f19f0f37"
        },
        data: {
            type: arr[1],
        },
        dataType: "json",
        success: function (response) {
            var data = response.result.data[arr[0]];
            console.log(data);
            var news = new News();
            news.title = data.title;
            news.date = data.date;
            news.author = data.author_name;
            news.images = [data.thumbnail_pic_s, data.thumbnail_pic_s02, data.thumbnail_pic_s03];
            console.log(news.images);
            news.init();
        }
    });
   
    $('header .backToTJ').on('click', function () {
    
        $(".tabs>ul>li:eq("+1+")",parent.document).trigger("click");
     	window.history.back(-1);
    });
    
    $(".follow").on("click",function(){
    	var ids=sessionStorage.ids; 
    	
    	var id=$(".guanzhu").data("id");
    	sessionStorage.ids=ids+"%"+id;
    	console.log(sessionStorage.ids);
    	
    });
    
	    $(".pull-right").on("click",function(){
	    setTimeout(function(){
	    window.location.href="focusSuccess.jsp";},0)
	    
	    })
});