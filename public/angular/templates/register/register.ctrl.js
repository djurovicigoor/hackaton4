app.controller('RegisterCtrl', function ($scope, $http, ROUTES, Notification, $location, $cookies) {
    $scope.user = {
        email: '',
        password: '',
        name: '',
        role: 'WORKER',
        confirmPassword: ''
    };
    $scope.register = function () {
        $http.post(ROUTES.api + 'register', $scope.user)
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