app.controller('SingleViewCtrl', function ($scope, ROUTES, $routeParams, $http, $location) {
    //console.log($routeParams.id);
    $scope.job = [];
    
    $scope.getJobData = function () {
      $http.get(ROUTES.api + 'job/' + $routeParams.id)
          .then(function (response) {
              console.log(response);
              $scope.job = response.data.data;
          }, function (error) {
              $location.path('/login');
          });  
    };
    $scope.getJobData();
});