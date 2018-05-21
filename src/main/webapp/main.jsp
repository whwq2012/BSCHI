<html>

<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0" />

    <!--    这里1.6版本的引入后，跳转没反应，这个版本貌似有bug，建议用1.3版本的
        <script type="text/javascript" src="js/angular.min.1.6.0.js" ></script>
        <script type="text/javascript" src="js/angular-route.min.1.6.0.js" ></script>    
        -->

    <script type="text/javascript" src="js/lib/angular.min.1.3.9.js"></script>
    <script type="text/javascript" src="js/lib/angular-route.min.1.3.9.js"></script>
    <script type="text/javascript">
    $(document).ajaxComplete(function (event, xhr, settings) {
        if (xhr.getResponseHeader("sessionstatus") == "timeOut") {
            if (xhr.getResponseHeader("loginPath")) {
                alert("会话过期，请重新登陆!");
                window.location.replace(xhr.getResponseHeader("loginPath"));
            } else {
                alert("请求超时请重新登陆 !");
            }
        }
    });
    </script>
</head>



<body ng-app="myapp" class="ng-scope">

    <div>
        <div id="navigation">
            <a href="#/a">a.html</a>
            <br />
            <a href="#/b">b.html</a>
        </div>

        <div ng-view>
        </div>
    </div>
</body>



<script type="text/javascript">
    angular.module('myapp', ['ngRoute'])
        .controller('a_Controller', function ($scope, $route) {
            //此处的controller是跳转到a.html界面的controller
            $scope.$route = $route;
        })
        .controller('b_Controller', function ($scope, $route) {
            //此处的controller是跳转到b.html界面的controller
            $scope.$route = $route;
        })
        .config(function ($routeProvider) {
            $routeProvider.
                when('/a', {
                    templateUrl: 'a.html',
                    controller: 'a_Controller'
                    //a.html界面中要用此controller
                }).
                when('/b', {
                    templateUrl: 'b.html',
                    controller: 'b_Controller'
                    //b.html界面中要用此controller
                }).
                otherwise({
                    redirectTo: '/a'
                });
        });
</script>