app.controller('HireProfileCtrl', function ($scope, $uibModal, ROUTES, $http, $routeParams) {
    var $ctrl = this;
    $scope.company = [];
    $ctrl.animationsEnabled = true;

    $ctrl.open = function (size, parentSelector) {
        var parentElem = parentSelector ?
            angular.element($document[0].querySelector('.modal-demo ' + parentSelector)) : undefined;
        var modalInstance = $uibModal.open({
            animation: $ctrl.animationsEnabled,
            ariaLabelledBy: 'modal-title',
            ariaDescribedBy: 'modal-body',
            templateUrl: 'angular/templates/modal/modal.html',
            controller: 'ModalDemoCtrl',
            controllerAs: '$ctrl',
            size: size,
            appendTo: parentElem,
            resolve: {
                items: function () {
                    return $ctrl.items;
                }
            }
        });

        modalInstance.result.then(function (selectedItem) {
            $ctrl.selected = selectedItem;
        }, function () {
            // $log.info('Modal dismissed at: ' + new Date());
        });
    };
    $ctrl.ok = function () {
        $ctrl.close({$value: $ctrl.selected.item});
    };

    $ctrl.cancel = function () {
        $ctrl.dismiss({$value: 'cancel'});
    };


    $scope.getCompanyData = function () {
        $http.get(ROUTES.api + 'user/' + $routeParams.id)
            .then(function (response) {
                console.log(response);
                $scope.company = response.data.data;
            }, function (error) {
            });
    };
    $scope.getCompanyData();
});