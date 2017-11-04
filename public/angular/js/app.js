'use strict';
var app = angular.module('app', [
    'ngRoute',
    'ngCookies'
]);

/**
 * Define routes
 */
app.config(['$routeProvider', function ($routeProvider) {
    $routeProvider.when('/', {
        templateUrl: 'angular/templates/home/home.html',
        controller: 'HomeCtrl'
    })
        .when('/404', {
            templateUrl: 'angular/templates/404/404.html',
            controller: 'NotFoundCtrl'
        })

        .when('/login', {
            templateUrl: 'angular/templates/login/login.html',
            controller: 'LoginCtrl'
        })

        .otherwise({
            redirectTo: '/404'
        });
}]);