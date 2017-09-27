$(function () {
    // 鍥哄畾tab鏍�
    $(window).on("scroll", function () {
        var scrollTop = $(window).scrollTop();
        // console.log(scrollTop);
        var header = $('#layout .header');
        var headerHeight = header.height();
        var slider = $('.carousel');
        if (scrollTop >= headerHeight) {
            header.css({
                position: 'fixed',
                zIndex: 3,
                left: 0,
                top: 0
            });
            slider.css({
                marginTop: headerHeight + 'px',
            })
        } else {
            header.css({
                position: 'static',
                zIndex: 3,
            });
            slider.css({
                marginTop: 0,
            })
        }
    });
    //璇锋眰鏂伴椈
    var type = [
        'shehui', 'top', 'guonei', 'guoji', 'yule', 'tiyu'
    ];
    for (var j = 0; j < type.length; j++) {
        (function(j){
        	$.ajax({
                type: "GET",
                url: "http://toutiao-ali.juheapi.com/toutiao/index",
                headers: {
                    "Authorization": "APPCODE 7c220dff3371452b86184a7a097d95d4"
                },
                data: {
                    type: type[j],
                },
                dataType: "json",
                success: function (response) {
                    var data = response.result.data;
                    var str = '';
                    for (var i = 0; i < data.length; i++) {
                        str += '<li>';
                        str += '<a>';
                        str += '<div class="pull-left">';
                        str += '<span class="title">' + data[i].title + '</span>';
                        str += '</div>';
                        str += ' <div class="pull-right">';
                        str += '<img src=' + data[i].thumbnail_pic_s02 + ' alt="">';
                        str += '</div>';
                        str += '</a>';
                        str += '</li>';
                    }
                    // console.log(str);
                    console.log('#' + type[j] + ' .list');
                    var list = $('#' + type[j] + ' .list');
                    list.html(str);
                    if ('shehui' === type[j]) {
                        var sliderImg = $('#shehui .carousel-inner img');
                        // console.log(sliderImg);
                        for (var i = 0; i < sliderImg.length; i++) {
                            sliderImg[i].src = data[i].thumbnail_pic_s;
                        }
                    }

                }
            });
            // 鐐瑰嚮绀句細鏂伴椈鍒楄〃璺宠浆鍒板唴瀹归〉
            $('#' + type[j] + ' .list').on('click', 'li', function () {
                var index = $(this).index().toString();
                window.location='newscontent.jsp?' + index + ',' + type[j];
            });
        })(j)
    };
});