//Smart System
app.controller('EventCtrl', function ($rootScope, $http, ROUTES, $pusher) {
    //pusher
    var client = new Pusher("API");
    var pusher = $pusher(client);

    var my_channel = pusher.subscribe('my-channel');

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