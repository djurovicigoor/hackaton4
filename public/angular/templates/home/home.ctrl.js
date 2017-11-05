app.controller('HomeCtrl', function ($scope, $rootScope, $location) {
    $scope.inputTxt = '';
    $scope.searchHome = function () {
        $rootScope.srch = $scope.inputTxt;
        $location.path('/jobs');
    }
});