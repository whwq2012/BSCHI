<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- Head BEGIN -->
<head>
  <meta charset="utf-8">
  <title></title>

  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <meta content=" description" name="description">
  <meta content=" keywords" name="keywords">
  <meta content="keenthemes" name="author">

  <meta property="og:site_name" content="-CUSTOMER VALUE-">
  <meta property="og:title" content="-CUSTOMER VALUE-">
  <meta property="og:description" content="-CUSTOMER VALUE-">
  <meta property="og:type" content="website">
  <meta property="og:image" content="-CUSTOMER VALUE-"><!-- link to image for socio -->
  <meta property="og:url" content="-CUSTOMER VALUE-">

  <link rel="shortcut icon" href="favicon.ico">

  <!-- Fonts START -->
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css"><!--- fonts for slider on the index page -->  
  <!-- Fonts END -->

  <!-- Global styles START -->          
  <link href="/BSCHI/html/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="/BSCHI/html/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Global styles END --> 
   
  <!-- Page level plugin styles START -->
  <link href="/BSCHI/html/assets/pages/css/animate.css" rel="stylesheet">
  <link href="/BSCHI/html/assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
  <link href="/BSCHI/html/assets/plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
  <!-- Page level plugin styles END -->

  <!-- Theme styles START -->
  <link href="/BSCHI/html/assets/pages/css/components.css" rel="stylesheet">
  <link href="/BSCHI/html/assets/pages/css/slider.css" rel="stylesheet">
  <link href="/BSCHI/html/assets/pages/css/style-shop.css" rel="stylesheet" type="text/css">
  <link href="/BSCHI/html/assets/corporate/css/style.css" rel="stylesheet">
  <link href="/BSCHI/html/assets/corporate/css/style-responsive.css" rel="stylesheet">
  <link href="/BSCHI/html/assets/corporate/css/themes/red.css" rel="stylesheet" id="style-color">
  <link href="/BSCHI/html/assets/corporate/css/custom.css" rel="stylesheet">
  <link href="/BSCHI/html/assets/plugins/rateit/src/rateit.css" rel="stylesheet" type="text/css">
  <script type="text/javascript" src="/BSCHI/js/lib/jquery-1.10.2.min.js"></script>
  <script type="text/javascript" src="/BSCHI/js/lib/angular.min.1.3.9.js"></script>
  <script type="text/javascript" src="/BSCHI/js/lib/angular-route.min.1.3.9.js"></script>
  <script type="text/javascript" src="/BSCHI/html/js/lib/jquery.rateit.js"></script>
  <script type="text/javascript">
       console.log("test");
       $.ajax({
           type: "GET",//Request type
           dataType: "json",// The server return data type
           url: "info" ,//url 
           success: function (result) {
             console.log(result);
          }
       });
       
  </script>
  <!-- Theme styles END -->
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="ecommerce ng-scope" ng-app="myapp">
  <div class="ng-sope" ng-controller="MainController">
    <!-- BEGIN STYLE CUSTOMIZER -->
    <div class="color-panel hidden-sm">
      <div class="color-mode-icons icon-color"></div>
      <div class="color-mode-icons icon-color-close"></div>
      <div class="color-mode">
        <p>THEME COLOR</p>
        <ul class="inline">
          <li class="color-red current color-default" data-style="red"></li>
          <li class="color-blue" data-style="blue"></li>
          <li class="color-green" data-style="green"></li>
          <li class="color-orange" data-style="orange"></li>
          <li class="color-gray" data-style="gray"></li>
          <li class="color-turquoise" data-style="turquoise"></li>
        </ul>
      </div>
    </div>
    <!-- END BEGIN STYLE CUSTOMIZER --> 
    
    <!-- BEGIN TOP BAR -->
    <div class="pre-header">
        <div class="container">
            <div class="row">
                <!-- BEGIN TOP BAR LEFT PART -->
                <div class="col-md-6 col-sm-6 additional-shop-info">
                    <ul class="list-unstyled list-inline">
                        <li><i class="fa fa-user"></i><span id="username">{{user.name}}</span></li>
                        <!-- BEGIN CURRENCIES -->
                        <li class="shop-currencies">
                            <a href="javascript:void(0);">￥</a>
                            <a href="javascript:void(0);" class="current">$</a>
                        </li>
                        <!-- END CURRENCIES -->
                        <!-- BEGIN LANGS -->
                        <li class="langs-block">
                            <a href="javascript:void(0);" class="current">English </a>
                            <div class="langs-block-others-wrapper"><div class="langs-block-others">
                              <a href="javascript:void(0);">Chinese</a>
                            </div></div>
                        </li>
                        <!-- END LANGS -->
                    </ul>
                </div>
                <!-- END TOP BAR LEFT PART -->
                <!-- BEGIN TOP BAR MENU -->
                <div class="col-md-6 col-sm-6 additional-nav">
                    <ul class="list-unstyled list-inline pull-right">
                        <li><a href="#/account-info">My Account</a></li>
                        <li><a href="#/main">My Wishlist</a></li>
                        <li><a href="shop-checkout.html">Checkout</a></li>
                        <li><a href="page-login.html">Log out</a></li>
                    </ul>
                </div>
                <!-- END TOP BAR MENU -->
            </div>
        </div>        
    </div>
    <!-- END TOP BAR -->

    <!-- BEGIN HEADER -->

    <page-header></page-header>
    <div class="main">
        <div ng-view>
        </div>

    </div>
        <!-- END SIDEBAR & CONTENT -->

     
        <!-- END TWO PRODUCTS & PROMO -->

