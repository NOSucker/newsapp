$(function () {
    var type = [
        'shehui', 'top', 'guonei', 'guoji', 'yule', 'tiyu'
    ];
  
        $('.main .list').on('click', 'li', function () {
            var index = $(this).index().toString();
            $(".tabs",parent.document).hide();
            window.location = 'content.jsp?' + index;
            
        });
        $('.header .refresh').on('click', function () {
            window.location.href = window.location.href;
        });        
//  …Ë÷√imgÕº∆¨
    $('.main .pull-right img').each(function(i,e){
    	var arr=['img/tuijianimg/01.jpg','img/tuijianimg/02.jpg','img/tuijianimg/03.jpg','img/tuijianimg/04.jpg','img/tuijianimg/05.jpg','img/tuijianimg/06.jpg','img/tuijianimg/07.jpg','img/tuijianimg/08.jpg','img/tuijianimg/09.jpg','img/tuijianimg/10.jpg','img/tuijianimg/11.jpg','img/tuijianimg/12.jpg','img/tuijianimg/13.jpg'];
    	e.src=arr[i];
    })
});