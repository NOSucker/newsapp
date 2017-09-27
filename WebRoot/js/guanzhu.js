 $(function () {
        $("#btn").click(function () {
            $(".tabs",parent.document).show();
            $(".tabs>ul>li:last",parent.document).trigger("click");
            window.location.href="person.jsp";
        });
        
        
        var ids=sessionStorage.ids;
        
        console.log("ddddd"+ids);
   		 var attr=ids.split("%")
   		 for(var k in attr){
   		 	$.ajax({
            url: 'http://localhost:8080/news/news!focus.action',
            type: 'POST',
            dataType: 'json',
            data:{
            	news_ID:attr[k]
            }
        })
        .done(function(data) {
            console.log(data);
            console.log("success");
            
            var str='<li style="height: 50px;">';
            str+='<div class="pull-left">';
            str+='<span class="title">'+data.news_title+'</span>';
            str+='</div>';
            str+='<div class="pull-right">';
            str+='<img src="img/0.jpg" width="50px" height="30px" alt="">';
            str+='</div>';
            str+='</li>';
              
            $("#list").append(str);
            
        })
        .fail(function() {
          
        })
   		 
   	}
    });