//Smart System
app.controller('EventCtrl', function ($scope, $rootScope, $http, ROUTES, $pusher, $cookies, $location, $uibModal) {
    $scope.isLogged = false;

    $scope.user = $cookies.getObject('user');

    $scope.logout = function () {
        $cookies.remove('token');
        $cookies.remove('users');
        $cookies.remove('role');
        $location.path('/login');
        location.reload();
    };

    if ($cookies.get('token')) {
        $scope.isLogged = true;
    }

    //pusher
    var client = new Pusher("f60e35928b1f4027ab46", {
        cluster: "eu"
    });
    var pusher = $pusher(client);
    var $ctrl = this;

    $ctrl.animationsEnabled = true;
    $ctrl.open = function (size, parentSelector) {
        var parentElem = parentSelector ?
            angular.element($document[0].querySelector('.modal-demo ' + parentSelector)) : undefined;
        var modalInstance = $uibModal.open({
            animation: $ctrl.animationsEnabled,
            ariaLabelledBy: 'modal-title',
            ariaDescribedBy: 'modal-body',
            templateUrl: 'angular/templates/level-modal/level-modal.html',
            controller: 'LevelModalCtrl',
            controllerAs: '$ctrl',
            size: size,
            appendTo: parentElem,
            resolve: {
                items: function () {
                    return $ctrl.items;
                }
            }
        });
    }
    var my_channel = pusher.subscribe('question.' + $scope.user.id);

    my_channel.bind('App\\Events\\SendQuestionEvent',
        function (data) {
            console.log(data);
            $ctrl.open();
            $rootScope.question = data.question;
        });

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