 $(function () {
        // localStorage.clear();
        $("#btn").click(function () {
            $(".tabs", parent.document).show();
            $(".tabs>ul>li:last", parent.document).trigger("click");
            window.location.href = "person.jsp";
        });
        // 读取本地存储渲染到页面
        
//        $(docuemnt).ready=function(){
//        	
//        };
        
        render();
        // 1.读取localstorage转化成json对象
        function toJson() {
            var str = localStorage.getItem('news');
            return JSON.parse(str);
        }
        // 2.遍历json对象渲染到页面
        function render() {
            var json = toJson();
            bindDetail(json);
        }

        function bindDetail(data) {
            var str = '';
            for (var i = 0; i < data.length; i++) {
                str += '<li class="clearfix">';
                str += '<div class="pull-left">';
                str += '<span class="title">' + data[i].title + '</span>';
                str += ' <div class="date">' + data[i].date + '</div>';
                str += '</div>';
                str += '<div class="pull-right">';
                str += '<img src="' + data[i].images[0] + '" alt="">';
                str += '</div>';
                str += '</li>';
            }
            console.log(str);
            $('#list_collect ul').html(str);
        }
    });

    //    每个li添加跳转事件
    $('#list_collect ul').on('click', 'li', function () {
     
        var index = $(this).index();
        console.log(index);
        var dataStr = localStorage.getItem('news');
        window.location = 'newscontent.jsp?localStorage' + index + ',' + dataStr;
    })