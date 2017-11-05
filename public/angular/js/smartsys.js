//Smart System
app.controller('EventCtrl', function ($rootScope, $http, ROUTES, $pusher) {
    //pusher
    var client = new Pusher("f60e35928b1f4027ab46", {
        cluster: "eu"
    });
    var pusher = $pusher(client);

    var my_channel = pusher.subscribe('question.1');

    my_channel.bind('App\\Events\\SendQuestionEvent',
        function(data) {
            console.log('yo');
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