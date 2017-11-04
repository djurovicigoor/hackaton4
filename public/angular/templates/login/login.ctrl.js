app.controller('LoginCtrl', function ($scope, $http, ROUTES, Notification, $location, $cookies) {

    $scope.user = {
        email: '',
        password: ''
    };
    $scope.login = function () {
        $http.post(ROUTES.api + 'login', $scope.user)
            .then(function (response) {
                $cookies.put('token', response.data.data.token);
              //  $location.path('/');
            }, function (error) {
                Notification.error({message: error.data.message, positionY: 'bottom', positionX: 'right', delay: 1000});
            });
    };
});