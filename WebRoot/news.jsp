<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>新闻</title>
    <link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css">
    <link href="css/base.css" rel="stylesheet">
    <link rel="stylesheet" href="css/news.css">
</head>

<body>
    <!--导航-->
    <div id="layout">

        <div class="header">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#shehui" aria-controls="shehui" role="tab" data-toggle="tab">社会</a></li>
                <li role="presentation"><a href="#top" aria-controls="top" role="tab" data-toggle="tab">头条</a></li>
                <li role="presentation"><a href="#guonei" aria-controls="guonei" role="tab" data-toggle="tab">国内</a>
                </li>
                <li role="presentation"><a href="#guoji" aria-controls="guoji" role="tab" data-toggle="tab">国际</a>
                </li>
                <li role="presentation"><a href="#yule" aria-controls="yule" role="tab" data-toggle="tab">娱乐</a>
                </li>
                <li role="presentation"><a href="#tiyu" aria-controls="tiyu" role="tab" data-toggle="tab">体育</a>
                </li>
            </ul>
        </div>

        <!-- Tab panes -->
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="shehui">
                <!--轮播部分-->
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="" alt="...">
                        </div>
                        <div class="item">
                            <img src="" alt="...">
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
                </div>
                <!--轮播部分-->
                <!--main部分-->
                <main class="container-fluid">
                    <ul class="list">
                        <!--<li>
                            <a>
                                <div class="pull-left">
                                    <span class="title">习近平抵达香港 将出席庆祝香港回归祖国20周年大会并视察香港</span>
                                </div>
                                <div class="pull-right">
                                    <img src="images/0.jpg" alt="">
                                </div>
                            </a>
                        </li>
                    </ul>
                </main>
                <!--main部分-->
            </div>
            <div role="tabpanel" class="tab-pane" id="top">
                <!--main部分-->
                <main class="container-fluid">
                    <ul class="list">
                        <li>
                            <a>
                                <div class="pull-left">
                                    <span class="title">习近平参观香港回归20周年成就展</span>
                                </div>
                                <div class="pull-right">
                                    <img src="images/0.jpg" alt="">
                                </div>
                            </a>
                        </li>
                    </ul>
                </main>
                <!--main部分-->
            </div>
            <div role="tabpanel" class="tab-pane" id="guonei">
                <!--main部分-->
                <main class="container-fluid">
                    <ul class="list">
                        <li>
                            <a>
                                <div class="pull-left">
                                    <span class="title">习近平参观香港回归20周年成就展</span>
                                </div>
                                <div class="pull-right">
                                    <img src="images/0.jpg" alt="">
                                </div>
                            </a>
                        </li>
                    </ul>
                </main>
                <!--main部分-->
            </div>
            <div role="tabpanel" class="tab-pane" id="guoji">
                <!--main部分-->
                <main class="container-fluid">
                    <ul class="list">
                        <li>
                            <a>
                                <div class="pull-left">
                                    <span class="title">习近平参观香港回归20周年成就展</span>
                                </div>
                                <div class="pull-right">
                                    <img src="images/0.jpg" alt="">
                                </div>
                            </a>
                        </li>
                    </ul>
                </main>
                <!--main部分-->
            </div>
            <div role="tabpanel" class="tab-pane" id="yule">
                <!--main部分-->
                <main class="container-fluid">
                    <ul class="list">
                        <li>
                            <a>
                                <div class="pull-left">
                                    <span class="title">习近平参观香港回归20周年成就展</span>
                                </div>
                                <div class="pull-right">
                                    <img src="images/0.jpg" alt="">
                                </div>
                            </a>
                        </li>
                    </ul>
                </main>
                <!--main部分-->
            </div>
            <div role="tabpanel" class="tab-pane" id="tiyu">
                <!--main部分-->
                <main class="container-fluid">
                    <ul class="list">
                        <li>
                            <a>
                                <div class="pull-left">
                                    <span class="title">习近平参观香港回归20周年成就展</span>
                                </div>
                                <div class="pull-right">
                                    <img src="images/0.jpg" alt="">
                                </div>
                            </a>
                        </li>
                    </ul>
                </main>
                <!--main部分-->
            </div>
        </div>

    </div>
    <!--导航-->


    <script src="js/jquery-1.11.1.js"></script>
    <script src="libs/bootstrap/js/bootstrap.js"></script>
    <script src="js/news.js"></script>
</body>

</html>