app.controller('HomeCtrl', function ($scope, $rootScope, $location) {
    $scope.inputTxt = '';
    $scope.searchHome = function () {
        $rootScope.srch = $scope.inputTxt;
        $location.path('/jobs')
    }


    var numbers = ["Find the employer", "Change the bussiness environment", "Find a new colleague", "Find a new company", "Find the employer", "Change the bussiness environment", "Find a new colleague", "Find a new company", "Find the employer", "Change the bussiness environment", "Find a new colleague", "Find a new company"];

    // setInterval(function(){
        for (var i = 0; i <= 11; ++i) {
            (function(index) {
                var proba = numbers[index];
                setTimeout(function() {
                    document.getElementById('text').innerHTML = proba;
                }, i * 8000);
            })(i);
        }
    // }, 3200);
    // clearInterval(interval);
});