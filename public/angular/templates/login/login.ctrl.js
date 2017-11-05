app.controller('LoginCtrl', function ($scope, $http, ROUTES, Notification, $location, $cookies) {

    console.log($cookies.getObject('user'));

    $scope.user = {
        email: '',
        password: ''
    };
    $scope.login = function () {
        $http.post(ROUTES.api + 'login', $scope.user)
            .then(function (response) {
                $cookies.put('token', response.data.data.token);
                $cookies.put('role', response.data.data.roles[0].name);
                $cookies.put('user', JSON.stringify(response.data.data.user));
                $location.path('/');
            }, function (error) {
                Notification.error({message: error.data.message, positionY: 'bottom', positionX: 'right', delay: 1000});
            });
    };
});