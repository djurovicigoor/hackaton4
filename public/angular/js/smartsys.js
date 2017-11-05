//Smart System
app.controller('EventCtrl', function ($scope, $rootScope, $http, ROUTES, $pusher, $cookies) {
    $scope.isLogged = false;

    $scope.user = $cookies.getObject('user');
    console.log($scope.user);

    if($cookies.get('token')) {
        $scope.isLogged = true;
    }

    //pusher
    var client = new Pusher("f60e35928b1f4027ab46", {
        cluster: "eu"
    });
    var pusher = $pusher(client);

    var my_channel = pusher.subscribe('question.1');

    my_channel.bind('App\\Events\\SendQuestionEvent',
        function(data) {
            console.log('Fire modal');
        }
    );

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