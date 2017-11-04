//Smart System
app.controller('EventCtrl', function ($rootScope, $http, ROUTES) {
    $rootScope.smartSys = function (keys) {
        var eventData = {
            smartkeys: keys
        };
        $http.post(ROUTES.api + 'smartattributes', eventData)
            .then(function (response) {
            }, function (error) {
                console.log(error);
            });
    }
});