<div class="rateit" data-rateit-value="2.5" data-rateit-readonly="true"></div>
    <!-- BEGIN FOOTER -->
    <div class="footer">
      <div class="container">
        <div class="row">
          <!-- BEGIN COPYRIGHT -->
          <div class="col-md-4 col-sm-4 padding-top-10">
            2017 Â© schwa Network. ALL Rights Reserved. 
          </div>
          <!-- END COPYRIGHT --> 
          <!-- BEGIN POWERED -->
          <div class="col-md-4 col-sm-4 text-right">
            <p class="powered">Copyright &copy; 2017.Company name All rights reserved.</p>
          </div>
          <!-- END POWERED -->
        </div>
      </div>
    </div>
    <!-- END FOOTER -->

    <!-- BEGIN fast view of a product -->
    <div id="product-pop-up" style="display: none; width: 700px;">
            <div class="product-page product-pop-up">
              <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-3">
                  <div class="product-main-image">
                    <img src="/BSCHI/html/assets/pages/img/products/model7.jpg" alt="Cool green dress with red bell" class="img-responsive">
                  </div>
                  <div class="product-other-images">
                    <a href="javascript:;" class="active"><img alt="Berry Lace Dress" src="/BSCHI/html/assets/pages/img/products/model3.jpg"></a>
                    <a href="javascript:;"><img alt="Berry Lace Dress" src="/BSCHI/html/assets/pages/img/products/model4.jpg"></a>
                    <a href="javascript:;"><img alt="Berry Lace Dress" src="/BSCHI/html/assets/pages/img/products/model5.jpg"></a>
                  </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-9">
                  <h2>Cool green dress with red bell</h2>
                  <div class="price-availability-block clearfix">
                    <div class="price">
                      <strong><span>$</span>47.00</strong>
                      <em>$<span>62.00</span></em>
                    </div>
                    <div class="availability">
                      Availability: <strong>In Stock</strong>
                    </div>
                  </div>
                  <div class="description">
                    <p>Lorem ipsum dolor ut sit ame dolore  adipiscing elit, sed nonumy nibh sed euismod laoreet dolore magna aliquarm erat volutpat Nostrud duis molestie at dolore.</p>
                  </div>
                  <div class="product-page-options">
                    <div class="pull-left">
                      <label class="control-label">Size:</label>
                      <select class="form-control input-sm">
                        <option>L</option>
                        <option>M</option>
                        <option>XL</option>
                      </select>
                    </div>
                    <div class="pull-left">
                      <label class="control-label">Color:</label>
                      <select class="form-control input-sm">
                        <option>Red</option>
                        <option>Blue</option>
                        <option>Black</option>
                      </select>
                    </div>
                  </div>
                  <div class="product-page-cart">
                    <div class="product-quantity">
                        <input id="product-quantity" type="text" value="1" readonly name="product-quantity" class="form-control input-sm">
                    </div>
                    <button class="btn btn-primary" type="submit">Add to cart</button>
                    <a href="shop-item.html" class="btn btn-default">More details</a>
                  </div>
                </div>

                <div class="sticker sticker-sale"></div>
              </div>
            </div>
    </div>
    <!-- END fast view of a product -->

    <!-- Load javascripts at bottom, this will reduce page load time -->
    <!-- BEGIN CORE PLUGINS (REQUIRED FOR ALL PAGES) -->
    <!--[if lt IE 9]>
    <script src="/BSCHI/html/assets/plugins/respond.min.js"></script>  
    <![endif]-->
    <script src="/BSCHI/html/assets/plugins/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="/BSCHI/html/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="/BSCHI/html/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- END CORE PLUGINS -->

    <!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
    <script src="/BSCHI/html/assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
    <script src="/BSCHI/html/assets/plugins/owl.carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->
    <script src="/BSCHI/html/assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->

    <script src="/BSCHI/html/assets/corporate/scripts/layout.js" type="text/javascript"></script>
    <script src="/BSCHI/html/assets/pages/scripts/bs-carousel.js" type="text/javascript"></script>
    <script src="/BSCHI/html/js/angular-pagination.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();    
            Layout.initOWL();
            Layout.initImageZoom();
            Layout.initTouchspin();
            Layout.initTwitter();
        });
    </script>
    <script type="text/javascript">
        var mainapp = angular.module("myapp", ['ngRoute', 'PaginationModel'])
        .controller("MainController", function($scope, $http, BschiHttpService) {
            $scope.user = {};
            getUserInfo();
         
            function getUserInfo() {
            	var user;
            	$http({
            	    method: 'GET',
            	    url: '/BSCHI/user/info'
            	}).then(function successCallback(response) {
            	        user = response.data;
                        console.log(response);
                        $scope.user = user;
                        BschiHttpService.setUser(user);
            	    }, function errorCallback(response) {
            	        // 请求失败执行代码
                      console.log("request personal info fail");
            	});
            	return user;
            }
        })
        .controller('a_Controller', function ($scope, $route) {
            $scope.$route = $route;
        })
        .controller('b_Controller', function ($scope, $route, BschiHttpService) {
            $scope.$route = $route;
            $scope.view = "my-account";
            $scope.userInfo = BschiHttpService.getUser();
            $scope.displayName = $scope.userInfo.name;
            $scope.name = $scope.userInfo.name;
            $scope.email = $scope.userInfo.email;
            $scope.age = $scope.userInfo.age;
            $scope.role = $scope.userInfo.roletype;
            $scope.changeView = function(viewName){
                $scope.view = viewName;
            };

        })
        .config(function ($routeProvider) {
            $routeProvider.
                when('/main', {
                    templateUrl: 'html/main.html',
                    controller: 'a_Controller'
                }).
                when('/account-info', {
                    templateUrl: 'html/account-info.html',
                    controller: 'b_Controller'
                }).
                otherwise({
                    redirectTo: '/main'
                });
        });
        mainapp.directive('pageHeader', function () {
            return {
              restrict: 'EA',
              templateUrl: 'html/header.html',
            };
        }); 


        mainapp.directive('myAccount', function () {
            return {
              restrict: 'EA',
              templateUrl: 'html/my-account.html',
            };
        });

        mainapp.directive('resetPassword', function () {
            return {
              restrict: 'EA',
              templateUrl: 'html/reset-password.html',
              controller: 'resetPasswordController'
            };
        });

        mainapp.service('BschiHttpService', function ($http, $q) {
            this.name = "BschiHttpService";
            this.user = {};
            this.to16 = function (x) {
              return x.toString(16);  // transform to 16 bit.
            }

            this.getData = function () {
              var d = $q.defer();
              $http.get("ursl")//get data function
                .success(function (response) {
                  d.resolve(response);
                })
                .error(function () {
                  alert(0)
                  d.reject("error");
                });
              return d.promise;
            }

            this.getUser = function() {
                return this.user;
            }

            this.setUser = function(user) {
                this.user = user;
            }
            
            this.transformRequestAndResponse= function (obj) {
                var str = [];
                for (var p in obj) {
                  str.push(encodeURIComponent(p) + "=" + encodeURIComponent(obj[p]));
                }
                return str.join("&");
            }

          });         
          mainapp.controller('resetPasswordController', function ($scope, $http, BschiHttpService) {

            var successCallback = function () {
              console.log("reset success");
            }

            var errorCallback = function () {
              console.log("reset error");
            }

            $scope.resetButtonEnable = false;
            $scope.$watch('confirmpassword', function (newValue, oldValue) {
              if (newValue === oldValue) {
                if (newValue != null && $scope.oldpassword != null)  {
                  $scope.resetButtonEnable = true;
                  console.log("equal");
                }
                return; 
                } // AKA first run
              
            });
            
            $scope.resetPassword = function() {
              if (!$scope.resetButtonEnable) {
                 return;
              }
             console.log($scope.oldpassword + "old:new"+$scope.confirmpassword);
              var datad = {
                "oldPassword": $scope.oldpassword,
                "newPassword": $scope.confirmpassword
              }
              $http({
                method: "POST",
                url: '/BSCHI/user/resetPassword',
                data: datad,
                headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
                transformRequest: BschiHttpService.transformRequestAndResponse,
                transformResponse: BschiHttpService.transformRequestAndResponse,
              }).success(function (data) {
                  alert("Reset password success!");
              }).error(function (data) {
                  alert("Reset password faild!");
              });
            }
        })

        mainapp.directive('productItem', function () {
            return {
              restrict: 'EA',
              templateUrl: 'html/product-item.html',
              controller: 'productItemController'
            };
        });

        mainapp.controller('productItemController', function ($scope, $http, BschiHttpService) {

        });

        mainapp.directive('commentItem', function () {
            return {
              restrict: 'EA',
              templateUrl: 'html/comment-item.html',
              controller: 'commentItemController'
            };
        });

        mainapp.controller('commentItemController', function ($scope, $http, BschiHttpService) {

        });

        mainapp.directive('myComment', function () {
            return {
              restrict: 'EA',
              templateUrl: 'html/my-comment.html',
              controller: 'myCommentController'
            };
        });

        mainapp.controller('myCommentController', function ($scope, $http, BschiHttpService) {

        });
        
        mainapp.controller('paginationCtrl', function($scope){

            //设置分页的参数
            $scope.option = {
                curr: 1,  //当前页数
                all: 20,  //总页数
                count: 10,  //最多显示的页数，默认为10

                //点击页数的回调函数，参数page为点击的页数
                click: function (page) {
                    console.log(page);
                    //这里可以写跳转到某个页面等...
                }
            }
        });
      </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
    </div>
</body>
<!-- END BODY -->
</html>