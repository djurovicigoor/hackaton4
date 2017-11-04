app.controller('NotFoundCtrl', function ($scope, $location) {
    $scope.backHome = function () {
        $location.path( '/' );
    }
});