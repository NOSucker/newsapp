<%@ page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newsContent.jsp' starting page</title>
    
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>新闻内容</title>
    <link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css">
    <link href="css/base.css" rel="stylesheet">
    <link rel="stylesheet" href="css/newscontent.css">
     <style>
     #collect{
         padding: 10px;
    font-size: 15px;
     }
     </style>
  </head>
  
  <body>
    <!--头部-->
    <header class="container clearfix">
        <div class="pull-left">
            <a href="#">
                <span class="back">
                </span>
            </a>
        </div>
        <div class="pull-right">
            <button id="collect">*收藏</button>
    
        </div>
       
    </header>
    <!--头部-->
    <!--main部分-->
    <main class="container">
        <div class="top">
            <h3 class="title">${news.news_title}</h3>
        </div>
        <div class="newsInfo clearfix">
            <div class="pull-left">
                <a href="#">
                 <i class="icon-author"></i>
                 <span class="authorName">${news.news_publisher}</span>
                    </a>
                <span class="date">${news.news_time}</span>
            </div>
            <div class="pull-right">
                <a href="news!focus.action?news_ID=${news.news_ID }"><span class="follow">+关注</span></a>
            </div>
        </div>
        <div class="content">
             <!--<img src="img/0.jpg" alt="">-->
            <p class="text">
                在标签上，还有一些内容是国家推荐标示的，有利于我们更好地食用食品或避免一些可能存在的危险。主要包括批号、食用方法、致敏物质等。 批号：根据产品需要，可以标示产品的批号。这个一般我们无需太注意。 食用方法：比如速冻馄饨等，经常能见到“无需解冻”的字样，提示我们烹调时可以直接放入热水中而不需要提前解冻。
                致敏物质：喜欢看美剧的读者经常会看到这样的情节，某个主角因为吃了花生而嘴巴肿得像香肠，甚至会呼吸困难，这就是对花生过敏的缘故。现在人们出现过敏的比例越来越高，所以留心食品标签上的致敏物质说明不仅关系到健康，更有可能是性命攸关的大事。
                以下食品及其制品可能导致过敏反应，如果用作配料，应在配料表中使用易辨识的名称，或在配料表邻近位置加以提示：含有麸质的谷物及其制品（如小麦、黑麦、大麦、燕麦）；甲壳动物及其制品（如虾、龙虾、蟹等）；鱼类及其制品；蛋类及其制品；花生及其制品；大豆及其制品；乳及乳制品（包括乳糖）；坚果及其果仁类制品。
                值得一提的是，严重过敏的人，即使是微量的致敏物质也会危及生命，所以也应该注意加工过程中可能带入的上述食品或其制品。如果我们本身是过敏体质或身边的家人、朋友有过敏性疾病，在选购食品时一定要多留个心眼，小心阅读一下标签上的过敏物质说明，并在食用的时候提醒一下过敏的人。
                下面，我们用具体案例来说明。速溶咖啡是年轻人经常会选购的食品，可能你有一两个自己钟爱的咖啡品牌，却从没有仔细看过速溶咖啡的食品标签。那么，我们能从速溶咖啡的包装上获得哪些应该了解的信息呢？ 首先，我们看到了“特浓咖啡”的字样，得知这是一盒咖啡，大多数人只获得了这条信息，再看一看价签就决定选购了。
                先别急，我们再往下看看，包装的底部标注“10条 13克净含量：130克”。这说明这种咖啡一盒中有10条，每条里的咖啡有13克，一盒咖啡一共130克。根据我们刚学到的知识，我们获得了“净含量及其规格”的信息。这有什么用呢？细心的你如果还比较过旁边另一种咖啡，就会发现，它的包装上也许是这样标注的“11克
                11条净含量121克”。看似包装大小差不多的速溶咖啡，从包装上你看到了什么？ 看过正面，再看看侧面的标签，配料表下面提示“过敏原信息：含有牛奶制品”，这说明配料含有牛奶制品，牛奶过敏的人需要注意了。 下面还提示了冲调方法，按照说明的水量冲调，才能喝到“滴滴香浓”的好口感。
                标签下方的营养成分表中还标示了很多信息，这里面的玄机我们要从下文中获得了。（三）
            </p>
        </div>
        <!--新闻内容-->
        <!--评论-->
        <div class="commentList container">
            <dl>
                <dt>网友评论</dt>
                <dd>
                    <ul class="list">
                        <!--<li>这条新闻很nice</li>-->
                        <!--<li>这条新闻很nice</li>-->
                        <!--<li>这条新闻很nice</li>-->
                        <!--<li>这条新闻很nice</li>-->
                    </ul>
                </dd>
            </dl>
        </div>
    </main>
    <!--main部分-->
    <!--footer部分-->
    <footer>
        <div class="container clearfix">
            <div class="pull-left">
                <span class="icon-edit"></span>
                <form action="">
                    <label for="edit"></label>
                    <input type="text" id="edit" placeholder="评一下">
                </form>
            </div>
            <div class="pull-right">
                <span class="icon-commentNum"></span>
                <span class="icon-share" id="icon-share"></span>
            </div>
        </div>
    </footer>
    <!--footer部分-->
    <script src="js/jquery-1.11.1.js"></script>
    <script src="libs/bootstrap/js/bootstrap.js"></script>
    <script src="js/Newsclass.js"></script>
    <script src="js/newscontent.js"></script>
</body>
</html>
