app.controller('LevelModalCtrl', function ($scope, $rootScope, $log, $document, ROUTES, $http) {
    $scope.checkboxModal = 1;
    console.log($rootScope.question);

    $scope.submitQuestion = function () {
        var qData = {
            question_id: $rootScope.question.id,
            level: $scope.checkboxModal

        };

        $http.post(ROUTES.api + 'question', qData)
            .then(function (response) {
                location.reload();
                console.log(response);
                $scope.close();
            }, function (error) {
                
            });
    }
});