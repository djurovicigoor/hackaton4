//Smart System
app.controller('EventCtrl', function ($rootScope, $http) {
    $rootScope.smartSys = function (key) {
        var eventData = {
            key: key
        };
        $http.post('api/yolo', eventData)
            .then(function (response) {
                console.log(response);
            }, function (error) {
                console.log(error);
            });
        console.log(key);
    }
});