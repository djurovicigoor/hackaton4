<!doctype html>
<html lang="{{ app()->getLocale() }}" ng-app="app">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hakaton</title>
    <link rel="stylesheet" href="{{asset('node_modules/bootstrap/dist/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('angular/css/style.css')}}">

</head>
<body ng-controller="EventCtrl">
<ng-view></ng-view>
<!-- LIB -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="{{asset('node_modules/bootstrap/dist/js/bootstrap.min.js')}}"></script>
<script src="{{asset('node_modules/angular/angular.min.js')}}"></script>
<script src="{{asset('node_modules/angular-route/angular-route.min.js')}}"></script>
<script src="{{asset('node_modules/angular-cookies/angular-cookies.min.js')}}"></script>
<script src="{{asset('node_modules/angular-animate/angular-animate.min.js')}}"></script>

<script src="{{asset('angular/js/app.js')}}"></script>
<script src="{{asset('angular/js/constants.js')}}"></script>
<!-- Services -->
<script src="{{asset('angular/js/services.js')}}"></script>

<!-- Controllers -->
<script src="{{asset('angular/templates/home/home.ctrl.js')}}"></script>
<script src="{{asset('angular/templates/404/404.ctrl.js')}}"></script>
<script src="{{asset('angular/templates/login/login.ctrl.js')}}"></script>

<!-- Smart system -->
<script src="{{asset('angular/js/smartsys.js')}}"></script>
</body>
</html>
