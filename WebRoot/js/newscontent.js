$(function () {
//	清除下面的tabs
	 $(".tabs",parent.document).hide();
    console.log(window.location.search);
    var search = window.location.search.substr(1);
    var arr = [];
    arr = search.split(',');
    console.log(arr[1]);
    // 如果是收藏的，则用本地储存
    if (arr[0].substr(0, 12) === 'localStorage') {
        console.log(arr[1]);
        var dataStr = decodeURI(window.location.search.substr(15));
        console.log(typeof dataStr);
        var json = JSON.parse(dataStr);
        console.log(json);
        var index = Number(arr[0].substr(13));
        var data = json[index];
        var news = new News();
        $siteTitle = news.title = data.title;
        $siteUrl = data.url;
        news.date = data.date;
        news.author = data.author;
        news.images = [data.images[0], data.images[1], data.images[2]];
        // 调用方法
        news.init();
        
        return;
    }
    var $siteTitle = '';
    var $siteUrl = '';
    console.log(arr);
    // 社会新闻
    $.ajax({
        type: "GET",
        url: "http://toutiao-ali.juheapi.com/toutiao/index",
        headers: {
            "Authorization": "APPCODE 7c220dff3371452b86184a7a097d95d4"
        },
        data: {
            type: arr[1],
        },
        dataType: "json",
        success: function (response) {
            var data = response.result.data[arr[0]];
            console.log(data);
            var news = new News();
            $siteTitle = news.title = data.title;
            $siteUrl = data.url;
            news.date = data.date;
            news.author = data.author;
            news.images = [data.thumbnail_pic_s, data.thumbnail_pic_s02, data.thumbnail_pic_s03];
            // 调用方法
            console.log(news.images);
            news.init();
         // 分享
            $('.icon-share').on('click', function (e) {
                // console.log(11);
                console.log($siteTitle);
//                window.location.href='http://www.baidu.com';
                window.location.href = 'https://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=' + $siteUrl + '&title=' + $siteTitle;
                e.stopPropagation();
            });
//            收藏
            $('#collect').on('click', function (e) {
           	 // 2.收藏到本地localstorage
               toStr(data);
               console.log(this);
               var that=this;
               this.innerHTML='collected';
               
               console.log(localStorage.getItem('news'));
               e.stopPropagation();
               // 把数据以json形式存储
               function toStr(data) {
                   var item = {
                       "date": data.date,
                       "title": data.title,
                       "images": [data.thumbnail_pic_s, data.thumbnail_pic_s02, data.thumbnail_pic_s03],
                       "url": data.url,
                       "author": data.author_name
                   };
                   // 判断有没有数组存在，没有就添加
                   if (localStorage.getItem('news')) {
                       var news = JSON.parse(localStorage.getItem('news'));
                       console.log(typeof news);
                   } else {
                       var news = [];
                       news.push(item);
                       var str = JSON.stringify(news);
                       localStorage.setItem('news', str);
                       return;
                   }
                   // 判断有无重复新闻
                   for (var i = 0; i < news.length; i++) {
                       var element = news[i];
                       if (element.title != item.title) {
                           news.push(item);
                       }
                   }
                   var str = JSON.stringify(news);
                   localStorage.setItem('news', str);
                   // console.log(str);
               }
//               setTimeout(function () {
//                  window.location.href='collectNews.jsp';
//               }, 1000);
           });
          //评论功能
            $('#edit').on('keydown', function (e) {
                //  console.log('yaoyao');
                console.log(e.keyCode);
                if (13 === e.keyCode) {
                    var li = $('<li></li>')
                    var commentText = $(this).val();
                    li.html(commentText);
                    var ul = $('.commentList .list');
                    ul.append(li);
                    $(this).val('');
                    return false;
                }
            });
        }
    });
   
    $('header .back').on('click', function () {
    	
    	$(".tabs",parent.document).show();
        window.history.go(-1);

    });
    
});