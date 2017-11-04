app.controller('LoginCtrl', function ($scope, $http, ROUTES) {
    $scope.login = function (user) {
      $http.post(ROUTES.api + 'login', user)
          .then(function (response) {
              console.log(response);
          }, function (error) {

          });
    };
});