<!doctype html>
<html lang="{{ app()->getLocale() }}" ng-app="app">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hakaton</title>
    <link rel="stylesheet"
          href="{{asset('node_modules/angular-ui-notification/dist/angular-ui-notification.min.css')}}">
    <link rel="stylesheet" href="{{asset('node_modules/bootstrap/dist/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('node_modules/angular-ui-bootstrap/dist/ui-bootstrap-csp.css')}}">
    <link rel="stylesheet" href="{{asset('node_modules/font-awesome/css/font-awesome.min.css')}}">

    <link rel="stylesheet" href="{{asset('angular/css/style.css')}}">

</head>
<body ng-controller="EventCtrl as $ctrl">
<nav style="padding-top: 10px; padding-bottom: 15px;" class="navbar navbar-default custom-navbar">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!--<a class="navbar-brand" href="#">Brand</a>-->
        </div>
        <div class="container">
            <a class="navbar-brand" href="#"><img src="{{asset('angular/img/Logo.png')}}" alt=""></a>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    {{--<li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>--}}
                    {{--<li><a href="#">Link</a></li>--}}
                    {{--<li class="dropdown">--}}
                    {{--<div class="btn-group" uib-dropdown is-open="status.isopen">--}}
                    {{--<button id="single-button" type="button" class="btn btn-primary" uib-dropdown-toggle ng-disabled="disabled">--}}
                    {{--Button dropdown <span class="caret"></span>--}}
                    {{--</button>--}}
                    {{--<ul class="dropdown-menu" uib-dropdown-menu role="menu" aria-labelledby="single-button">--}}
                    {{--<li role="menuitem"><a href="#">Action</a></li>--}}
                    {{--<li role="menuitem"><a href="#">Another action</a></li>--}}
                    {{--<li role="menuitem"><a href="#">Something else here</a></li>--}}
                    {{--<li class="divider"></li>--}}
                    {{--<li role="menuitem"><a href="#">Separated link</a></li>--}}
                    {{--</ul>--}}
                    {{--</div>--}}
                    {{--</li>--}}
                </ul>
                {{--<form class="navbar-form navbar-left">--}}
                {{--<div class="form-group">--}}
                {{--<input type="text" class="form-control" placeholder="Search">--}}
                {{--</div>--}}
                {{--<button type="submit" class="btn btn-default">Submit</button>--}}
                {{--</form>--}}
                <ul class="nav navbar-nav navbar-right custom-navbar-text">
                    <li><a href="#!/">Home</a></li>
                    <li><a href="#!/jobs">Jobs</a></li>
                    <li><a href="#!/why">Why we?</a></li>
                    <li ng-if="isLogged">
                        <!-- Single button -->
                        <div class="btn-group" uib-dropdown is-open="status.isopen">
                            <button id="single-button" type="button" class="btn user-btn" uib-dropdown-toggle
                                    >
                                <img src="angular/img/user.png" alt="">
                                 @{{user.name}} <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" uib-dropdown-menu role="menu" aria-labelledby="single-button">
                                <li role="menuitem"><a href="#!/profile">Profile</a></li>
                                <li><a  ng-click="logout()" href="#!/login">Logout</a></li>
                            </ul>
                        </div>

                    </li>
                    <li ng-if="!isLogged"><a href="#!/login">Sign in</a></li>
                    <a ng-if="!isLogged" href="#!/register" type="button" class="btn btn-default custom-signup">Sign
                        up</a>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div>
    </div><!-- /.container-fluid -->
</nav>
<ng-view></ng-view>
<!-- LIB -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
<!-- <script src="{{asset('node_modules/bootstrap/dist/js/bootstrap.min.js')}}"></script> -->

<script src="{{asset('node_modules/angular/angular.min.js')}}"></script>
<script src="{{asset('node_modules/angular-route/angular-route.min.js')}}"></script>
<script src="{{asset('node_modules/angular-cookies/angular-cookies.min.js')}}"></script>
<script src="{{asset('node_modules/angular-animate/angular-animate.min.js')}}"></script>
<script src="{{asset('node_modules/angular-ui-notification/dist/angular-ui-notification.min.js')}}"></script>
<script src="{{asset('node_modules/angular-ui-bootstrap/dist/ui-bootstrap-tpls.js')}}"></script>
<script src="https://js.pusher.com/4.2/pusher.min.js"></script>
<script src="{{asset('node_modules/pusher-angular/lib/pusher-angular.min.js')}}"></script>

<script src="{{asset('angular/js/app.js')}}"></script>
<script src="{{asset('angular/js/constants.js')}}"></script>
<!-- Services -->
<script src="{{asset('angular/js/services.js')}}"></script>

<!-- Controllers -->
<script src="{{asset('angular/templates/home/home.ctrl.js')}}"></script>
<script src="{{asset('angular/templates/404/404.ctrl.js')}}"></script>
<script src="{{asset('angular/templates/login/login.ctrl.js')}}"></script>
<script src="{{asset('angular/templates/register/register.ctrl.js')}}"></script>
<script src="{{asset('angular/templates/register/register.ctrl.js')}}"></script>
<script src="{{asset('angular/templates/why-we/why-we.ctrl.js')}}"></script>
<script src="{{asset('angular/templates/jobs/jobs.ctrl.js')}}"></script>
<script src="{{asset('angular/templates/hire/hire.ctrl.js')}}"></script>
<script src="{{asset('angular/templates/hire-profile/hire-profile.ctrl.js')}}"></script>
<script src="{{asset('angular/templates/modal/modal.ctrl.js')}}"></script>
<script src="{{asset('angular/templates/single-view/single-view.ctrl.js')}}"></script>
<script src="{{asset('angular/templates/edit-profile-hire/edit-profile-hire.ctrl.js')}}"></script>
<script src="{{asset('angular/templates/level-modal/level-modal.ctrl.js')}}"></script>

<!-- Smart system -->
<script src="{{asset('angular/js/smartsys.js')}}"></script>
</body>
</html>
