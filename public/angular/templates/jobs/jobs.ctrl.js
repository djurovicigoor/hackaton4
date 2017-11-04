app.controller('JobsCtrl', function ($scope, $http, ROUTES) {
    $http.get(ROUTES.api + '')
});